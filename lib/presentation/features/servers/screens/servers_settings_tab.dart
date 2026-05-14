import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/localization/generated/app_localizations.dart';
import '../../../../core/localization/l10n_x.dart';
import '../../../../core/localization/locale_controller.dart';
import '../../../../core/network/app_user_agent.dart';
import '../../../../core/storage/storage_service.dart';
import '../../../../core/storage/webdav_sync_client.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/format_utils.dart';
import '../../../common/app_toast.dart';
import '../../../common/components/action_sheet_launcher.dart';
import '../../../common/components/action_sheet_scaffold.dart';
import '../../../common/components/app_action_picker_sheet.dart';
import '../../../common/components/app_form_components.dart';
import '../../../common/components/app_picker.dart';
import '../../../common/components/sub_menu_page.dart';
import '../../panel_settings/widgets/edit_setting_value_sheet.dart';
import '../../purchases/providers/purchase_provider.dart';
import '../../settings/providers/app_lock_provider.dart';
import '../../settings/providers/app_settings_provider.dart';
import '../../settings/screens/app_lock_settings_page.dart';
import '../../settings/screens/app_icon_settings_page.dart';
import '../../settings/screens/card_style_settings_page.dart';
import 'open_source_licenses_page.dart';
import 'premium_purchase_page.dart';

const _issueTrackerUrl = 'https://github.com/bin64/Mono-Dash/issues';
const _privacyPolicyUrl =
    'https://github.com/bin64/Mono-Dash/blob/main/PRIVACY.md';
const _repositoryUrl = 'https://github.com/bin64/Mono-Dash';
const _supportGroupUrl = 'https://t.me/mono_dash';
const _termsOfUseUrl = 'https://github.com/bin64/Mono-Dash/blob/main/TERMS.md';

class ServersSettingsTab extends ConsumerWidget {
  const ServersSettingsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsAsync = ref.watch(appSettingsControllerProvider);
    final settings = settingsAsync.valueOrNull;
    final l10n = context.l10n;

    final selectedIconVariant =
        settings?.appIconVariant ?? AppIconVariant.defaultIcon;
    final selectedCardStyle =
        settings?.serverCardStyle ?? ServerCardStyle.simple;
    final selectedAppearanceMode =
        settings?.appearanceMode ?? AppAppearanceMode.system;
    final appLockAsync = ref.watch(appLockControllerProvider);
    final appLockEnabled = appLockAsync.valueOrNull?.enabled ?? false;
    final syncStatusAsync = ref.watch(serverSyncStatusProvider);
    final syncStatus = syncStatusAsync.valueOrNull;
    final syncEnabled = syncStatus?.enabled ?? false;
    final webDavSyncStatusAsync = ref.watch(webDavSyncStatusProvider);
    final webDavSyncStatus = webDavSyncStatusAsync.valueOrNull;
    final webDavSyncEnabled = webDavSyncStatus?.enabled ?? false;
    final requestTimeoutSeconds =
        settings?.requestTimeoutSeconds ??
        AppSettingsController.defaultRequestTimeoutSeconds;
    final customHeaders = settings?.customHeaders ?? const {};
    final localeOption = ref.watch(localeControllerProvider);

    final purchaseAsync = ref.watch(purchaseControllerProvider);
    final isUnlocked = purchaseAsync.valueOrNull?.isUnlocked ?? false;

    return CustomScrollView(
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      slivers: [
        CupertinoSliverNavigationBar(
          largeTitle: Text(l10n.settings_title),
          backgroundColor: AppColors.background(context),
          border: null,
          transitionBetweenRoutes: false,
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 132),
          sliver: SliverList.list(
            children: [
              // Premium Section
              SubMenuCard(
                title: l10n.settings_premium_title,
                children: [
                  _SettingsRow(
                    icon: isUnlocked
                        ? CupertinoIcons.sparkles
                        : CupertinoIcons.lock_shield,
                    iconColor: isUnlocked
                        ? CupertinoColors.systemPurple
                        : CupertinoColors.systemGrey,
                    title: l10n.settings_premium_unlimitedTitle,
                    subtitle: isUnlocked
                        ? l10n.settings_premium_unlimitedUnlocked
                        : l10n.settings_premium_unlimitedLocked,
                    onTap: () => Navigator.of(context).push(
                      CupertinoPageRoute<void>(
                        builder: (_) => const PremiumPurchasePage(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Security Section
              SubMenuCard(
                title: l10n.settings_security_title,
                children: [
                  _SettingsRow(
                    icon: TablerIcons.lock,
                    iconColor: CupertinoColors.activeBlue,
                    title: l10n.settings_appLock_title,
                    subtitle: appLockEnabled
                        ? l10n.settings_appLock_subtitleOn
                        : l10n.settings_appLock_subtitleOff,
                    onTap: () => Navigator.of(context).push(
                      CupertinoPageRoute<void>(
                        builder: (_) => const AppLockSettingsPage(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Sync Section
              SubMenuCard(
                title: l10n.settings_sync_title,
                children: [
                  _SettingsSwitchRow(
                    icon: CupertinoIcons.cloud_fill,
                    iconColor: CupertinoColors.systemTeal,
                    title: l10n.settings_sync_iCloudTitle,
                    subtitle: _syncStatusSubtitle(
                      context,
                      syncStatus,
                      syncStatusAsync.isLoading,
                    ),
                    value: syncEnabled,
                    onChanged: syncStatusAsync.isLoading
                        ? null
                        : (value) => _setServerSyncEnabled(context, ref, value),
                  ),
                  if (syncEnabled)
                    _SettingsRow(
                      icon: CupertinoIcons.arrow_2_circlepath,
                      iconColor: CupertinoColors.activeBlue,
                      title: l10n.settings_sync_syncNowTitle,
                      subtitle: _syncAttemptSubtitle(context, syncStatus),
                      onTap: syncStatusAsync.isLoading
                          ? null
                          : () => _syncServersNow(context, ref),
                    ),
                  _SettingsRow(
                    icon: TablerIcons.server_bolt,
                    iconColor: CupertinoColors.systemIndigo,
                    title: l10n.settings_sync_webDavConfigTitle,
                    subtitle: _webDavConfigSubtitle(context, webDavSyncStatus),
                    onTap: webDavSyncStatusAsync.isLoading
                        ? null
                        : () => _showWebDavConfigSheet(context, ref),
                  ),
                  _SettingsSwitchRow(
                    icon: CupertinoIcons.cloud_upload_fill,
                    iconColor: CupertinoColors.systemGreen,
                    title: l10n.settings_sync_webDavTitle,
                    subtitle: _webDavSyncStatusSubtitle(
                      context,
                      webDavSyncStatus,
                      webDavSyncStatusAsync.isLoading,
                    ),
                    value: webDavSyncEnabled,
                    onChanged: webDavSyncStatusAsync.isLoading
                        ? null
                        : (value) => _setWebDavSyncEnabled(context, ref, value),
                  ),
                  if (webDavSyncEnabled)
                    _SettingsRow(
                      icon: CupertinoIcons.arrow_2_circlepath,
                      iconColor: CupertinoColors.activeBlue,
                      title: l10n.settings_sync_syncNowTitle,
                      subtitle: _webDavSyncAttemptSubtitle(
                        context,
                        webDavSyncStatus,
                      ),
                      onTap: webDavSyncStatusAsync.isLoading
                          ? null
                          : () => _syncServersFromWebDavNow(context, ref),
                    ),
                ],
              ),
              const SizedBox(height: 12),

              // Appearance Section
              SubMenuCard(
                title: l10n.settings_appearance_title,
                children: [
                  _SettingsRow(
                    icon: TablerIcons.sun_moon,
                    iconColor: CupertinoColors.systemIndigo,
                    title: l10n.settings_appearance_modeTitle,
                    subtitle: selectedAppearanceMode.labelOf(l10n),
                    onTap: settingsAsync.isLoading
                        ? null
                        : () => _editAppearanceMode(
                            context,
                            ref,
                            selectedAppearanceMode,
                          ),
                  ),
                  _SettingsRow(
                    icon: CupertinoIcons.app_badge,
                    iconColor: CupertinoColors.activeOrange,
                    title: l10n.settings_appearance_appIconTitle,
                    subtitle: selectedIconVariant.labelOf(l10n),
                    onTap: () => Navigator.of(context).push(
                      CupertinoPageRoute<void>(
                        builder: (_) => const AppIconSettingsPage(),
                      ),
                    ),
                  ),
                  _SettingsRow(
                    icon: CupertinoIcons.rectangle_grid_1x2,
                    iconColor: CupertinoColors.activeBlue,
                    title: l10n.settings_appearance_cardStyleTitle,
                    subtitle: selectedCardStyle.labelOf(l10n),
                    onTap: () => Navigator.of(context).push(
                      CupertinoPageRoute<void>(
                        builder: (_) => const CardStyleSettingsPage(),
                      ),
                    ),
                  ),
                  _SettingsRow(
                    icon: CupertinoIcons.globe,
                    iconColor: CupertinoColors.systemTeal,
                    title: l10n.settings_language_title,
                    subtitle: localeOption.labelOf(l10n),
                    onTap: () => _editLanguage(context, ref, localeOption),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Network Section
              SubMenuCard(
                title: l10n.settings_network_title,
                children: [
                  _SettingsRow(
                    icon: CupertinoIcons.timer,
                    iconColor: CupertinoColors.systemGrey,
                    title: l10n.settings_network_requestTimeoutTitle,
                    subtitle: l10n.settings_network_requestTimeoutSubtitle(
                      requestTimeoutSeconds,
                    ),
                    onTap: settingsAsync.isLoading
                        ? null
                        : () => _editRequestTimeout(
                            context,
                            ref,
                            requestTimeoutSeconds,
                          ),
                  ),
                  _SettingsRow(
                    icon: CupertinoIcons.text_badge_plus,
                    iconColor: CupertinoColors.systemGrey,
                    title: l10n.settings_network_customHeadersTitle,
                    subtitle: customHeaders.isEmpty
                        ? l10n.settings_network_customHeadersEmpty
                        : l10n.settings_network_customHeadersCount(
                            customHeaders.length,
                          ),
                    onTap: settingsAsync.isLoading
                        ? null
                        : () => _editCustomHeaders(context, ref, customHeaders),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Storage Section
              SubMenuCard(
                title: l10n.settings_general_title,
                children: [
                  _SettingsRow(
                    icon: CupertinoIcons.archivebox_fill,
                    iconColor: CupertinoColors.systemBrown,
                    title: l10n.settings_cache_title,
                    subtitle: l10n.settings_cache_subtitle,
                    onTap: () => _showCacheManagementSheet(context),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Help & About Section
              SubMenuCard(
                title: l10n.settings_help_title,
                children: [
                  _SettingsRow(
                    icon: CupertinoIcons.chat_bubble_2_fill,
                    iconColor: CupertinoColors.activeBlue,
                    title: l10n.settings_help_contactTitle,
                    subtitle: l10n.settings_help_contactSubtitle,
                    onTap: () => _showContactSupportSheet(context),
                  ),
                  _SettingsRow(
                    icon: TablerIcons.brand_github,
                    iconColor: CupertinoColors.systemPurple,
                    title: l10n.settings_help_openSourceTitle,
                    subtitle: l10n.settings_help_openSourceSubtitle,
                    onTap: () => _showOpenSourceProjectSheet(context),
                  ),
                  _SettingsRow(
                    icon: CupertinoIcons.doc_text_fill,
                    iconColor: CupertinoColors.systemOrange,
                    title: l10n.settings_help_licensesTitle,
                    subtitle: l10n.settings_help_licensesSubtitle,
                    onTap: () => _showOpenSourceLicenses(context),
                  ),
                  _SettingsRow(
                    icon: CupertinoIcons.info_circle_fill,
                    iconColor: CupertinoColors.systemGrey,
                    title: l10n.settings_help_aboutTitle,
                    onTap: () => _showInfoDialog(
                      context,
                      title: l10n.settings_help_aboutTitle,
                      content: l10n.settings_help_aboutContent,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const _AppInfoFooter(),
            ],
          ),
        ),
      ],
    );
  }

  String _syncStatusSubtitle(
    BuildContext context,
    ServerSyncStatus? status,
    bool isLoading,
  ) {
    final l10n = context.l10n;
    if (isLoading && status == null) return l10n.common_loading;
    if (status == null || !status.enabled) {
      return l10n.settings_sync_disabledSubtitle;
    }
    if (!status.iCloudAvailable) {
      return l10n.settings_sync_unavailableSubtitle;
    }
    final lastSucceededAt = status.lastSucceededAt;
    if (lastSucceededAt == null) {
      return l10n.settings_sync_enabledWaitingSubtitle;
    }
    return l10n.settings_sync_lastSucceeded(
      formatLocalDateTime(
        lastSucceededAt.toIso8601String(),
        locale: Localizations.localeOf(context).toLanguageTag(),
        includeSeconds: false,
      ),
    );
  }

  String _syncAttemptSubtitle(BuildContext context, ServerSyncStatus? status) {
    final attemptedAt = status?.lastAttemptedAt;
    if (attemptedAt == null) return context.l10n.settings_sync_syncNowSubtitle;
    return context.l10n.settings_sync_lastAttempted(
      formatLocalDateTime(
        attemptedAt.toIso8601String(),
        locale: Localizations.localeOf(context).toLanguageTag(),
        includeSeconds: false,
      ),
    );
  }

  String _webDavConfigSubtitle(BuildContext context, WebDavSyncStatus? status) {
    final url = status?.url.trim() ?? '';
    if (url.isEmpty) return context.l10n.settings_sync_webDavConfigMissing;
    return url;
  }

  String _webDavSyncStatusSubtitle(
    BuildContext context,
    WebDavSyncStatus? status,
    bool isLoading,
  ) {
    final l10n = context.l10n;
    if (isLoading && status == null) return l10n.common_loading;
    if (status == null || !status.enabled) {
      return l10n.settings_sync_webDavDisabledSubtitle;
    }
    if (!status.configured) {
      return l10n.settings_sync_webDavConfigMissing;
    }
    final lastSucceededAt = status.lastSucceededAt;
    if (lastSucceededAt == null) {
      return l10n.settings_sync_enabledWaitingSubtitle;
    }
    return l10n.settings_sync_lastSucceeded(
      formatLocalDateTime(
        lastSucceededAt.toIso8601String(),
        locale: Localizations.localeOf(context).toLanguageTag(),
        includeSeconds: false,
      ),
    );
  }

  String _webDavSyncAttemptSubtitle(
    BuildContext context,
    WebDavSyncStatus? status,
  ) {
    final attemptedAt = status?.lastAttemptedAt;
    if (attemptedAt == null) {
      return context.l10n.settings_sync_webDavSyncNowSubtitle;
    }
    return context.l10n.settings_sync_lastAttempted(
      formatLocalDateTime(
        attemptedAt.toIso8601String(),
        locale: Localizations.localeOf(context).toLanguageTag(),
        includeSeconds: false,
      ),
    );
  }

  Future<void> _setServerSyncEnabled(
    BuildContext context,
    WidgetRef ref,
    bool enabled,
  ) async {
    final l10n = context.l10n;
    try {
      await ref.read(storageServiceProvider).setServerSyncEnabled(enabled);
      ref.invalidate(serverSyncStatusProvider);
      showAppSuccessToast(
        enabled
            ? l10n.settings_sync_enabledToast
            : l10n.settings_sync_disabledToast,
      );
    } catch (error) {
      showAppErrorToast(l10n.settings_sync_failedToast, description: '$error');
    }
  }

  Future<void> _syncServersNow(BuildContext context, WidgetRef ref) async {
    final l10n = context.l10n;
    try {
      await ref.read(storageServiceProvider).syncServersFromCloud(force: true);
      ref.invalidate(serverSyncStatusProvider);
      final status = await ref
          .read(storageServiceProvider)
          .getServerSyncStatus();
      if (!status.iCloudAvailable) {
        showAppErrorToast(l10n.settings_sync_unavailableSubtitle);
        return;
      }
      showAppSuccessToast(l10n.settings_sync_successToast);
    } catch (error) {
      showAppErrorToast(l10n.settings_sync_failedToast, description: '$error');
    }
  }

  Future<void> _showWebDavConfigSheet(
    BuildContext context,
    WidgetRef ref,
  ) async {
    final l10n = context.l10n;
    final storage = ref.read(storageServiceProvider);
    final config = await storage.getWebDavSyncConfig();
    if (!context.mounted) return;

    final result = await showActionSheet<_WebDavConfigResult>(
      context: context,
      useRootNavigator: true,
      builder: (_) => _WebDavConfigSheet(config: config),
    );
    if (result == null) return;

    try {
      await storage.saveWebDavSyncConfig(
        url: result.url,
        username: result.username,
        password: result.password,
        syncApiKeys: result.syncApiKeys,
      );
      ref.invalidate(webDavSyncStatusProvider);
      if (!context.mounted) return;
      showAppSuccessToast(l10n.common_saved);
    } catch (error) {
      if (!context.mounted) return;
      showAppErrorToast(l10n.settings_sync_failedToast, description: '$error');
    }
  }

  Future<void> _setWebDavSyncEnabled(
    BuildContext context,
    WidgetRef ref,
    bool enabled,
  ) async {
    final l10n = context.l10n;
    try {
      await ref.read(storageServiceProvider).setWebDavSyncEnabled(enabled);
      ref.invalidate(webDavSyncStatusProvider);
      showAppSuccessToast(
        enabled
            ? l10n.settings_sync_webDavEnabledToast
            : l10n.settings_sync_webDavDisabledToast,
      );
    } catch (error) {
      showAppErrorToast(l10n.settings_sync_failedToast, description: '$error');
    }
  }

  Future<void> _syncServersFromWebDavNow(
    BuildContext context,
    WidgetRef ref,
  ) async {
    final l10n = context.l10n;
    try {
      await ref.read(storageServiceProvider).syncServersFromWebDav(force: true);
      ref.invalidate(webDavSyncStatusProvider);
      final status = await ref
          .read(storageServiceProvider)
          .getWebDavSyncStatus();
      if (!context.mounted) return;
      if (!status.configured) {
        showAppErrorToast(l10n.settings_sync_webDavConfigMissing);
        return;
      }
      if (status.lastError != null) {
        showAppErrorToast(
          l10n.settings_sync_failedToast,
          description: _webDavSyncErrorDescription(context, status.lastError!),
        );
        return;
      }
      showAppSuccessToast(l10n.settings_sync_successToast);
    } catch (error) {
      showAppErrorToast(l10n.settings_sync_failedToast, description: '$error');
    }
  }

  String _webDavSyncErrorDescription(BuildContext context, String error) {
    final l10n = context.l10n;
    if (error == 'webdav_unconfigured') {
      return l10n.settings_sync_webDavConfigMissing;
    }
    if (error == 'webdav_invalid_url') {
      return l10n.settings_sync_webDavUrlInvalid;
    }
    final httpError = RegExp(
      r'^webdav_(read|write|mkcol)_http_(.+)$',
    ).firstMatch(error);
    if (httpError == null) return error;

    final status = httpError.group(2) ?? 'unknown';
    return switch (httpError.group(1)) {
      'read' => l10n.settings_sync_webDavErrorReadFailed(status),
      'write' => l10n.settings_sync_webDavErrorWriteFailed(status),
      'mkcol' => l10n.settings_sync_webDavErrorDirectoryFailed(status),
      _ => error,
    };
  }

  Future<void> _showOpenSourceLicenses(BuildContext context) async {
    await Navigator.of(context).push(
      CupertinoPageRoute<void>(builder: (_) => const OpenSourceLicensesPage()),
    );
  }

  void _showInfoDialog(
    BuildContext context, {
    required String title,
    required String content,
  }) {
    showCupertinoDialog<void>(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          CupertinoDialogAction(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(context.l10n.common_ok),
          ),
        ],
      ),
    );
  }

  Future<void> _editRequestTimeout(
    BuildContext context,
    WidgetRef ref,
    int currentSeconds,
  ) async {
    final l10n = context.l10n;
    final updatedMessage = l10n.settings_timeout_updated;
    final value = await showEditValueSheet(
      context,
      title: l10n.settings_network_requestTimeoutTitle,
      initialValue: '$currentSeconds',
      placeholder: l10n.settings_timeout_placeholder,
      description: l10n.settings_timeout_description,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(3),
      ],
      validator: (value) {
        final seconds = int.tryParse(value.trim());
        if (seconds == null) {
          return l10n.settings_timeout_errorEmpty;
        }
        if (seconds < 5 || seconds > 300) {
          return l10n.settings_timeout_errorRange;
        }
        return null;
      },
    );
    if (value == null) return;

    await ref
        .read(appSettingsControllerProvider.notifier)
        .setRequestTimeoutSeconds(int.parse(value));
    showAppSuccessToast(updatedMessage);
  }

  Future<void> _editAppearanceMode(
    BuildContext context,
    WidgetRef ref,
    AppAppearanceMode selectedMode,
  ) async {
    final l10n = context.l10n;
    final result = await showAppActionPickerSheet<AppAppearanceMode>(
      context,
      title: l10n.settings_appearance_modeTitle,
      selectedValue: selectedMode,
      options: [
        AppPickerOption(
          value: AppAppearanceMode.system,
          label: AppAppearanceMode.system.labelOf(l10n),
          icon: TablerIcons.device_desktop,
        ),
        AppPickerOption(
          value: AppAppearanceMode.light,
          label: AppAppearanceMode.light.labelOf(l10n),
          icon: TablerIcons.sun,
        ),
        AppPickerOption(
          value: AppAppearanceMode.dark,
          label: AppAppearanceMode.dark.labelOf(l10n),
          icon: TablerIcons.moon,
        ),
      ],
    );
    if (result == null || result == selectedMode) return;

    await ref
        .read(appSettingsControllerProvider.notifier)
        .setAppearanceMode(result);
  }

  Future<void> _editLanguage(
    BuildContext context,
    WidgetRef ref,
    AppLocaleOption selectedOption,
  ) async {
    final l10n = context.l10n;
    final result = await showAppActionPickerSheet<AppLocaleOption>(
      context,
      title: l10n.settings_language_title,
      selectedValue: selectedOption,
      options: [
        AppPickerOption(
          value: AppLocaleOption.system,
          label: AppLocaleOption.system.labelOf(l10n),
          icon: TablerIcons.device_desktop,
        ),
        AppPickerOption(
          value: AppLocaleOption.zh,
          label: AppLocaleOption.zh.labelOf(l10n),
          icon: TablerIcons.language,
        ),
        AppPickerOption(
          value: AppLocaleOption.en,
          label: AppLocaleOption.en.labelOf(l10n),
          icon: TablerIcons.language,
        ),
      ],
    );
    if (result == null || result == selectedOption) return;

    await ref.read(localeControllerProvider.notifier).setOption(result);
  }

  Future<void> _editCustomHeaders(
    BuildContext context,
    WidgetRef ref,
    Map<String, String> currentHeaders,
  ) async {
    final l10n = context.l10n;
    final clearedMessage = l10n.settings_headers_cleared;
    final updatedMessage = l10n.settings_headers_updated;
    final value = await showEditValueSheet(
      context,
      title: l10n.settings_network_customHeadersTitle,
      initialValue: currentHeaders.entries
          .map((e) => '${e.key}: ${e.value}')
          .join('\n'),
      placeholder: l10n.settings_headers_placeholder,
      description: l10n.settings_headers_description,
      keyboardType: TextInputType.multiline,
      maxLines: 8,
      validator: (value) {
        try {
          _parseHeaders(value, l10n);
          return null;
        } catch (error) {
          return '$error';
        }
      },
    );
    if (value == null) return;

    final headers = _parseHeaders(value, l10n);
    await ref
        .read(appSettingsControllerProvider.notifier)
        .setCustomHeaders(headers);
    showAppSuccessToast(value.trim().isEmpty ? clearedMessage : updatedMessage);
  }

  Map<String, String> _parseHeaders(String raw, AppLocalizations l10n) {
    final headers = <String, String>{};
    final lines = raw.split('\n');
    for (var i = 0; i < lines.length; i++) {
      final line = lines[i].trim();
      if (line.isEmpty) {
        continue;
      }

      final separator = line.indexOf(':');
      if (separator <= 0) {
        throw l10n.settings_headers_errorFormat(i + 1);
      }

      final key = line.substring(0, separator).trim();
      final value = line.substring(separator + 1).trim();
      if (key.isEmpty) {
        throw l10n.settings_headers_errorEmptyKey(i + 1);
      }
      if (value.isEmpty) {
        throw l10n.settings_headers_errorEmptyValue(i + 1);
      }
      if (key.contains(RegExp(r'[\s:]'))) {
        throw l10n.settings_headers_errorInvalidKey(i + 1);
      }
      headers[key] = value;
    }
    return headers;
  }
}

class _WebDavConfigResult {
  const _WebDavConfigResult({
    required this.url,
    required this.username,
    required this.password,
    required this.syncApiKeys,
  });

  final String url;
  final String username;
  final String password;
  final bool syncApiKeys;
}

class _WebDavConfigSheet extends StatefulWidget {
  const _WebDavConfigSheet({required this.config});

  final WebDavSyncConfig config;

  @override
  State<_WebDavConfigSheet> createState() => _WebDavConfigSheetState();
}

class _WebDavConfigSheetState extends State<_WebDavConfigSheet> {
  late final TextEditingController _urlController;
  late final TextEditingController _usernameController;
  late final TextEditingController _passwordController;
  late bool _syncApiKeys;
  String? _urlError;

  @override
  void initState() {
    super.initState();
    _urlController = TextEditingController(text: widget.config.url);
    _usernameController = TextEditingController(text: widget.config.username);
    _passwordController = TextEditingController(text: widget.config.password);
    _syncApiKeys = widget.config.syncApiKeys;
    _validateUrl(_urlController.text);
  }

  @override
  void dispose() {
    _urlController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _validateUrl(String value) {
    final trimmed = value.trim();
    String? error;
    if (trimmed.isNotEmpty) {
      final uri = Uri.tryParse(trimmed);
      if (uri == null ||
          !uri.hasScheme ||
          uri.host.isEmpty ||
          (uri.scheme != 'https' && uri.scheme != 'http')) {
        error = context.l10n.settings_sync_webDavUrlInvalid;
      }
    }
    setState(() => _urlError = error);
  }

  void _save() {
    if (_urlError != null) return;
    Navigator.of(context).pop(
      _WebDavConfigResult(
        url: _urlController.text.trim(),
        username: _usernameController.text.trim(),
        password: _passwordController.text,
        syncApiKeys: _syncApiKeys,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ActionSheetScaffold(
      isAdaptive: true,
      showHandle: false,
      isFloating: true,
      hasHorizontalPadding: true,
      contentPadding: EdgeInsets.zero,
      panelHeader: Padding(
        padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CupertinoButton(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  l10n.common_cancel,
                  style: TextStyle(
                    color: AppColors.secondaryLabel(context),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Text(
              l10n.settings_sync_webDavConfigTitle,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: AppColors.label(context),
                letterSpacing: -0.4,
              ),
            ),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              l10n.settings_sync_webDavDescription,
              style: TextStyle(
                fontSize: 13,
                height: 1.35,
                color: AppColors.secondaryLabel(context),
              ),
            ),
            const SizedBox(height: 16),
            AppFormItem(
              label: l10n.settings_sync_webDavUrlLabel,
              icon: CupertinoIcons.link,
              child: AppFormTextField(
                controller: _urlController,
                placeholder: l10n.settings_sync_webDavUrlPlaceholder,
                keyboardType: TextInputType.url,
                textInputAction: TextInputAction.next,
                onChanged: _validateUrl,
              ),
            ),
            if (_urlError != null) ...[
              const SizedBox(height: 8),
              Text(
                _urlError!,
                style: const TextStyle(
                  color: CupertinoColors.systemRed,
                  fontSize: 12,
                ),
              ),
            ],
            const SizedBox(height: 14),
            AppFormItem(
              label: l10n.settings_sync_webDavUsernameLabel,
              icon: CupertinoIcons.person_fill,
              child: AppFormTextField(
                controller: _usernameController,
                placeholder: l10n.settings_sync_webDavUsernamePlaceholder,
                textInputAction: TextInputAction.next,
              ),
            ),
            const SizedBox(height: 14),
            AppFormItem(
              label: l10n.settings_sync_webDavPasswordLabel,
              icon: CupertinoIcons.lock_fill,
              child: AppFormTextField(
                controller: _passwordController,
                placeholder: l10n.settings_sync_webDavPasswordPlaceholder,
                obscureText: true,
                textInputAction: TextInputAction.done,
                onSubmitted: (_) => _save(),
              ),
            ),
            const SizedBox(height: 14),
            _SettingsSwitchRow(
              icon: TablerIcons.key,
              iconColor: CupertinoColors.systemOrange,
              title: l10n.settings_sync_webDavSyncApiKeysTitle,
              subtitle: l10n.settings_sync_webDavSyncApiKeysSubtitle,
              value: _syncApiKeys,
              onChanged: (value) => setState(() => _syncApiKeys = value),
            ),
            const SizedBox(height: 24),
            CupertinoButton.filled(
              onPressed: _urlError == null ? _save : null,
              child: Text(l10n.common_save),
            ),
          ],
        ),
      ),
    );
  }
}

class _AppInfoFooter extends StatefulWidget {
  const _AppInfoFooter();

  @override
  State<_AppInfoFooter> createState() => _AppInfoFooterState();
}

class _AppInfoFooterState extends State<_AppInfoFooter> {
  late final Future<PackageInfo> _packageInfo = PackageInfo.fromPlatform();

  Future<void> _openLegalLink(BuildContext context, String url) async {
    final uri = Uri.parse(url);
    final launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!launched && context.mounted) {
      showAppErrorToast(context.l10n.settings_contact_openFailed);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PackageInfo>(
      future: _packageInfo,
      builder: (context, snapshot) {
        final info = snapshot.data;
        final version = info?.version.trim();
        final buildNumber = info?.buildNumber.trim();
        final versionText = version == null || version.isEmpty
            ? 'Version --'
            : buildNumber == null || buildNumber.isEmpty
            ? 'Version $version'
            : 'Version $version Build $buildNumber';

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              Text(
                AppUserAgent.displayName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.secondaryLabel(context),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                versionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.tertiaryLabel(context),
                ),
              ),
              const SizedBox(height: 8),
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 14,
                runSpacing: 2,
                children: [
                  _FooterLinkButton(
                    label: context.l10n.premium_terms,
                    onPressed: () => _openLegalLink(context, _termsOfUseUrl),
                  ),
                  _FooterLinkButton(
                    label: context.l10n.premium_privacy,
                    onPressed: () => _openLegalLink(context, _privacyPolicyUrl),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _FooterLinkButton extends StatelessWidget {
  const _FooterLinkButton({required this.label, required this.onPressed});

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minimumSize: const Size(24, 24),
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: CupertinoColors.activeBlue.resolveFrom(context),
        ),
      ),
    );
  }
}

class _SettingsRow extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;

  const _SettingsRow({
    required this.icon,
    required this.iconColor,
    required this.title,
    this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        child: Row(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: iconColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, size: 18, color: iconColor),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.label(context),
                      letterSpacing: -0.4,
                    ),
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle!,
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.secondaryLabel(context),
                      ),
                    ),
                ],
              ),
            ),
            if (onTap != null)
              Icon(
                TablerIcons.chevron_right,
                size: 14,
                color: AppColors.tertiaryLabel(context),
              ),
          ],
        ),
      ),
    );
  }
}

class _SettingsSwitchRow extends StatelessWidget {
  const _SettingsSwitchRow({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.value,
    required this.onChanged,
    this.subtitle,
  });

  final IconData icon;
  final Color iconColor;
  final String title;
  final String? subtitle;
  final bool value;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: iconColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 18, color: iconColor),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.label(context),
                    letterSpacing: -0.4,
                  ),
                ),
                if (subtitle != null)
                  Text(
                    subtitle!,
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.secondaryLabel(context),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          CupertinoSwitch(value: value, onChanged: onChanged),
        ],
      ),
    );
  }
}

Future<void> _showCacheManagementSheet(BuildContext context) {
  return showActionSheet<void>(
    context: context,
    expand: false,
    builder: (_) => const _CacheManagementSheet(),
  );
}

Future<void> _showContactSupportSheet(BuildContext context) {
  return showActionSheet<void>(
    context: context,
    expand: false,
    builder: (_) => const _ContactSupportSheet(),
  );
}

Future<void> _showOpenSourceProjectSheet(BuildContext context) {
  return showActionSheet<void>(
    context: context,
    expand: false,
    builder: (_) => const _OpenSourceProjectSheet(),
  );
}

class _ContactSupportSheet extends StatelessWidget {
  const _ContactSupportSheet();

  Future<void> _openUrl(BuildContext context, String url) async {
    final uri = Uri.parse(url);
    final launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!launched && context.mounted) {
      showAppErrorToast(context.l10n.settings_contact_openFailed);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return ActionSheetScaffold(
      isAdaptive: true,
      showHandle: false,
      isFloating: true,
      hasHorizontalPadding: true,
      contentPadding: EdgeInsets.zero,
      useModalScrollController: false,
      panelHeader: Padding(
        padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CupertinoButton(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  l10n.common_close,
                  style: TextStyle(
                    color: AppColors.secondaryLabel(context),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Text(
              l10n.settings_help_contactTitle,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: AppColors.label(context),
                letterSpacing: -0.4,
              ),
            ),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _ContactInfoCard(
              icon: TablerIcons.brand_github,
              iconColor: CupertinoColors.systemPurple.resolveFrom(context),
              title: l10n.settings_contact_supportTitle,
              content: l10n.settings_contact_supportContent,
            ),
            const SizedBox(height: 10),
            _ContactInfoCard(
              icon: TablerIcons.brand_telegram,
              iconColor: CupertinoColors.activeBlue.resolveFrom(context),
              title: l10n.settings_contact_feedbackTitle,
              content: l10n.settings_contact_feedbackContent,
            ),
            const SizedBox(height: 16),
            CupertinoButton.filled(
              onPressed: () => _openUrl(context, _issueTrackerUrl),
              child: Text(l10n.settings_contact_submitIssue),
            ),
            const SizedBox(height: 8),
            CupertinoButton(
              onPressed: () => _openUrl(context, _supportGroupUrl),
              child: Text(l10n.settings_contact_joinSupport),
            ),
            const SizedBox(height: 8),
            Text(
              _issueTrackerUrl,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: AppColors.tertiaryLabel(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OpenSourceProjectSheet extends StatelessWidget {
  const _OpenSourceProjectSheet();

  Future<void> _openRepository(BuildContext context) async {
    final uri = Uri.parse(_repositoryUrl);
    final launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!launched && context.mounted) {
      showAppErrorToast(context.l10n.settings_contact_openFailed);
    }
  }

  Future<void> _copyRepositoryUrl(BuildContext context) async {
    await Clipboard.setData(const ClipboardData(text: _repositoryUrl));
    if (context.mounted) {
      showAppSuccessToast(context.l10n.common_copiedToClipboard);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return ActionSheetScaffold(
      isAdaptive: true,
      showHandle: false,
      isFloating: true,
      hasHorizontalPadding: true,
      contentPadding: EdgeInsets.zero,
      useModalScrollController: false,
      panelHeader: Padding(
        padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CupertinoButton(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  l10n.common_close,
                  style: TextStyle(
                    color: AppColors.secondaryLabel(context),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Text(
              l10n.settings_help_openSourceTitle,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: AppColors.label(context),
                letterSpacing: -0.4,
              ),
            ),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _ContactInfoCard(
              icon: TablerIcons.brand_github,
              iconColor: CupertinoColors.systemPurple.resolveFrom(context),
              title: l10n.settings_openSource_projectTitle,
              content: l10n.settings_openSource_projectContent,
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: AppColors.secondaryBackground(
                  context,
                ).withValues(alpha: 0.58),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppColors.separator(context).withValues(alpha: 0.14),
                  width: 0.5,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    TablerIcons.git_branch,
                    size: 18,
                    color: AppColors.secondaryLabel(context),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      _repositoryUrl,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13,
                        height: 1.3,
                        color: AppColors.label(context),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            CupertinoButton.filled(
              onPressed: () => _openRepository(context),
              child: Text(l10n.settings_openSource_openRepository),
            ),
            const SizedBox(height: 8),
            CupertinoButton(
              onPressed: () => _copyRepositoryUrl(context),
              child: Text(l10n.settings_openSource_copyRepositoryUrl),
            ),
          ],
        ),
      ),
    );
  }
}

class _ContactInfoCard extends StatelessWidget {
  const _ContactInfoCard({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.content,
  });

  final IconData icon;
  final Color iconColor;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.secondaryBackground(context).withValues(alpha: 0.58),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.separator(context).withValues(alpha: 0.14),
          width: 0.5,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 34,
            height: 34,
            decoration: BoxDecoration(
              color: iconColor.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(9),
            ),
            child: Icon(icon, size: 18, color: iconColor),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColors.label(context),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  content,
                  style: TextStyle(
                    fontSize: 13,
                    height: 1.35,
                    color: AppColors.secondaryLabel(context),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CacheManagementSheet extends StatefulWidget {
  const _CacheManagementSheet();

  @override
  State<_CacheManagementSheet> createState() => _CacheManagementSheetState();
}

class _CacheManagementSheetState extends State<_CacheManagementSheet> {
  int? _cacheSize;
  Object? _error;
  bool _isLoading = true;
  bool _isClearing = false;

  @override
  void initState() {
    super.initState();
    _refreshCacheSize();
  }

  Future<void> _refreshCacheSize() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final dirs = await _cacheDirectories();
      var total = 0;
      for (final dir in dirs) {
        total += await _directorySize(dir);
      }
      if (!mounted) return;
      setState(() => _cacheSize = total);
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = error);
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  Future<void> _clearCache() async {
    final confirmed = await showCupertinoDialog<bool>(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(context.l10n.settings_cache_clearTitle),
        content: Text(context.l10n.settings_cache_confirmContent),
        actions: [
          CupertinoDialogAction(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(context.l10n.common_cancel),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(context.l10n.settings_cache_clearAction),
          ),
        ],
      ),
    );
    if (confirmed != true) return;

    setState(() {
      _isClearing = true;
      _error = null;
    });

    try {
      final dirs = await _cacheDirectories();
      for (final dir in dirs) {
        await _clearDirectoryContents(dir);
      }
      if (!mounted) return;
      showAppSuccessToast(context.l10n.settings_cache_cleared);
      await _refreshCacheSize();
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = error);
      showAppErrorToast(
        context.l10n.settings_cache_clearFailed,
        description: '$error',
      );
    } finally {
      if (mounted) setState(() => _isClearing = false);
    }
  }

  Future<List<Directory>> _cacheDirectories() async {
    final dirs = <Directory>[];
    final seen = <String>{};

    Future<void> addDirectory(Future<Directory> Function() loader) async {
      final dir = await loader();
      if (!seen.add(dir.path)) return;
      dirs.add(dir);
    }

    await addDirectory(getTemporaryDirectory);
    await addDirectory(getApplicationCacheDirectory);
    return dirs;
  }

  Future<int> _directorySize(Directory dir) async {
    if (!await dir.exists()) return 0;

    var total = 0;
    await for (final entity in dir.list(recursive: true, followLinks: false)) {
      try {
        final stat = await entity.stat();
        if (stat.type == FileSystemEntityType.file) {
          total += stat.size;
        }
      } catch (_) {}
    }
    return total;
  }

  Future<void> _clearDirectoryContents(Directory dir) async {
    if (!await dir.exists()) return;
    await for (final entity in dir.list(followLinks: false)) {
      try {
        await entity.delete(recursive: true);
      } catch (_) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final sizeText = _isLoading
        ? l10n.settings_cache_calculating
        : _error != null
        ? l10n.settings_cache_readFailed
        : formatBytes(_cacheSize ?? 0);
    final canClear =
        !_isLoading && !_isClearing && _error == null && (_cacheSize ?? 0) > 0;

    return ActionSheetScaffold(
      isAdaptive: true,
      showHandle: false,
      isFloating: true,
      hasHorizontalPadding: true,
      contentPadding: EdgeInsets.zero,
      useModalScrollController: false,
      panelHeader: Padding(
        padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CupertinoButton(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                onPressed: _isClearing
                    ? null
                    : () => Navigator.of(context).pop(),
                child: Text(
                  l10n.common_close,
                  style: TextStyle(
                    color: AppColors.secondaryLabel(context),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Text(
              l10n.settings_cache_title,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: AppColors.label(context),
                letterSpacing: -0.4,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: CupertinoButton(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                onPressed: _isLoading || _isClearing ? null : _refreshCacheSize,
                child: _isLoading
                    ? const CupertinoActivityIndicator(radius: 10)
                    : Text(
                        l10n.common_refresh,
                        style: TextStyle(
                          color: CupertinoColors.activeBlue.resolveFrom(
                            context,
                          ),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Cache Size Card (Exquisite design)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration: BoxDecoration(
                color: AppColors.secondaryBackground(
                  context,
                ).withValues(alpha: 0.8),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppColors.separator(context).withValues(alpha: 0.1),
                  width: 0.5,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: CupertinoColors.systemGrey
                          .resolveFrom(context)
                          .withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      CupertinoIcons.archivebox_fill,
                      size: 22,
                      color: CupertinoColors.systemGrey.resolveFrom(context),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.settings_cache_sizeTitle,
                          style: TextStyle(
                            fontSize: 13,
                            color: AppColors.secondaryLabel(context),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          sizeText,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.label(context),
                            letterSpacing: -0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                _error == null
                    ? l10n.settings_cache_footer
                    : l10n.settings_cache_errorFooter('$_error'),
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.tertiaryLabel(context),
                  height: 1.4,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),

            // Action Button
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: canClear ? _clearCache : null,
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  color: canClear
                      ? CupertinoColors.systemRed.resolveFrom(context)
                      : AppColors.secondaryBackground(
                          context,
                        ).withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(12),
                  border: canClear
                      ? null
                      : Border.all(
                          color: AppColors.separator(
                            context,
                          ).withValues(alpha: 0.1),
                          width: 0.5,
                        ),
                ),
                child: Center(
                  child: _isClearing
                      ? const CupertinoActivityIndicator(
                          color: CupertinoColors.white,
                        )
                      : Text(
                          l10n.settings_cache_clearTitle,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: canClear
                                ? CupertinoColors.white
                                : AppColors.tertiaryLabel(context),
                          ),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
