import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/localization/locale_controller.dart';
import '../../../../core/network/network_exceptions.dart';
import '../../../../core/storage/storage_service.dart';
import '../../../../core/utils/file_icon_path_cache.dart';
import '../../../../data/dto/file/file_item_dto.dart';
import '../../../../data/dto/file/file_share_dto.dart';
import '../../../../data/repositories_impl/file_repository_impl.dart';
import '../../../common/app_toast.dart';
import '../../server_detail/providers/active_server_provider.dart';
import '../models/files_view_state.dart';

part 'files_provider.g.dart';

@Riverpod(
  dependencies: [
    fileRepository,
    activeServerId,
    storageService,
    appLocalizations,
  ],
)
class FilesController extends _$FilesController {
  String? _pendingPath;
  int _searchGeneration = 0;

  bool _shouldContainSub(FilesViewState state, [String? query]) {
    final effectiveQuery = query ?? state.searchText;
    return state.containSub && effectiveQuery.trim().isNotEmpty;
  }

  @override
  Future<FilesViewState> build() async {
    final serverId = ref.watch(activeServerIdProvider);
    final storage = ref.watch(storageServiceProvider);

    // 加载持久化的系统路径缓存
    final cachedWebsitePath = storage.getString('website_path_$serverId');
    if (cachedWebsitePath != null) {
      FileIconPathCache.updatePaths(cachedWebsitePath);
    }

    // 读取持久化的路径
    final lastPath = storage.getString('last_path_$serverId') ?? '/';

    final repo = await ref.watch(fileRepositoryProvider.future);

    // 模拟缓慢加载以展示骨架屏
    // await Future.delayed(const Duration(seconds: 2));

    final result = await repo.searchFiles(path: lastPath, pageSize: 50);

    // 如果持久化的路径失效（例如被删除），回退到根目录
    if (result.items == null && lastPath != '/') {
      final rootResult = await repo.searchFiles(path: '/', pageSize: 50);
      return FilesViewState(
        currentPath: '/',
        items: rootResult.items ?? [],
        pathHistory: const ['/'],
        page: 1,
        hasMore: (rootResult.items?.length ?? 0) >= 50,
      );
    }

    // 重构路径历史
    final history = <String>[];
    final parts = lastPath.split('/').where((p) => p.isNotEmpty).toList();
    history.add('/'); // 根目录
    String current = '';
    for (final part in parts) {
      current += (current == '/' ? '' : '/') + part;
      history.add(current);
    }
    // 去重并确保顺序
    final finalHistory = history.toSet().toList();

    _pendingPath = lastPath;

    final savedViewMode = storage.getString('file_view_mode_$serverId');
    final viewMode = savedViewMode == 'icon'
        ? FileViewMode.icon
        : FileViewMode.list;

    return FilesViewState(
      currentPath: lastPath,
      items: result.items ?? [],
      pathHistory: finalHistory.isEmpty ? const ['/'] : finalHistory,
      page: 1,
      hasMore: (result.items?.length ?? 0) >= 50,
      viewMode: viewMode,
    );
  }

  /// 导航到指定目录。
  Future<void> navigateTo(String path, {double? currentOffset}) async {
    var current = state.valueOrNull;
    if (current == null) return;

    if (currentOffset != null) {
      // 兼容热重载时可能存在的旧状态
      final currentOffsets =
          (current as dynamic).scrollOffsets as Map<String, double>? ??
          const {};
      final newOffsets = Map<String, double>.from(currentOffsets);
      newOffsets[current.currentPath] = currentOffset;
      current = current.copyWith(scrollOffsets: newOffsets);
      state = AsyncData(current);
    }

    // 构建新的路径历史
    final currentSegments = current.pathSegments;
    final targetIndex = currentSegments.indexWhere((s) => s.fullPath == path);

    List<String> newHistory;
    if (targetIndex >= 0) {
      // 向上导航 - 截断到目标路径
      newHistory = current.pathHistory.sublist(
        0,
        current.pathHistory.indexOf(path) + 1,
      );
      if (newHistory.isEmpty) newHistory = [path];
    } else {
      // 向下导航 - 追加路径
      newHistory = [...current.pathHistory, path];

      // 进入子文件夹：始终强制重置该文件夹的位置记录为 0
      final updatedOffsets = Map<String, double>.from(current.scrollOffsets);
      updatedOffsets[path] = 0.0;
      current = current.copyWith(scrollOffsets: updatedOffsets);
    }

    _pendingPath = path;
    state = AsyncData(
      current.copyWith(
        isLoading: true,
        currentPath: path,
        pathHistory: newHistory,
        isSelectionMode: false,
        selectedPaths: {},
        page: 1,
        hasMore: true,
      ),
    );

    try {
      final repo = await ref.read(fileRepositoryProvider.future);

      // 模拟缓慢加载以展示骨架屏
      // await Future.delayed(const Duration(seconds: 2));

      final result = await repo.searchFiles(
        path: path,
        showHidden: current.showHidden,
        sortBy: current.sortBy,
        sortOrder: current.sortOrder,
        search: current.searchText,
        containSub: _shouldContainSub(current),
        page: 1,
        pageSize: 50,
      );

      if (_pendingPath != path) return;

      state = AsyncData(
        current.copyWith(
          currentPath: path,
          items: result.items ?? [],
          pathHistory: newHistory,
          isLoading: false,
          page: 1,
          hasMore: (result.items?.length ?? 0) >= 50,
        ),
      );
      _savePath(path);
    } catch (e) {
      if (_pendingPath != path) return;
      state = AsyncData(current.copyWith(isLoading: false));
      final message = switch (e) {
        AppNetworkException(:final message) => message,
        _ => ref.read(appLocalizationsProvider).files_loadDirectoryFailed,
      };
      showAppErrorToast(message);
    }
  }

  /// 更新当前目录的滚动偏移量
  void updateScrollOffset(double offset) {
    final current = state.valueOrNull;
    if (current == null) return;

    final newOffsets = Map<String, double>.from(current.scrollOffsets);
    newOffsets[current.currentPath] = offset;
    state = AsyncData(current.copyWith(scrollOffsets: newOffsets));
  }

  /// 刷新当前目录。
  Future<void> refresh({bool silent = false}) async {
    final current = state.valueOrNull;
    if (current == null) return;
    if (silent && current.isLoading) return;

    final path = current.currentPath;
    _pendingPath = path;
    if (!silent) {
      state = AsyncData(current.copyWith(isLoading: true));
    }

    final previous = current;
    final nextState = await AsyncValue.guard(() async {
      final repo = await ref.read(fileRepositoryProvider.future);

      // 模拟缓慢加载以展示骨架屏
      // await Future.delayed(const Duration(seconds: 2));

      final result = await repo.searchFiles(
        path: path,
        showHidden: current.showHidden,
        sortBy: current.sortBy,
        sortOrder: current.sortOrder,
        search: current.searchText,
        containSub: _shouldContainSub(current),
        page: 1,
        pageSize: 50,
      );
      return current.copyWith(
        items: result.items ?? [],
        isLoading: false,
        page: 1,
        hasMore: (result.items?.length ?? 0) >= 50,
      );
    });

    if (_pendingPath != path) return;

    if (nextState.hasError) {
      state = AsyncData(previous);
      if (silent) return;
      final error = nextState.error;
      final message = switch (error) {
        AppNetworkException(:final message) => message,
        _ => ref.read(appLocalizationsProvider).files_refreshFailed,
      };
      showAppErrorToast(message);
      return;
    }

    state = nextState;
  }

  /// 返回上一级目录。
  Future<void> goUp() async {
    final current = state.valueOrNull;
    if (current == null || current.currentPath == '/') return;

    final parts = current.currentPath.split('/');
    parts.removeLast();
    final parentPath = parts.isEmpty || parts.join('/').isEmpty
        ? '/'
        : parts.join('/');
    await navigateTo(parentPath);
  }

  /// 切换显示/隐藏隐藏文件。
  Future<void> toggleShowHidden() async {
    final current = state.valueOrNull;
    if (current == null) return;

    state = AsyncData(current.copyWith(showHidden: !current.showHidden));
    await refresh();
  }

  /// 搜索文件。
  Future<void> search(String query, {bool? containSub}) async {
    final current = state.valueOrNull;
    if (current == null) return;

    final generation = ++_searchGeneration;
    final nextState = current.copyWith(
      searchText: query,
      containSub: containSub ?? current.containSub,
      isLoading: true,
      page: 1,
      hasMore: true,
      isLoadingMore: false,
    );

    state = AsyncData(nextState);

    try {
      final repo = await ref.read(fileRepositoryProvider.future);
      final result = await repo.searchFiles(
        path: current.currentPath,
        search: query,
        showHidden: current.showHidden,
        sortBy: current.sortBy,
        sortOrder: current.sortOrder,
        containSub: _shouldContainSub(nextState, query),
        page: 1,
        pageSize: 50,
      );

      if (generation != _searchGeneration ||
          state.valueOrNull?.currentPath != current.currentPath) {
        return;
      }

      state = AsyncData(
        nextState.copyWith(
          items: result.items ?? [],
          isLoading: false,
          page: 1,
          hasMore: (result.items?.length ?? 0) >= 50,
        ),
      );
    } catch (e) {
      if (generation != _searchGeneration) return;
      state = AsyncData(nextState.copyWith(isLoading: false));
      showAppErrorToast(ref.read(appLocalizationsProvider).files_searchFailed);
    }
  }

  /// 切换搜索是否包含子目录。空关键词时只保存开关状态，不触发递归请求。
  Future<void> toggleContainSubSearch() async {
    final current = state.valueOrNull;
    if (current == null) return;

    final nextContainSub = !current.containSub;
    if (current.searchText.trim().isEmpty) {
      state = AsyncData(current.copyWith(containSub: nextContainSub));
      return;
    }

    await search(current.searchText, containSub: nextContainSub);
  }

  /// 更新排序设置。
  Future<void> updateSort(String sortBy, String? sortOrder) async {
    final current = state.valueOrNull;
    if (current == null) return;

    state = AsyncData(
      current.copyWith(sortBy: sortBy, sortOrder: () => sortOrder),
    );
    await refresh();
  }

  void updateViewMode(FileViewMode viewMode) {
    final current = state.valueOrNull;
    if (current == null || current.viewMode == viewMode) return;

    state = AsyncData(current.copyWith(viewMode: viewMode));
    _saveViewMode(viewMode);
  }

  /// 获取回收站状态。
  Future<bool> getRecycleStatus() async {
    try {
      final repo = await ref.read(fileRepositoryProvider.future);
      return await repo.getRecycleStatus();
    } catch (_) {
      return false;
    }
  }

  /// 删除文件/目录。
  Future<bool> deleteFile(FileItemDto item, {bool forceDelete = false}) async {
    try {
      final repo = await ref.read(fileRepositoryProvider.future);
      await repo.deleteFile(
        path: item.path,
        isDir: item.isDir,
        forceDelete: forceDelete,
      );

      // 成功后从列表中移除该项并提示
      final current = state.valueOrNull;
      if (current != null) {
        final newItems = current.items
            .where((i) => i.path != item.path)
            .toList();
        state = AsyncData(current.copyWith(items: newItems));
      }

      showAppSuccessToast(
        ref.read(appLocalizationsProvider).files_deleteSuccess,
      );
      return true;
    } catch (e) {
      final message = switch (e) {
        AppNetworkException(:final message) => message,
        _ => ref.read(appLocalizationsProvider).files_deleteFailed,
      };
      showAppErrorToast(message);
      return false;
    }
  }

  /// 批量删除文件/目录。
  Future<void> deleteFiles(
    List<FileItemDto> items, {
    bool forceDelete = false,
  }) async {
    int successCount = 0;
    int failCount = 0;

    for (final item in items) {
      try {
        final repo = await ref.read(fileRepositoryProvider.future);
        await repo.deleteFile(
          path: item.path,
          isDir: item.isDir,
          forceDelete: forceDelete,
        );
        successCount++;

        // 从本地状态移除
        final current = state.valueOrNull;
        if (current != null) {
          final newItems = current.items
              .where((i) => i.path != item.path)
              .toList();
          final newSelected = Set<String>.from(current.selectedPaths)
            ..remove(item.path);
          state = AsyncData(
            current.copyWith(items: newItems, selectedPaths: newSelected),
          );
        }
      } catch (_) {
        failCount++;
      }
    }

    if (failCount == 0) {
      showAppSuccessToast(
        ref
            .read(appLocalizationsProvider)
            .files_batchDeleteSuccess(successCount),
      );
    } else {
      final l10n = ref.read(appLocalizationsProvider);
      showAppErrorToast(
        l10n.files_batchDeletePartialTitle,
        description: l10n.files_batchDeletePartialDescription(
          successCount,
          failCount,
        ),
      );
    }

    // 如果选择已空，退出多选模式
    final current = state.valueOrNull;
    if (current != null && current.selectedPaths.isEmpty) {
      state = AsyncData(current.copyWith(isSelectionMode: false));
    }
  }

  /// 创建新文件夹
  Future<void> createFolder(
    String path, {
    int? mode,
    bool isSymlink = true,
  }) async {
    final repo = await ref.read(fileRepositoryProvider.future);
    await repo.createFileOrDir(
      path: path,
      isDir: true,
      mode: mode,
      isSymlink: isSymlink,
    );
    await refresh();
  }

  /// 创建新文件
  Future<void> createFile(
    String path, {
    int? mode,
    String? linkPath,
    bool isLink = false,
    bool isSymlink = true,
    String content = '',
    bool sub = false,
  }) async {
    final repo = await ref.read(fileRepositoryProvider.future);
    await repo.createFileOrDir(
      path: path,
      isDir: false,
      mode: mode,
      linkPath: linkPath,
      isLink: isLink,
      isSymlink: isSymlink,
      content: content,
      sub: sub,
    );
    await refresh();
  }

  /// 切换收藏状态
  Future<void> toggleFavorite(FileItemDto item) async {
    try {
      final repo = await ref.read(fileRepositoryProvider.future);
      if (item.favoriteID == 0) {
        // 添加收藏
        final id = await repo.favoriteFile(item.path);
        // 更新本地状态
        final current = state.valueOrNull;
        if (current != null) {
          final newItems = current.items.map((i) {
            if (i.path == item.path) {
              return i.copyWith(favoriteID: id);
            }
            return i;
          }).toList();
          state = AsyncData(current.copyWith(items: newItems));
        }
        showAppSuccessToast(
          ref.read(appLocalizationsProvider).files_favoriteAdded,
        );
      } else {
        // 移除收藏
        await repo.deleteFavorite(item.favoriteID);
        // 更新本地状态
        final current = state.valueOrNull;
        if (current != null) {
          final newItems = current.items.map((i) {
            if (i.path == item.path) {
              return i.copyWith(favoriteID: 0);
            }
            return i;
          }).toList();
          state = AsyncData(current.copyWith(items: newItems));
        }
        showAppSuccessToast(
          ref.read(appLocalizationsProvider).files_favoriteRemoved,
        );
      }
    } catch (e) {
      showAppErrorToast(
        ref.read(appLocalizationsProvider).files_favoriteFailed,
      );
    }
  }

  /// 切换多选模式
  void toggleSelectionMode() {
    final current = state.valueOrNull;
    if (current == null) return;
    state = AsyncData(
      current.copyWith(
        isSelectionMode: !current.isSelectionMode,
        selectedPaths: {}, // 切换模式时清空选择
      ),
    );
  }

  /// 切换单个项目的选中状态
  void toggleItemSelection(String path) {
    final current = state.valueOrNull;
    if (current == null) return;

    final newSelected = Set<String>.from(current.selectedPaths);
    if (newSelected.contains(path)) {
      newSelected.remove(path);
    } else {
      newSelected.add(path);
    }

    state = AsyncData(current.copyWith(selectedPaths: newSelected));
  }

  /// 全选当前页
  void selectAll() {
    final current = state.valueOrNull;
    if (current == null) return;
    state = AsyncData(
      current.copyWith(selectedPaths: current.items.map((i) => i.path).toSet()),
    );
  }

  /// 取消所有选择
  void clearSelection() {
    final current = state.valueOrNull;
    if (current == null) return;
    state = AsyncData(current.copyWith(selectedPaths: {}));
  }

  /// 加载更多数据。
  Future<void> loadMore() async {
    final current = state.valueOrNull;
    if (current == null ||
        current.isLoading ||
        current.isLoadingMore ||
        !current.hasMore) {
      return;
    }

    state = AsyncData(current.copyWith(isLoadingMore: true));

    try {
      final repo = await ref.read(fileRepositoryProvider.future);
      final nextPage = current.page + 1;

      final result = await repo.searchFiles(
        path: current.currentPath,
        showHidden: current.showHidden,
        sortBy: current.sortBy,
        sortOrder: current.sortOrder,
        search: current.searchText,
        containSub: _shouldContainSub(current),
        page: nextPage,
        pageSize: current.pageSize,
      );

      final newItems = result.items ?? [];
      final hasMore = newItems.length >= current.pageSize;

      if (state.valueOrNull?.currentPath != current.currentPath) return;

      state = AsyncData(
        current.copyWith(
          items: [...current.items, ...newItems],
          isLoadingMore: false,
          page: nextPage,
          hasMore: hasMore,
        ),
      );
    } catch (e) {
      state = AsyncData(current.copyWith(isLoadingMore: false));
      showAppErrorToast(
        ref.read(appLocalizationsProvider).files_loadMoreFailed,
      );
    }
  }

  /// 保存当前路径到本地存储
  void _savePath(String path) {
    final serverId = ref.read(activeServerIdProvider);
    ref.read(storageServiceProvider).setString('last_path_$serverId', path);
  }

  /// 保存视图模式到本地存储
  void _saveViewMode(FileViewMode viewMode) {
    final serverId = ref.read(activeServerIdProvider);
    ref
        .read(storageServiceProvider)
        .setString('file_view_mode_$serverId', viewMode.name);
  }

  /// 更新文件/目录权限。
  Future<void> updatePermissions({
    required List<String> paths,
    required int mode,
    required String user,
    required String group,
    bool sub = true,
  }) async {
    try {
      final repo = await ref.read(fileRepositoryProvider.future);
      await repo.updatePermissions(
        paths: paths,
        mode: mode,
        user: user,
        group: group,
        sub: sub,
      );

      // 成功后重新刷新当前列表以同步最新权限
      await refresh();
    } catch (e) {
      rethrow;
    }
  }

  /// 压缩文件
  Future<void> compressFiles({
    required List<String> files,
    required String type,
    required String dst,
    required String name,
    bool replace = false,
    String? secret,
  }) async {
    try {
      final repo = await ref.read(fileRepositoryProvider.future);
      await repo.compressFiles(
        files: files,
        type: type,
        dst: dst,
        name: name,
        replace: replace,
        secret: secret,
      );
      await refresh();
    } catch (e) {
      rethrow;
    }
  }

  /// 解压文件
  Future<void> decompressFile({
    required String path,
    required String type,
    required String dst,
    String? secret,
  }) async {
    try {
      final repo = await ref.read(fileRepositoryProvider.future);
      await repo.decompressFile(
        path: path,
        type: type,
        dst: dst,
        secret: secret,
      );
      await refresh();
    } catch (e) {
      rethrow;
    }
  }

  /// 检查文件/目录是否存在
  Future<bool> checkFileExists(String path) async {
    final repo = await ref.read(fileRepositoryProvider.future);
    return await repo.checkFileExists(path);
  }

  /// 批量检查文件/目录是否存在
  Future<List<FileItemDto>> batchCheckFilesExists(List<String> paths) async {
    final repo = await ref.read(fileRepositoryProvider.future);
    return await repo.batchCheckFilesExists(paths);
  }

  /// 移动或复制文件/目录
  Future<void> moveCopyFiles({
    required List<String> oldPaths,
    required String newPath,
    required String type,
    String name = '',
    bool cover = false,
    List<String> coverPaths = const [],
  }) async {
    try {
      final repo = await ref.read(fileRepositoryProvider.future);
      await repo.moveCopyFiles(
        oldPaths: oldPaths,
        newPath: newPath,
        type: type,
        name: name,
        cover: cover,
        coverPaths: coverPaths,
      );
      await refresh();
      final current = state.valueOrNull;
      if (current != null &&
          (current.isSelectionMode || current.selectedPaths.isNotEmpty)) {
        state = AsyncData(
          current.copyWith(isSelectionMode: false, selectedPaths: {}),
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  /// 创建或更新文件分享
  Future<FileShareDto> createFileShare({
    required String path,
    required int expireMinutes,
    String? password,
  }) async {
    final repo = await ref.read(fileRepositoryProvider.future);
    final result = await repo.createFileShare(
      path: path,
      expireMinutes: expireMinutes,
      password: password,
    );
    // 更新本地状态中对应文件的 shareCode
    final current = state.valueOrNull;
    if (current != null) {
      final newItems = current.items.map((i) {
        if (i.path == path) {
          return i.copyWith(shareCode: result.code);
        }
        return i;
      }).toList();
      state = AsyncData(current.copyWith(items: newItems));
    }
    return result;
  }

  /// 取消文件分享
  Future<void> deleteFileShare(String path) async {
    final repo = await ref.read(fileRepositoryProvider.future);
    await repo.deleteFileShare(path);
    // 更新本地状态中对应文件的 shareCode
    final current = state.valueOrNull;
    if (current != null) {
      final newItems = current.items.map((i) {
        if (i.path == path) {
          return i.copyWith(shareCode: '');
        }
        return i;
      }).toList();
      state = AsyncData(current.copyWith(items: newItems));
    }
  }

  /// 开始重命名
  void startRename(String path) {
    final current = state.valueOrNull;
    if (current == null) return;
    state = AsyncData(current.copyWith(editingPath: () => path));
  }

  /// 取消重命名
  void cancelRename() {
    final current = state.valueOrNull;
    if (current == null) return;
    state = AsyncData(current.copyWith(editingPath: () => null));
  }

  /// 重命名文件/目录
  Future<void> renameFile(FileItemDto item, String newName) async {
    final current = state.valueOrNull;
    if (current == null) return;

    final oldPath = item.path;
    final parentPath = oldPath.substring(0, oldPath.lastIndexOf('/'));
    final newPath = parentPath.isEmpty ? "/$newName" : "$parentPath/$newName";

    try {
      final repo = await ref.read(fileRepositoryProvider.future);
      await repo.renameFile(oldPath: oldPath, newPath: newPath);

      // 成功后更新本地列表
      final newItems = current.items.map((i) {
        if (i.path == oldPath) {
          return i.copyWith(name: newName, path: newPath);
        }
        return i;
      }).toList();

      state = AsyncData(current.copyWith(items: newItems));
      showAppSuccessToast(
        ref.read(appLocalizationsProvider).files_renameSuccess,
      );
      // 刷新列表以获取最新信息
      await refresh();
    } catch (e) {
      final message = switch (e) {
        AppNetworkException(:final message) => message,
        _ => ref.read(appLocalizationsProvider).files_renameFailed,
      };
      showAppErrorToast(message);
      rethrow;
    }
  }

  /// 获取文件分享详情
  Future<FileShareDto?> getFileShareDetail(String path) async {
    final repo = await ref.read(fileRepositoryProvider.future);
    return await repo.getFileShareDetail(path);
  }
}
