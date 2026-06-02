import 'package:flutter_test/flutter_test.dart';
import 'package:mono_dash/presentation/features/panel_settings/models/panel_settings_view_state.dart';

void main() {
  group('PanelSettingsViewState.fromSettings', () {
    test('parses core switch values case-insensitively', () {
      final settings = PanelSettingsViewState.fromSettings(const {}, const {
        'developerMode': 'Enable',
        'menuTabs': 'Disable',
        'apiInterfaceStatus': 'Enable',
      });

      expect(settings.developerMode, isTrue);
      expect(settings.menuTabs, isFalse);
      expect(settings.apiEnabled, isTrue);
    });

    test('keeps existing defaults when switch values are missing', () {
      final settings = PanelSettingsViewState.fromSettings(const {}, const {});

      expect(settings.developerMode, isFalse);
      expect(settings.menuTabs, isTrue);
      expect(settings.apiEnabled, isFalse);
    });
  });
}
