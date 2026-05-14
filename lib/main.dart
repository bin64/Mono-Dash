import 'dart:async';
import 'dart:io' show Platform;

import 'package:dynamic_app_icon_flutter_plus/dynamic_app_icon_flutter_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:toastification/toastification.dart';

import 'core/localization/generated/app_localizations.dart';
import 'core/localization/locale_controller.dart';
import 'core/router/app_router.dart';
import 'core/storage/storage_service.dart';
import 'core/theme/app_theme.dart';
import 'core/widgets/ios_server_widget_bridge.dart';
import 'presentation/features/purchases/providers/purchase_provider.dart';
import 'presentation/features/settings/providers/app_settings_provider.dart';
import 'presentation/features/settings/widgets/app_lock_gate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  debugPrint('Mono Dash booted');

  final storageService = StorageService();
  await storageService.init();

  runApp(
    ProviderScope(
      overrides: [storageServiceProvider.overrideWithValue(storageService)],
      child: const ToastificationWrapper(child: MyApp()),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localeOption = ref.watch(localeControllerProvider);
    final platformLocale = WidgetsBinding.instance.platformDispatcher.locale;
    final widgetLocaleCode = localeOption.widgetLocaleCode(platformLocale);
    final settingsAsync = ref.watch(appSettingsControllerProvider);
    final appearanceMode =
        settingsAsync.valueOrNull?.appearanceMode ?? AppAppearanceMode.system;
    final appIconVariant =
        settingsAsync.valueOrNull?.appIconVariant ?? AppIconVariant.defaultIcon;
    final effectiveBrightness = switch (appearanceMode) {
      AppAppearanceMode.system =>
        WidgetsBinding.instance.platformDispatcher.platformBrightness,
      AppAppearanceMode.light => Brightness.light,
      AppAppearanceMode.dark => Brightness.dark,
    };
    final widgetAppIconName = appIconVariant.effectiveAlternateIconName(
      effectiveBrightness,
    );

    return _AppIconAutoSync(
      enabled: settingsAsync.hasValue,
      appearanceMode: appearanceMode,
      variant: appIconVariant,
      child: _IosServerWidgetSettingsSync(
        appLocaleCode: widgetLocaleCode,
        appIconName: widgetAppIconName,
        child: _ICloudServerSyncMaintenance(
          child: _PurchaseEntitlementMaintenance(
            child: CupertinoApp.router(
              debugShowCheckedModeBanner: false,
              onGenerateTitle: (context) =>
                  AppLocalizations.of(context).app_title,
              theme: switch (appearanceMode) {
                AppAppearanceMode.system => AppTheme.systemTheme,
                AppAppearanceMode.light => AppTheme.lightTheme,
                AppAppearanceMode.dark => AppTheme.darkTheme,
              },
              routerConfig: appRouter,
              builder: (context, child) =>
                  AppLockGate(child: child ?? const SizedBox.shrink()),
              locale: localeOption.toLocale(),
              supportedLocales: AppLocalizations.supportedLocales,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ICloudServerSyncMaintenance extends ConsumerStatefulWidget {
  const _ICloudServerSyncMaintenance({required this.child});

  final Widget child;

  @override
  ConsumerState<_ICloudServerSyncMaintenance> createState() =>
      _ICloudServerSyncMaintenanceState();
}

class _ICloudServerSyncMaintenanceState
    extends ConsumerState<_ICloudServerSyncMaintenance>
    with WidgetsBindingObserver {
  static const _syncDelay = Duration(seconds: 5);
  static const _syncThrottleInterval = Duration(minutes: 1);

  Timer? _syncTimer;
  DateTime? _lastSyncStartedAt;
  bool _isForeground = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _isForeground =
        WidgetsBinding.instance.lifecycleState != AppLifecycleState.paused &&
        WidgetsBinding.instance.lifecycleState != AppLifecycleState.inactive &&
        WidgetsBinding.instance.lifecycleState != AppLifecycleState.detached;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scheduleSync();
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      _isForeground = true;
      _scheduleSync();
    } else if (state == AppLifecycleState.inactive ||
        state == AppLifecycleState.paused ||
        state == AppLifecycleState.detached) {
      _isForeground = false;
      _syncTimer?.cancel();
    }
  }

  @override
  void dispose() {
    _syncTimer?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;

  void _scheduleSync() {
    if (!mounted || !_isForeground) return;
    final storageService = ref.read(storageServiceProvider);
    if (!storageService.isServerSyncEnabled &&
        !storageService.isWebDavSyncEnabled) {
      return;
    }

    final now = DateTime.now();
    final lastStartedAt = _lastSyncStartedAt;
    if (lastStartedAt != null &&
        now.difference(lastStartedAt) < _syncThrottleInterval) {
      return;
    }

    _syncTimer?.cancel();
    _syncTimer = Timer(_syncDelay, () {
      if (!mounted || !_isForeground) return;
      final latestStorageService = ref.read(storageServiceProvider);
      if (!latestStorageService.isServerSyncEnabled &&
          !latestStorageService.isWebDavSyncEnabled) {
        return;
      }

      _lastSyncStartedAt = DateTime.now();
      unawaited(latestStorageService.syncServersFromCloud());
      unawaited(latestStorageService.syncServersFromWebDav());
    });
  }
}

class _IosServerWidgetSettingsSync extends StatefulWidget {
  const _IosServerWidgetSettingsSync({
    required this.appLocaleCode,
    required this.appIconName,
    required this.child,
  });

  final String appLocaleCode;
  final String? appIconName;
  final Widget child;

  @override
  State<_IosServerWidgetSettingsSync> createState() =>
      _IosServerWidgetSettingsSyncState();
}

class _IosServerWidgetSettingsSyncState
    extends State<_IosServerWidgetSettingsSync>
    with WidgetsBindingObserver {
  static const _syncDelay = Duration(seconds: 2);

  Timer? _syncTimer;
  String? _lastSyncedLocaleCode;
  String? _lastSyncedAppIconName;
  bool _isForeground = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _isForeground =
        WidgetsBinding.instance.lifecycleState != AppLifecycleState.paused &&
        WidgetsBinding.instance.lifecycleState != AppLifecycleState.inactive &&
        WidgetsBinding.instance.lifecycleState != AppLifecycleState.detached;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scheduleSync();
    });
  }

  @override
  void didUpdateWidget(covariant _IosServerWidgetSettingsSync oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.appLocaleCode != widget.appLocaleCode ||
        oldWidget.appIconName != widget.appIconName) {
      _scheduleSync();
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      _isForeground = true;
      _scheduleSync();
    } else if (state == AppLifecycleState.inactive ||
        state == AppLifecycleState.paused ||
        state == AppLifecycleState.detached) {
      _isForeground = false;
      _syncTimer?.cancel();
    }
  }

  @override
  void dispose() {
    _syncTimer?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;

  void _scheduleSync() {
    if (!mounted || !_isForeground || !Platform.isIOS) return;
    _syncTimer?.cancel();
    _syncTimer = Timer(_syncDelay, () {
      if (!mounted || !_isForeground) return;
      unawaited(_syncSettings());
    });
  }

  Future<void> _syncSettings() async {
    final localeCode = widget.appLocaleCode;
    final appIconName = widget.appIconName;
    if (_lastSyncedLocaleCode != localeCode) {
      await IosServerWidgetBridge.syncLocale(localeCode);
      _lastSyncedLocaleCode = localeCode;
    }
    if (_lastSyncedAppIconName != appIconName) {
      await IosServerWidgetBridge.syncAppIcon(appIconName);
      _lastSyncedAppIconName = appIconName;
    }
  }
}

class _PurchaseEntitlementMaintenance extends ConsumerStatefulWidget {
  const _PurchaseEntitlementMaintenance({required this.child});

  final Widget child;

  @override
  ConsumerState<_PurchaseEntitlementMaintenance> createState() =>
      _PurchaseEntitlementMaintenanceState();
}

class _PurchaseEntitlementMaintenanceState
    extends ConsumerState<_PurchaseEntitlementMaintenance> {
  bool _scheduled = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || _scheduled) return;
      _scheduled = true;
      unawaited(
        ref
            .read(purchaseControllerProvider.notifier)
            .maybeRefreshEntitlementAfterFirstFrame(),
      );
    });
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class _AppIconAutoSync extends StatefulWidget {
  const _AppIconAutoSync({
    required this.enabled,
    required this.appearanceMode,
    required this.variant,
    required this.child,
  });

  final bool enabled;
  final AppAppearanceMode appearanceMode;
  final AppIconVariant variant;
  final Widget child;

  @override
  State<_AppIconAutoSync> createState() => _AppIconAutoSyncState();
}

class _AppIconAutoSyncState extends State<_AppIconAutoSync>
    with WidgetsBindingObserver {
  static const _syncDelay = Duration(seconds: 2);

  Timer? _syncTimer;
  bool _hasAppliedIconName = false;
  String? _lastAppliedIconName;
  bool _isForeground = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _isForeground =
        WidgetsBinding.instance.lifecycleState != AppLifecycleState.paused &&
        WidgetsBinding.instance.lifecycleState != AppLifecycleState.inactive &&
        WidgetsBinding.instance.lifecycleState != AppLifecycleState.detached;
    WidgetsBinding.instance.addPostFrameCallback((_) => _scheduleSyncAppIcon());
  }

  @override
  void didUpdateWidget(covariant _AppIconAutoSync oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.enabled != widget.enabled ||
        oldWidget.appearanceMode != widget.appearanceMode ||
        oldWidget.variant != widget.variant) {
      _scheduleSyncAppIcon();
    }
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    _scheduleSyncAppIcon();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      _isForeground = true;
      _scheduleSyncAppIcon();
    } else if (state == AppLifecycleState.inactive ||
        state == AppLifecycleState.paused ||
        state == AppLifecycleState.detached) {
      _isForeground = false;
      _syncTimer?.cancel();
    }
  }

  @override
  void dispose() {
    _syncTimer?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;

  void _scheduleSyncAppIcon() {
    if (!mounted || !_isForeground || !Platform.isIOS) return;
    _syncTimer?.cancel();
    _syncTimer = Timer(_syncDelay, () {
      if (!mounted || !_isForeground) return;
      unawaited(_syncAppIcon());
    });
  }

  Future<void> _syncAppIcon() async {
    if (!widget.enabled || !Platform.isIOS) return;

    final brightness = switch (widget.appearanceMode) {
      AppAppearanceMode.system =>
        WidgetsBinding.instance.platformDispatcher.platformBrightness,
      AppAppearanceMode.light => Brightness.light,
      AppAppearanceMode.dark => Brightness.dark,
    };
    final iconName = widget.variant.effectiveAlternateIconName(brightness);
    if (_hasAppliedIconName && _lastAppliedIconName == iconName) return;

    try {
      final isSupported =
          await DynamicAppIconFlutterPlus.supportsAlternateIcons;
      if (!isSupported) return;

      final currentIconName =
          await DynamicAppIconFlutterPlus.getAlternateIconName();
      if (currentIconName == iconName) {
        _hasAppliedIconName = true;
        _lastAppliedIconName = iconName;
        return;
      }

      await DynamicAppIconFlutterPlus.setAlternateIconName(
        iconName,
        showAlert: false,
      );
      _hasAppliedIconName = true;
      _lastAppliedIconName = iconName;
    } catch (error) {
      debugPrint('Failed to sync app icon: $error');
    }
  }
}
