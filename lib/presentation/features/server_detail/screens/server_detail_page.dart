import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Tooltip;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../../../../core/localization/l10n_x.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../common/components/floating_tab_bar.dart';
import '../../../common/components/frosted_header.dart';
import '../../containers/providers/container_overview_provider.dart';
import '../../containers/screens/containers_page.dart';
import '../../dashboard/providers/dashboard_provider.dart';
import '../../dashboard/screens/dashboard_page.dart';
import '../../files/screens/files_page.dart';
import '../../more/screens/more_page.dart';
import '../../servers/providers/servers_provider.dart';
import '../../websites/providers/websites_provider.dart';
import '../../websites/screens/websites_page.dart';
import '../../../common/components/app_header_search_field.dart';
import '../../files/providers/files_provider.dart';
import '../providers/active_server_provider.dart';
import '../widgets/menus/files_overlay_menu.dart';
import '../widgets/menus/websites_overlay_menu.dart';

/// 面板详情页容器：5 个 Tab（概览 / 网站 / 文件 / 容器 / 更多）。
///
/// 通过父级 `ProviderScope.overrides` 注入 `activeServerIdProvider`，
/// 各 Tab 内部可直接 `ref.watch(activeServerIdProvider)` 获取当前服务器 id。
class ServerDetailPage extends ConsumerStatefulWidget {
  const ServerDetailPage({super.key, this.initialIndex = 0});

  final int initialIndex;

  @override
  ConsumerState<ServerDetailPage> createState() => _ServerDetailPageState();
}

class _ServerDetailPageState extends ConsumerState<ServerDetailPage> {
  List<FloatingTabItemData> _tabItems(BuildContext context) => [
    FloatingTabItemData(
      icon: CupertinoIcons.chart_bar_alt_fill,
      activeIcon: CupertinoIcons.chart_bar_alt_fill,
      label: context.l10n.nav_overview,
      nativeSymbol: 'chart.bar.fill',
    ),
    FloatingTabItemData(
      icon: CupertinoIcons.globe,
      activeIcon: CupertinoIcons.globe,
      label: context.l10n.nav_websites,
      nativeSymbol: 'globe',
    ),
    FloatingTabItemData(
      icon: CupertinoIcons.folder,
      activeIcon: CupertinoIcons.folder_fill,
      label: context.l10n.nav_files,
      nativeSymbol: 'folder.fill',
    ),
    FloatingTabItemData(
      icon: CupertinoIcons.cube_box,
      activeIcon: CupertinoIcons.cube_box_fill,
      label: context.l10n.nav_containers,
      nativeSymbol: 'cube.box.fill',
    ),
    FloatingTabItemData(
      icon: CupertinoIcons.ellipsis,
      activeIcon: CupertinoIcons.ellipsis_circle_fill,
      label: context.l10n.nav_more,
      nativeSymbol: 'ellipsis.circle.fill',
    ),
  ];

  late int _selectedIndex;
  final Map<int, double> _scrollOffsets = {};
  bool _isTabBarVisible = true;
  bool _scrollStateUpdateScheduled = false;

  // Search state for Files
  bool _isSearchMode = false;
  final _searchController = TextEditingController();
  final _searchFocusNode = FocusNode();
  Timer? _searchDebounce;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex.clamp(0, 4).toInt();
  }

  @override
  void dispose() {
    _searchDebounce?.cancel();
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  void _searchFilesDebounced(String value) {
    _searchDebounce?.cancel();
    _searchDebounce = Timer(const Duration(milliseconds: 400), () {
      if (!mounted) return;
      ref.read(filesControllerProvider.notifier).search(value);
    });
  }

  void _clearFileSearch() {
    _searchDebounce?.cancel();
    _searchController.clear();
    ref.read(filesControllerProvider.notifier).search('');
  }

  void _searchWebsitesDebounced(String value) {
    _searchDebounce?.cancel();
    _searchDebounce = Timer(const Duration(milliseconds: 400), () {
      if (!mounted) return;
      ref.read(websitesControllerProvider.notifier).search(value);
    });
  }

  void _clearWebsiteSearch() {
    _searchDebounce?.cancel();
    _searchController.clear();
    ref.read(websitesControllerProvider.notifier).search('');
  }

  bool _onScrollNotification(ScrollNotification notification) {
    if (notification.depth != 0) return false;
    if (notification.metrics.axis != Axis.vertical) return false;

    final currentPixels = notification.metrics.pixels;
    final hasKnownOffset = _scrollOffsets.containsKey(_selectedIndex);
    final oldPixels = _scrollOffsets[_selectedIndex] ?? 0;
    final delta = currentPixels - oldPixels;
    _scrollOffsets[_selectedIndex] = currentPixels;

    var shouldShowTabBar = _isTabBarVisible;
    final isUserScrollUpdate =
        notification is ScrollUpdateNotification &&
        notification.dragDetails != null;
    if (hasKnownOffset && isUserScrollUpdate) {
      if (delta > 2 && currentPixels > 50 && shouldShowTabBar) {
        shouldShowTabBar = false;
      } else if (delta < -2 && !shouldShowTabBar) {
        shouldShowTabBar = true;
      }
    }

    const threshold = 20.0;
    final wasOverlapping = oldPixels > threshold;
    final isNowOverlapping = currentPixels > threshold;

    final tabBarChanged = shouldShowTabBar != _isTabBarVisible;
    if (tabBarChanged || wasOverlapping != isNowOverlapping) {
      if (_scrollStateUpdateScheduled) return false;
      _scrollStateUpdateScheduled = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollStateUpdateScheduled = false;
        if (!mounted) return;
        setState(() {
          _scrollOffsets[_selectedIndex] = currentPixels;
          _isTabBarVisible = shouldShowTabBar;
        });
      });
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final tabItems = _tabItems(context);
    final activeServerId = ref.watch(activeServerIdProvider);
    final serversAsync = ref.watch(serversNotifierProvider);
    final title = serversAsync.maybeWhen(
      data: (servers) {
        for (final server in servers) {
          if (server.id == activeServerId) return server.displayName;
        }
        return l10n.serverDetail_title;
      },
      orElse: () => l10n.serverDetail_title,
    );
    final currentScroll = _scrollOffsets[_selectedIndex] ?? 0;
    final isOverlapping = currentScroll > 20;
    final bottomInset = MediaQuery.viewInsetsOf(context).bottom;
    final showTabBar = _isTabBarVisible && bottomInset == 0;

    return CupertinoPageScaffold(
      backgroundColor: AppColors.background(context),
      child: Stack(
        children: [
          NotificationListener<ScrollNotification>(
            onNotification: _onScrollNotification,
            child: IndexedStack(
              index: _selectedIndex,
              children: [
                DashboardPage(isActive: _selectedIndex == 0),
                WebsitesPage(isActive: _selectedIndex == 1),
                FilesPage(tabBarVisible: showTabBar),
                ContainersPage(isActive: _selectedIndex == 3),
                MorePage(onOpenFilesPath: _openFilesPath),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: FrostedHeader(
              title: _isSearchMode ? '' : title,
              isOverlapping: isOverlapping,
              onBack: _isSearchMode ? null : () => Navigator.of(context).pop(),
              fadeOutDistance: 24,
              trailingBuilder: _buildTrailingBuilder(),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
            left: 0,
            right: 0,
            bottom: showTabBar ? 0 : -100,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: showTabBar ? 1 : 0,
              child: FloatingTabBar(
                items: tabItems,
                selectedIndex: _selectedIndex,
                expandItems: true,
                horizontalMargin: 16,
                contentHorizontalPadding: 8,
                onTabSelected: (index) {
                  if (index == _selectedIndex) return;
                  final shouldClearFileSearch =
                      _selectedIndex == 2 &&
                      index != 2 &&
                      (_isSearchMode || _searchController.text.isNotEmpty);
                  final shouldClearWebsiteSearch =
                      _selectedIndex == 1 &&
                      index != 1 &&
                      (_isSearchMode || _searchController.text.isNotEmpty);
                  setState(() {
                    _selectedIndex = index;
                    _isSearchMode = false;
                  });
                  if (shouldClearFileSearch) _clearFileSearch();
                  if (shouldClearWebsiteSearch) _clearWebsiteSearch();
                  _refreshTab(index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Function(bool isDark, bool isOverlapping)? _buildTrailingBuilder() {
    switch (_selectedIndex) {
      case 0:
        return null;
      case 1:
        return _buildWebsitesMenu;
      case 2:
        return _buildFilesTrailing;
      default:
        return null;
    }
  }

  Widget _buildFilesTrailing(bool isDark, bool isOverlapping) {
    final filesState = ref.watch(filesControllerProvider).valueOrNull;
    final containSub = filesState?.containSub ?? false;

    if (_isSearchMode) {
      return AppHeaderSearchField(
        controller: _searchController,
        focusNode: _searchFocusNode,
        placeholder: context.l10n.serverDetail_searchFilesPlaceholder,
        onChanged: _searchFilesDebounced,
        onClear: () {
          _searchDebounce?.cancel();
          ref.read(filesControllerProvider.notifier).search('');
        },
        onCancel: () {
          setState(() => _isSearchMode = false);
          _clearFileSearch();
        },
        actions: [_ContainSubSearchButton(selected: containSub)],
      );
    }

    return FilesOverlayMenu(
      isDark: isDark,
      isOverlapping: isOverlapping,
      onSearchModeEnter: () {
        setState(() => _isSearchMode = true);
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) _searchFocusNode.requestFocus();
        });
      },
    );
  }

  Widget _buildWebsitesMenu(bool isDark, bool isOverlapping) {
    if (_isSearchMode) {
      return AppHeaderSearchField(
        controller: _searchController,
        focusNode: _searchFocusNode,
        placeholder: context.l10n.serverDetail_searchWebsitesPlaceholder,
        onChanged: _searchWebsitesDebounced,
        onClear: () {
          _searchDebounce?.cancel();
          ref.read(websitesControllerProvider.notifier).search('');
        },
        onCancel: () {
          setState(() => _isSearchMode = false);
          _clearWebsiteSearch();
        },
      );
    }

    return WebsitesOverlayMenu(
      isDark: isDark,
      isOverlapping: isOverlapping,
      onSearchModeEnter: () {
        setState(() => _isSearchMode = true);
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) _searchFocusNode.requestFocus();
        });
      },
    );
  }

  void _refreshTab(int index) {
    switch (index) {
      case 0:
        ref.read(dashboardControllerProvider.notifier).refreshBase();
        break;
      case 1:
        ref.read(websitesControllerProvider.notifier).refresh();
        break;
      case 2:
        ref.read(filesControllerProvider.notifier).refresh(silent: true);
        break;
      case 3:
        ref.read(containerOverviewProvider.notifier).refresh();
        break;
    }
  }

  void _openFilesPath(String path) {
    final targetPath = path.trim();
    if (targetPath.isEmpty) return;

    if (_isSearchMode || _searchController.text.isNotEmpty) {
      _clearFileSearch();
    }

    setState(() {
      _selectedIndex = 2;
      _isSearchMode = false;
      _isTabBarVisible = true;
    });
    ref.read(filesControllerProvider.notifier).navigateTo(targetPath);
  }
}

class _ContainSubSearchButton extends ConsumerWidget {
  const _ContainSubSearchButton({required this.selected});

  final bool selected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = CupertinoTheme.brightnessOf(context) == Brightness.dark;
    final activeColor = CupertinoColors.activeBlue.resolveFrom(context);
    final borderColor = isDark
        ? CupertinoColors.white.withValues(alpha: 0.08)
        : CupertinoColors.white.withValues(alpha: 0.62);
    final backgroundColor = selected
        ? activeColor.withValues(alpha: isDark ? 0.28 : 0.14)
        : (isDark
              ? const Color(0xFF2C2C2E).withValues(alpha: 0.42)
              : CupertinoColors.systemBackground
                    .resolveFrom(context)
                    .withValues(alpha: 0.54));
    final iconColor = selected
        ? activeColor
        : AppColors.secondaryLabel(context);

    return Tooltip(
      message: selected
          ? context.l10n.serverDetail_includeSubdirectories
          : context.l10n.serverDetail_currentDirectoryOnly,
      child: Semantics(
        button: true,
        selected: selected,
        label: context.l10n.serverDetail_includeSubdirectories,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor, width: 0.5),
          ),
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            minimumSize: const Size(36, 32),
            onPressed: () => ref
                .read(filesControllerProvider.notifier)
                .toggleContainSubSearch(),
            child: Icon(TablerIcons.folder_search, size: 18, color: iconColor),
          ),
        ),
      ),
    );
  }
}
