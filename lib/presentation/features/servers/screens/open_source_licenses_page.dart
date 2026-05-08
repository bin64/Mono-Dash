import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/localization/l10n_x.dart';
import '../../../../core/network/app_user_agent.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../common/components/app_action_components.dart';
import '../../../common/components/frosted_scaffold.dart';
import '../../settings/providers/app_settings_provider.dart';

class OpenSourceLicensesPage extends StatefulWidget {
  const OpenSourceLicensesPage({super.key});

  @override
  State<OpenSourceLicensesPage> createState() => _OpenSourceLicensesPageState();
}

class _OpenSourceLicensesPageState extends State<OpenSourceLicensesPage> {
  static const _onePanelRepositoryUrl = 'https://github.com/1Panel-dev/1Panel';

  late final Future<_LicenseData> _licenseData = _loadLicenseData();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return FrostedScaffold(
      title: l10n.settings_help_licensesTitle,
      body: FutureBuilder<_LicenseData>(
        future: _licenseData,
        builder: (context, snapshot) {
          final data = snapshot.data;

          return CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: FrostedScaffold.contentTopPadding(context) + 8,
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 132),
                sliver: SliverList.list(
                  children: [
                    if (data == null)
                      _LoadingLicensesState(
                        message: l10n.settings_licenses_loading,
                      )
                    else if (data.packages.isEmpty)
                      _EmptyLicensesState(
                        title: l10n.settings_licenses_emptyTitle,
                        subtitle: l10n.settings_licenses_emptySubtitle,
                      )
                    else ...[
                      AppSectionHeader(
                        title: l10n.settings_licenses_appSection,
                        icon: TablerIcons.device_mobile,
                      ),
                      AppActionGroup(
                        children: [
                          AppActionRow(
                            leading: _AppLicenseIcon(
                              child: Image.asset(
                                AppIconVariant.defaultIcon.assetPath,
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: AppUserAgent.displayName,
                            subtitle: Text(
                              l10n.settings_licenses_versionSubtitle(
                                data.versionText,
                              ),
                            ),
                            trailing: _CountBadge(
                              text: l10n.settings_licenses_packageCount(
                                data.packages.length,
                              ),
                            ),
                          ),
                          AppActionRow(
                            leading: _AppLicenseIcon(
                              backgroundColor: CupertinoColors.activeBlue
                                  .resolveFrom(context)
                                  .withValues(alpha: 0.1),
                              padding: const EdgeInsets.all(7),
                              child: SvgPicture.asset(
                                'assets/icons/1panel.svg',
                                fit: BoxFit.contain,
                              ),
                            ),
                            title: '1Panel',
                            subtitle: const Text('1Panel-dev/1Panel'),
                            onTap: () => _openUrl(_onePanelRepositoryUrl),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      AppSectionHeader(
                        title: l10n.settings_licenses_componentsSection,
                        icon: TablerIcons.packages,
                      ),
                      AppActionGroup(
                        children: data.packages
                            .map(
                              (item) => AppActionRow(
                                icon: TablerIcons.package,
                                iconColor: CupertinoColors.systemIndigo,
                                title: item.name,
                                subtitle: Text(
                                  l10n.settings_licenses_entryCount(
                                    item.entries.length,
                                  ),
                                ),
                                onTap: () => Navigator.of(context).push(
                                  CupertinoPageRoute<void>(
                                    builder: (_) =>
                                        _OpenSourceLicenseDetailPage(
                                          package: item,
                                        ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Future<_LicenseData> _loadLicenseData() async {
    final info = await PackageInfo.fromPlatform();
    final entries = await LicenseRegistry.licenses.toList();
    final packageNames =
        entries
            .expand((entry) => entry.packages)
            .map((name) => name.trim())
            .where((name) => name.isNotEmpty)
            .toSet()
            .toList()
          ..sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));

    final packages = packageNames
        .map(
          (name) => _LicensePackage(
            name: name,
            entries: entries
                .where((entry) => entry.packages.contains(name))
                .toList(growable: false),
          ),
        )
        .toList(growable: false);

    final version = info.version.trim();
    final buildNumber = info.buildNumber.trim();
    final versionText = buildNumber.isEmpty
        ? version
        : '$version ($buildNumber)';

    return _LicenseData(versionText: versionText, packages: packages);
  }

  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}

class _AppLicenseIcon extends StatelessWidget {
  const _AppLicenseIcon({
    required this.child,
    this.backgroundColor,
    this.padding = EdgeInsets.zero,
  });

  final Widget child;
  final Color? backgroundColor;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: child,
    );
  }
}

class _OpenSourceLicenseDetailPage extends StatelessWidget {
  const _OpenSourceLicenseDetailPage({required this.package});

  final _LicensePackage package;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return FrostedScaffold(
      title: package.name,
      useMiddleTruncate: true,
      body: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: FrostedScaffold.contentTopPadding(context) + 8,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 132),
            sliver: SliverList.list(
              children: [
                AppSectionHeader(
                  title: l10n.settings_licenses_componentsSection,
                  icon: TablerIcons.package,
                ),
                AppActionGroup(
                  children: [
                    AppActionRow(
                      icon: TablerIcons.package,
                      iconColor: CupertinoColors.systemIndigo,
                      title: package.name,
                      subtitle: Text(
                        l10n.settings_licenses_entryCount(
                          package.entries.length,
                        ),
                      ),
                      trailing: const SizedBox.shrink(),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                AppSectionHeader(
                  title: l10n.settings_licenses_licenseSection,
                  icon: TablerIcons.file_text,
                ),
                ...package.entries.asMap().entries.map((entry) {
                  final index = entry.key;
                  final license = entry.value;

                  return Padding(
                    padding: EdgeInsets.only(top: index == 0 ? 0 : 12),
                    child: _LicenseTextCard(entry: license),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LicenseTextCard extends StatelessWidget {
  const _LicenseTextCard({required this.entry});

  final LicenseEntry entry;

  @override
  Widget build(BuildContext context) {
    final paragraphs = entry.paragraphs.toList(growable: false);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: AppColors.secondaryBackground(context).withValues(alpha: 0.68),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.separator(context).withValues(alpha: 0.16),
          width: 0.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: paragraphs.asMap().entries.map((entry) {
          final index = entry.key;
          final paragraph = entry.value;
          final isCentered =
              paragraph.indent == LicenseParagraph.centeredIndent;
          final indent = isCentered ? 0.0 : paragraph.indent * 16.0;

          return Padding(
            padding: EdgeInsets.only(top: index == 0 ? 0 : 10, left: indent),
            child: Text(
              paragraph.text,
              textAlign: isCentered ? TextAlign.center : TextAlign.start,
              style: TextStyle(
                fontSize: 12,
                height: 1.45,
                color: AppColors.secondaryLabel(context),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _CountBadge extends StatelessWidget {
  const _CountBadge({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: CupertinoColors.activeBlue
            .resolveFrom(context)
            .withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: CupertinoColors.activeBlue.resolveFrom(context),
        ),
      ),
    );
  }
}

class _LoadingLicensesState extends StatelessWidget {
  const _LoadingLicensesState({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Column(
        children: [
          const CupertinoActivityIndicator(),
          const SizedBox(height: 14),
          Text(
            message,
            style: TextStyle(
              fontSize: 14,
              color: AppColors.secondaryLabel(context),
            ),
          ),
        ],
      ),
    );
  }
}

class _EmptyLicensesState extends StatelessWidget {
  const _EmptyLicensesState({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Column(
        children: [
          Icon(
            TablerIcons.file_off,
            size: 36,
            color: AppColors.tertiaryLabel(context),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.label(context),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              color: AppColors.secondaryLabel(context),
            ),
          ),
        ],
      ),
    );
  }
}

class _LicenseData {
  const _LicenseData({required this.versionText, required this.packages});

  final String versionText;
  final List<_LicensePackage> packages;
}

class _LicensePackage {
  const _LicensePackage({required this.name, required this.entries});

  final String name;
  final List<LicenseEntry> entries;
}
