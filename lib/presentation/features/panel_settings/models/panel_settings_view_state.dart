import '../../../../core/localization/generated/app_localizations.dart';

/// 面板设置视图状态。
class PanelSettingsViewState {
  const PanelSettingsViewState({
    this.systemIP = '',
    this.userName = '',
    this.theme = 'light',
    this.language = 'zh',
    this.sessionTimeout = 0,
    this.developerMode = false,
    this.menuTabs = true,
    this.apiInterfaceStatus = '',
    this.apiKey = '',
    this.ipWhiteList = '',
    this.apiKeyValidityTime = 120,
  });

  final String systemIP;
  final String userName;
  final String theme;
  final String language;
  final int sessionTimeout;
  final bool developerMode;
  final bool menuTabs;
  final String apiInterfaceStatus;
  final String apiKey;
  final String ipWhiteList;
  final int apiKeyValidityTime;

  bool get apiEnabled => _isEnabled(apiInterfaceStatus);

  PanelSettingsViewState copyWith({
    String? systemIP,
    String? userName,
    String? theme,
    String? language,
    int? sessionTimeout,
    bool? developerMode,
    bool? menuTabs,
    String? apiInterfaceStatus,
    String? apiKey,
    String? ipWhiteList,
    int? apiKeyValidityTime,
  }) {
    return PanelSettingsViewState(
      systemIP: systemIP ?? this.systemIP,
      userName: userName ?? this.userName,
      theme: theme ?? this.theme,
      language: language ?? this.language,
      sessionTimeout: sessionTimeout ?? this.sessionTimeout,
      developerMode: developerMode ?? this.developerMode,
      menuTabs: menuTabs ?? this.menuTabs,
      apiInterfaceStatus: apiInterfaceStatus ?? this.apiInterfaceStatus,
      apiKey: apiKey ?? this.apiKey,
      ipWhiteList: ipWhiteList ?? this.ipWhiteList,
      apiKeyValidityTime: apiKeyValidityTime ?? this.apiKeyValidityTime,
    );
  }

  /// 从 Agent 侧和 Core 侧设置 Map 合并构建。
  factory PanelSettingsViewState.fromSettings(
    Map<String, dynamic> agent,
    Map<String, dynamic> core,
  ) {
    return PanelSettingsViewState(
      systemIP: (agent['systemIP'] as String?) ?? '',
      userName: (core['userName'] as String?) ?? '',
      theme: (core['theme'] as String?) ?? 'light',
      language: (core['language'] as String?) ?? 'zh',
      sessionTimeout: int.tryParse('${core['sessionTimeout'] ?? 0}') ?? 0,
      developerMode: _isEnabled(core['developerMode']),
      menuTabs: !_isDisabled(core['menuTabs']),
      apiInterfaceStatus: (core['apiInterfaceStatus'] as String?) ?? '',
      apiKey: (core['apiKey'] as String?) ?? '',
      ipWhiteList: (core['ipWhiteList'] as String?) ?? '',
      apiKeyValidityTime:
          int.tryParse('${core['apiKeyValidityTime'] ?? 120}') ?? 120,
    );
  }

  String themeLabel(AppLocalizations l10n) {
    switch (theme) {
      case 'dark':
        return l10n.panelSettings_themeDark;
      case 'light':
        return l10n.panelSettings_themeLight;
      case 'auto':
        return l10n.common_systemDefault;
      default:
        return theme;
    }
  }

  String languageLabel(AppLocalizations l10n) {
    switch (language) {
      case 'zh':
        return l10n.panelSettings_languageZh;
      case 'en':
        return 'English';
      case 'ja':
        return l10n.panelSettings_languageJa;
      case 'ms':
        return l10n.panelSettings_languageMs;
      case 'pt-BR':
        return l10n.panelSettings_languagePtBr;
      case 'zh-Hant':
        return l10n.panelSettings_languageZhHant;
      default:
        return language;
    }
  }
}

bool _isEnabled(Object? value) => value.toString().toLowerCase() == 'enable';

bool _isDisabled(Object? value) => value.toString().toLowerCase() == 'disable';
