import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart' as rc;

import '../../../../core/localization/locale_controller.dart';
import '../../../../core/storage/storage_service.dart';
import '../../../../core/utils/app_logger.dart';

final purchaseControllerProvider =
    AsyncNotifierProvider<PurchaseController, PurchaseState>(
      PurchaseController.new,
    );

class RevenueCatConfig {
  const RevenueCatConfig._();

  static const iosApiKey = 'appl_uQclCTdAgutFrwPUlmIzMxhagIe';
  static const androidApiKey = 'goog_YjNRxmMCFThKyAaXIPAiralEXXJ';
  static const webApiKey = '';
  static const entitlementId = 'Mono Dash Unlimited';
  static const offeringId = 'default';
  static const freeServerLimit = 1;
  static const bypassServerLimitCheck = false;

  static String? get apiKey {
    if (kIsWeb) return webApiKey.isEmpty ? null : webApiKey;
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return _usableApiKey(iosApiKey);
      case TargetPlatform.android:
        return _usableApiKey(androidApiKey);
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return null;
    }
  }

  static String? _usableApiKey(String key) {
    if (key.isEmpty || key.startsWith('REPLACE_WITH_')) return null;
    return key;
  }
}

enum PurchaseVerificationStatus { localOnly, verified, unverified, unavailable }

class PurchaseState {
  const PurchaseState({
    required this.isConfigured,
    required this.isUnlocked,
    required this.freeServerLimit,
    required this.entitlementId,
    required this.verificationStatus,
    this.priceText,
    this.hasPackage = false,
    this.message,
    this.lastVerifiedAt,
  });

  final bool isConfigured;
  final bool isUnlocked;
  final int freeServerLimit;
  final String entitlementId;
  final PurchaseVerificationStatus verificationStatus;
  final String? priceText;
  final bool hasPackage;
  final String? message;
  final DateTime? lastVerifiedAt;

  bool canAddServer(int serverCount) {
    if (RevenueCatConfig.bypassServerLimitCheck) return true;
    return isUnlocked || serverCount < freeServerLimit;
  }

  PurchaseState copyWith({
    bool? isConfigured,
    bool? isUnlocked,
    int? freeServerLimit,
    String? entitlementId,
    PurchaseVerificationStatus? verificationStatus,
    String? priceText,
    bool? hasPackage,
    String? message,
    DateTime? lastVerifiedAt,
    bool clearPriceText = false,
    bool clearMessage = false,
  }) {
    return PurchaseState(
      isConfigured: isConfigured ?? this.isConfigured,
      isUnlocked: isUnlocked ?? this.isUnlocked,
      freeServerLimit: freeServerLimit ?? this.freeServerLimit,
      entitlementId: entitlementId ?? this.entitlementId,
      verificationStatus: verificationStatus ?? this.verificationStatus,
      priceText: clearPriceText ? null : priceText ?? this.priceText,
      hasPackage: hasPackage ?? this.hasPackage,
      message: clearMessage ? null : message ?? this.message,
      lastVerifiedAt: lastVerifiedAt ?? this.lastVerifiedAt,
    );
  }
}

class ServerLimitReachedException implements Exception {
  const ServerLimitReachedException({
    required this.serverCount,
    required this.freeServerLimit,
    required this.message,
  });

  final int serverCount;
  final int freeServerLimit;
  final String message;

  @override
  String toString() => message;
}

class PurchaseUnavailableException implements Exception {
  const PurchaseUnavailableException(this.message);

  final String message;

  @override
  String toString() => message;
}

class PurchaseController extends AsyncNotifier<PurchaseState> {
  static const _tag = 'purchase';
  static const _localUnlockKey = 'purchase.unlimited_servers.unlocked';
  static const _legacyLocalUnlockKey = _localUnlockKey;
  static const _lastVerifiedAtKey =
      'purchase.unlimited_servers.last_verified_at';
  static const _offeringsRefreshInterval = Duration(minutes: 15);
  static const _revenueCatReadTimeout = Duration(seconds: 12);
  static bool _configured = false;
  static Future<void>? _configureFuture;

  rc.Package? _cachedPackage;
  DateTime? _lastOfferingsAttemptAt;
  Future<PurchaseState>? _entitlementRefreshFuture;
  Future<PurchaseState>? _offeringsFuture;

  @override
  Future<PurchaseState> build() => _loadLocalState();

  static Future<bool> isLocallyUnlocked(WidgetRef ref) async {
    return (await ref.read(purchaseControllerProvider.future)).isUnlocked;
  }

  Future<PurchaseState> _loadLocalState() async {
    final storage = ref.read(storageServiceProvider);
    final localUnlocked = await _readLocallyUnlocked(storage);
    final lastVerifiedAt = await _readLastVerifiedAt(storage);
    return PurchaseState(
      isConfigured: _configured,
      isUnlocked: localUnlocked,
      freeServerLimit: RevenueCatConfig.freeServerLimit,
      entitlementId: RevenueCatConfig.entitlementId,
      verificationStatus: localUnlocked
          ? PurchaseVerificationStatus.localOnly
          : PurchaseVerificationStatus.unverified,
      lastVerifiedAt: lastVerifiedAt,
    );
  }

  Future<PurchaseState> maybeRefreshEntitlementAfterFirstFrame() async {
    final current = state.valueOrNull ?? await _loadLocalState();
    if (state.valueOrNull == null) {
      state = AsyncValue.data(current);
    }
    return current;
  }

  Future<PurchaseState> refresh() => refreshEntitlement();

  Future<PurchaseState> refreshEntitlement({bool force = true}) {
    final current = state.valueOrNull;
    if (current != null && (current.isUnlocked || !force)) {
      return Future.value(current);
    }

    final pending = _entitlementRefreshFuture;
    if (pending != null) return pending;

    final future = _refreshEntitlementInternal(force: force);
    _entitlementRefreshFuture = future;
    return future.whenComplete(() {
      if (identical(_entitlementRefreshFuture, future)) {
        _entitlementRefreshFuture = null;
      }
    });
  }

  Future<PurchaseState> _refreshEntitlementInternal({
    required bool force,
  }) async {
    final current = state.valueOrNull ?? await _loadLocalState();
    if (current.isUnlocked || !force) return current;

    final l10n = ref.read(appLocalizationsProvider);
    final apiKey = RevenueCatConfig.apiKey;
    if (apiKey == null) {
      final next = current.copyWith(
        isConfigured: false,
        verificationStatus: current.isUnlocked
            ? PurchaseVerificationStatus.localOnly
            : PurchaseVerificationStatus.unavailable,
        message: current.isUnlocked ? null : l10n.purchases_apiKeyMissing,
        clearMessage: current.isUnlocked,
      );
      state = AsyncValue.data(next);
      return next;
    }

    try {
      await _ensureRevenueCatConfigured(apiKey);
      final customerInfo = await _withRevenueCatReadTimeout(
        rc.Purchases.getCustomerInfo(),
      );
      final next = await _stateFromCustomerInfo(customerInfo, current);
      state = AsyncValue.data(next);
      return next;
    } catch (error) {
      AppLogger.w(_tag, 'Purchase entitlement refresh failed: $error');
      final next = current.copyWith(
        isConfigured: _configured,
        verificationStatus: current.isUnlocked
            ? PurchaseVerificationStatus.localOnly
            : PurchaseVerificationStatus.unavailable,
        message: current.isUnlocked
            ? null
            : l10n.purchases_serviceUnavailableNetwork,
        clearMessage: current.isUnlocked,
      );
      state = AsyncValue.data(next);
      return next;
    }
  }

  Future<PurchaseState> loadOfferings({bool force = false}) {
    final current = state.valueOrNull;
    final now = DateTime.now().toUtc();
    final hasFreshAttempt =
        _lastOfferingsAttemptAt != null &&
        now.difference(_lastOfferingsAttemptAt!) < _offeringsRefreshInterval;
    if (!force && current != null && hasFreshAttempt) {
      return Future.value(current);
    }

    final pending = _offeringsFuture;
    if (pending != null) return pending;

    final future = _loadOfferingsInternal();
    _offeringsFuture = future;
    return future.whenComplete(() {
      if (identical(_offeringsFuture, future)) {
        _offeringsFuture = null;
      }
    });
  }

  Future<PurchaseState> _loadOfferingsInternal() async {
    _lastOfferingsAttemptAt = DateTime.now().toUtc();
    final current = state.valueOrNull ?? await _loadLocalState();
    final l10n = ref.read(appLocalizationsProvider);
    final apiKey = RevenueCatConfig.apiKey;
    if (apiKey == null) {
      final next = current.copyWith(
        isConfigured: false,
        hasPackage: false,
        clearPriceText: true,
        message: l10n.purchases_apiKeyMissing,
      );
      state = AsyncValue.data(next);
      return next;
    }

    try {
      await _ensureRevenueCatConfigured(apiKey);
      final package = await _loadPurchasePackage();
      _cachedPackage = package;
      final next = current.copyWith(
        isConfigured: true,
        priceText: package?.storeProduct.priceString,
        hasPackage: package != null,
        clearPriceText: package == null,
        message: package == null ? l10n.purchases_noPackageAvailable : null,
        clearMessage: package != null,
      );
      state = AsyncValue.data(next);
      return next;
    } catch (error) {
      AppLogger.w(_tag, 'Purchase package loading failed: $error');
      final next = current.copyWith(
        isConfigured: _configured,
        hasPackage: false,
        clearPriceText: true,
        message: l10n.purchases_packageLoadFailed,
      );
      state = AsyncValue.data(next);
      return next;
    }
  }

  Future<PurchaseState> restorePurchases() async {
    await _ensureRevenueCatConfiguredForUserAction();
    final customerInfo = await _withRevenueCatReadTimeout(
      rc.Purchases.restorePurchases(),
    );
    final current = state.valueOrNull ?? await _loadLocalState();
    final next = await _stateFromCustomerInfo(customerInfo, current);
    state = AsyncValue.data(next);
    return next;
  }

  Future<PurchaseState> purchaseUnlimitedServers() async {
    await _ensureRevenueCatConfiguredForUserAction();
    final package = _cachedPackage ?? await _loadPurchasePackage();
    _cachedPackage = package;
    if (package == null) {
      throw PurchaseUnavailableException(
        ref.read(appLocalizationsProvider).purchases_noPackageAvailable,
      );
    }

    try {
      final result = await rc.Purchases.purchase(
        rc.PurchaseParams.package(package),
      );
      final current = state.valueOrNull ?? await _loadLocalState();
      final next = await _stateFromCustomerInfo(result.customerInfo, current);
      state = AsyncValue.data(next);
      return next;
    } on PlatformException catch (error) {
      final code = rc.PurchasesErrorHelper.getErrorCode(error);
      if (code == rc.PurchasesErrorCode.purchaseCancelledError) {
        return state.requireValue;
      }
      rethrow;
    }
  }

  Future<void> _ensureRevenueCatConfiguredForUserAction() async {
    final apiKey = RevenueCatConfig.apiKey;
    if (apiKey == null) {
      throw PurchaseUnavailableException(
        ref.read(appLocalizationsProvider).purchases_apiKeyMissing,
      );
    }
    await _ensureRevenueCatConfigured(apiKey);
  }

  Future<void> _ensureRevenueCatConfigured(String apiKey) {
    if (_configured) return Future.value();

    final pending = _configureFuture;
    if (pending != null) return pending;

    final future =
        _withRevenueCatReadTimeout(
              rc.Purchases.configure(rc.PurchasesConfiguration(apiKey)),
            )
            .then((_) {
              _configured = true;
            })
            .catchError((Object error) {
              _configureFuture = null;
              throw error;
            });
    _configureFuture = future;
    return future;
  }

  Future<bool> _readLocallyUnlocked(StorageService storage) async {
    final secureValue = await storage.getSecureString(_localUnlockKey);
    if (secureValue != null) return secureValue == 'true';

    return _migrateLegacyLocalUnlock(storage);
  }

  Future<bool> _migrateLegacyLocalUnlock(StorageService storage) async {
    final legacyValue = storage.getString(_legacyLocalUnlockKey);
    if (legacyValue == null) return false;

    final unlocked = legacyValue == 'true';
    await storage.setSecureString(_localUnlockKey, unlocked ? 'true' : 'false');
    if (unlocked) {
      await storage.setSecureString(
        _lastVerifiedAtKey,
        DateTime.now().toUtc().toIso8601String(),
      );
    }
    return unlocked;
  }

  Future<DateTime?> _readLastVerifiedAt(StorageService storage) async {
    final value = await storage.getSecureString(_lastVerifiedAtKey);
    if (value == null || value.isEmpty) return null;
    return DateTime.tryParse(value)?.toUtc();
  }

  Future<PurchaseState> _stateFromCustomerInfo(
    rc.CustomerInfo customerInfo,
    PurchaseState current,
  ) async {
    final hasUnlimitedServers = _hasUnlimitedServers(customerInfo);
    final unlocked = current.isUnlocked || hasUnlimitedServers;
    final verifiedAt = DateTime.now().toUtc();
    await _setLocallyUnlocked(unlocked, verifiedAt: verifiedAt);

    return current.copyWith(
      isConfigured: true,
      isUnlocked: unlocked,
      verificationStatus: current.isUnlocked && !hasUnlimitedServers
          ? PurchaseVerificationStatus.localOnly
          : PurchaseVerificationStatus.verified,
      lastVerifiedAt: verifiedAt,
      clearMessage: true,
    );
  }

  bool _hasUnlimitedServers(rc.CustomerInfo customerInfo) {
    return customerInfo
            .entitlements
            .all[RevenueCatConfig.entitlementId]
            ?.isActive ??
        false;
  }

  Future<rc.Package?> _loadPurchasePackage() async {
    final offerings = await _withRevenueCatReadTimeout(
      rc.Purchases.getOfferings(),
    );
    final offering = RevenueCatConfig.offeringId.isEmpty
        ? offerings.current
        : offerings.all[RevenueCatConfig.offeringId];
    final packages = offering?.availablePackages ?? const <rc.Package>[];
    return packages.isEmpty ? null : packages.first;
  }

  static Future<T> _withRevenueCatReadTimeout<T>(Future<T> request) {
    return request.timeout(_revenueCatReadTimeout);
  }

  Future<void> _setLocallyUnlocked(
    bool value, {
    required DateTime verifiedAt,
  }) async {
    final storage = ref.read(storageServiceProvider);
    await storage.setSecureString(_localUnlockKey, value ? 'true' : 'false');
    await storage.setSecureString(
      _lastVerifiedAtKey,
      verifiedAt.toUtc().toIso8601String(),
    );
  }
}
