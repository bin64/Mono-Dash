// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get app_title => 'Mono Dash';

  @override
  String get common_ok => '好';

  @override
  String get common_cancel => '取消';

  @override
  String get common_close => '关闭';

  @override
  String get common_done => '完成';

  @override
  String get common_delete => '删除';

  @override
  String get common_refresh => '刷新';

  @override
  String get common_loading => '加载中...';

  @override
  String get common_systemDefault => '跟随系统';

  @override
  String get common_confirm => '确认';

  @override
  String get common_save => '保存';

  @override
  String get common_saved => '保存成功';

  @override
  String get common_share => '分享';

  @override
  String get common_create => '创建';

  @override
  String get common_edit => '编辑';

  @override
  String get common_view => '查看';

  @override
  String get common_update => '更新';

  @override
  String get common_use => '使用';

  @override
  String get common_retry => '重试';

  @override
  String get common_back => '返回';

  @override
  String get common_menu => '菜单';

  @override
  String get common_select => '选择';

  @override
  String get common_search => '搜索';

  @override
  String common_selectCount(int count) {
    return '选择($count)';
  }

  @override
  String get common_count => '数量';

  @override
  String get common_description => '说明';

  @override
  String get common_yes => '是';

  @override
  String get common_no => '否';

  @override
  String get common_unknown => '未知';

  @override
  String get format_relativeUnknown => '未知';

  @override
  String get format_relativeSoon => '即将';

  @override
  String get format_relativeJustNow => '刚刚';

  @override
  String format_relativeMinutesLater(int n) {
    return '$n 分钟后';
  }

  @override
  String format_relativeHoursLater(int n) {
    return '$n 小时后';
  }

  @override
  String format_relativeDaysLater(int n) {
    return '$n 天后';
  }

  @override
  String format_relativeMinutesAgo(int n) {
    return '$n 分钟前';
  }

  @override
  String format_relativeHoursAgo(int n) {
    return '$n 小时前';
  }

  @override
  String format_relativeDaysAgo(int n) {
    return '$n 天前';
  }

  @override
  String format_relativeSecondsAgo(int n) {
    return '$n 秒前';
  }

  @override
  String format_relativeMonthsAgo(int n) {
    return '$n 个月前';
  }

  @override
  String format_relativeYearsAgo(int n) {
    return '$n 年前';
  }

  @override
  String get format_timeAgoPrefixBackup => '备份于 ';

  @override
  String get common_gotIt => '知道了';

  @override
  String get common_noSelection => '未选择';

  @override
  String get common_noOptions => '暂无可选项';

  @override
  String common_selectedCount(int count) {
    return '已选择 $count 项';
  }

  @override
  String get common_copiedToClipboard => '已复制到剪贴板';

  @override
  String get common_errorInfoCopied => '已复制错误信息';

  @override
  String get common_networkRequestFailed => '网络请求失败，请稍后重试。';

  @override
  String get common_requestFailed => '请求失败，请稍后重试。';

  @override
  String get common_serverNotFound => '服务器不存在';

  @override
  String common_statusCode(int statusCode) {
    return '状态码：$statusCode';
  }

  @override
  String get common_todoDescription => '功能逻辑后续接入';

  @override
  String get common_continueEditing => '继续编辑';

  @override
  String get common_discard => '放弃';

  @override
  String get common_discardChangesTitle => '放弃修改？';

  @override
  String get common_unsavedChangesContent => '你的改动尚未保存，确定要离开吗？';

  @override
  String get common_loadingFailed => '加载失败';

  @override
  String get common_saveFailedCopyDetails => '保存失败（点击复制详情）';

  @override
  String get common_noBackups => '暂无备份';

  @override
  String common_reclaimable(String size) {
    return '可释放 $size';
  }

  @override
  String get filePicker_selectPath => '选择路径';

  @override
  String get filePicker_directoryLoadFailed => '目录加载失败';

  @override
  String get filePicker_directoryEmpty => '目录为空';

  @override
  String get filePicker_folder => '文件夹';

  @override
  String get filePicker_file => '文件';

  @override
  String get taskLog_emptyTitle => '暂无日志';

  @override
  String get taskLog_fileNotFoundTitle => '日志文件不存在';

  @override
  String get taskLog_noRecordTitle => '没有关于该任务的记录';

  @override
  String get taskLog_noRecordDescription => '该任务可能尚未生成日志或日志文件已被清理';

  @override
  String get taskLog_readFailedTitle => '读取任务日志失败';

  @override
  String get taskLog_noExportableLogs => '没有可导出的日志';

  @override
  String get taskLog_sharePluginMissing => '分享插件未注册';

  @override
  String get taskLog_sharePluginMissingDescription =>
      '请完全停止 App 后重新运行。新增原生插件后，热重载/热重启不会注册分享通道。';

  @override
  String get taskLog_exportFailed => '导出失败';

  @override
  String get terminal_connectTitle => '连接终端';

  @override
  String terminal_containerSubtitle(String containerId) {
    return '容器: $containerId';
  }

  @override
  String get terminal_connectAction => '连接';

  @override
  String get terminal_execUser => '执行用户';

  @override
  String get terminal_execUserPlaceholder => '可选，默认为 root';

  @override
  String get terminal_execCommand => '执行命令';

  @override
  String get terminal_custom => '自定义';

  @override
  String get terminal_execCommandPlaceholder => '请输入执行命令';

  @override
  String get terminal_serverInfoFailed => '获取服务器信息失败';

  @override
  String terminal_connectionErrorWithDetail(String error) {
    return '连接发生错误: $error';
  }

  @override
  String get terminal_connectionError => '连接错误';

  @override
  String get terminal_disconnectedOutput => '连接已断开';

  @override
  String get terminal_disconnected => '已断开';

  @override
  String terminal_initializationFailed(String error) {
    return '初始化失败: $error';
  }

  @override
  String get terminal_hostTitle => '终端 - 主机';

  @override
  String terminal_databaseTitle(String name) {
    return '终端 - $name';
  }

  @override
  String terminal_containerTitle(String containerId) {
    return '终端 - $containerId';
  }

  @override
  String get terminal_connecting => '连接中';

  @override
  String get terminal_copySelection => '复制选中';

  @override
  String get terminal_pasteToTerminal => '粘贴到终端';

  @override
  String get nav_servers => '服务器';

  @override
  String get nav_settings => '设置';

  @override
  String get nav_overview => '概览';

  @override
  String get nav_websites => '网站';

  @override
  String get nav_files => '文件';

  @override
  String get nav_containers => '容器';

  @override
  String get nav_more => '更多';

  @override
  String get nav_processes => '进程';

  @override
  String get nav_network => '网络';

  @override
  String get nav_portRules => '端口规则';

  @override
  String get nav_ipRules => 'IP 规则';

  @override
  String get nav_installed => '已安装';

  @override
  String get nav_all => '全部';

  @override
  String get nav_updates => '可升级';

  @override
  String get nav_list => '列表';

  @override
  String get nav_status => '状态';

  @override
  String get nav_terminal => '终端';

  @override
  String get nav_configuration => '配置';

  @override
  String get nav_sessions => '会话';

  @override
  String get nav_logs => '日志';

  @override
  String get serverDetail_title => '面板详情';

  @override
  String get dashboard_loadFailed => '加载概览失败';

  @override
  String get dashboard_serverFallback => 'Server';

  @override
  String get dashboard_hostDetailsTitle => '主机详情';

  @override
  String get dashboard_system => '系统';

  @override
  String get dashboard_kernel => '内核';

  @override
  String get dashboard_cpuCores => '核心';

  @override
  String dashboard_cpuCoreSummary(int physical, int logical) {
    return '$physical 物理 / $logical 逻辑';
  }

  @override
  String get dashboard_uptime => '运行时间';

  @override
  String get dashboard_load => '负载';

  @override
  String get dashboard_processes => '进程';

  @override
  String get dashboard_arch => '架构';

  @override
  String get dashboard_resourceUsageTitle => '资源使用';

  @override
  String get dashboard_memory => '内存';

  @override
  String get dashboard_disk => '磁盘';

  @override
  String get dashboard_networkTrafficTitle => '网络流量';

  @override
  String get dashboard_trafficUp => '上行流量';

  @override
  String get dashboard_trafficDown => '下行流量';

  @override
  String get dashboard_realtimeSpeedTitle => '实时速率';

  @override
  String get dashboard_download => '下载';

  @override
  String get dashboard_upload => '上传';

  @override
  String get dashboard_diskPartitionsTitle => '磁盘分区';

  @override
  String get dashboard_diskIoTitle => '磁盘 IO';

  @override
  String get dashboard_read => '读取';

  @override
  String get dashboard_write => '写入';

  @override
  String get dashboard_latency => '延迟';

  @override
  String get dashboard_loading => '加载中...';

  @override
  String dashboard_utilization(String percent) {
    return '利用率 $percent';
  }

  @override
  String dashboard_vram(String used, String total) {
    return '显存 $used/$total';
  }

  @override
  String dashboard_temperature(String temperature) {
    return '温度 $temperature°C';
  }

  @override
  String dashboard_uptimeMinutes(int minutes) {
    return '$minutes分钟';
  }

  @override
  String dashboard_uptimeHoursMinutes(int hours, int minutes) {
    return '$hours小时 $minutes分钟';
  }

  @override
  String dashboard_uptimeDaysHours(int days, int hours) {
    return '$days天 $hours小时';
  }

  @override
  String get files_title => '文件';

  @override
  String get files_searchPlaceholder => '搜索文件...';

  @override
  String get files_directoryEmptyTitle => '目录为空';

  @override
  String get files_noSearchResultsTitle => '未找到匹配文件';

  @override
  String get files_directoryEmptySubtitle => '这个文件夹里什么都没有';

  @override
  String get files_noSearchResultsSubtitle => '尝试换个关键词搜索吧';

  @override
  String get files_loadFailed => '加载文件失败';

  @override
  String get files_loadMoreFailed => '加载更多失败';

  @override
  String get files_loadDirectoryFailed => '加载目录失败';

  @override
  String get files_refreshFailed => '刷新失败';

  @override
  String get files_searchFailed => '搜索失败';

  @override
  String get files_displayOptionsTitle => '显示选项';

  @override
  String get files_sortByTitle => '排序方式';

  @override
  String get files_sortName => '名称';

  @override
  String get files_sortSize => '大小';

  @override
  String get files_sortModifiedTime => '修改时间';

  @override
  String get files_sortOrderTitle => '排序顺序';

  @override
  String get files_sortAscending => '升序';

  @override
  String get files_sortDescending => '降序';

  @override
  String get files_rootDirectory => '根目录';

  @override
  String files_selectedCount(int count) {
    return '已选择 $count 个项目';
  }

  @override
  String get files_chooseAction => '请选择下方操作';

  @override
  String get files_expandActionMenu => '点击展开操作菜单';

  @override
  String get files_selectAll => '全选';

  @override
  String get files_clearSelection => '取消全选';

  @override
  String get files_actionMove => '移动';

  @override
  String get files_actionCopy => '复制';

  @override
  String get files_actionDownload => '下载';

  @override
  String get files_actionBatchDownload => '批量下载';

  @override
  String get files_actionPackageDownload => '打包下载';

  @override
  String get files_actionPermissions => '权限';

  @override
  String get files_actionCompress => '压缩';

  @override
  String get files_actionDelete => '删除';

  @override
  String get files_actionOpen => '打开';

  @override
  String get files_actionPreviewImage => '预览图片';

  @override
  String get files_actionEdit => '编辑';

  @override
  String get files_actionRename => '重命名';

  @override
  String get files_actionCopyPath => '复制路径';

  @override
  String get files_pathCopied => '已复制路径';

  @override
  String get files_actionOrganize => '管理与整理';

  @override
  String get files_actionDecompress => '解压';

  @override
  String get files_actionAddFavorite => '添加收藏';

  @override
  String get files_actionRemoveFavorite => '移除收藏';

  @override
  String get files_actionManageShare => '管理分享';

  @override
  String get files_actionCreateShare => '创建分享链接';

  @override
  String get files_actionCancelShare => '取消分享';

  @override
  String get files_shareCancelled => '已取消分享';

  @override
  String files_cancelShareFailed(String error) {
    return '取消分享失败: $error';
  }

  @override
  String get files_actionDownloadToLocal => '下载到本地';

  @override
  String get files_actionViewDetails => '查看详情';

  @override
  String get files_copyToTitle => '复制到';

  @override
  String get files_moveToTitle => '移动到';

  @override
  String get files_moveCopySamePathError => '目标路径不能与当前路径相同';

  @override
  String get files_moveCopyCheckConflictFailed => '检查冲突失败';

  @override
  String get files_copySuccess => '复制成功';

  @override
  String get files_moveSuccess => '移动成功';

  @override
  String get files_operationFailed => '操作失败';

  @override
  String get files_moveCopySkippedAll => '已跳过所有重复项';

  @override
  String get files_moveCopyConflictTitle => '同名项目冲突';

  @override
  String get files_moveCopyConflictDescription => '选择的文件/文件夹存在同名，请选择如何继续。';

  @override
  String get files_moveCopyOverwrite => '直接覆盖';

  @override
  String get files_moveCopySkipAll => '跳过全部';

  @override
  String get files_moveCopyOverwriteAll => '全部覆盖';

  @override
  String files_deleteBatchTitle(int count) {
    return '确定删除选中的 $count 个项目？';
  }

  @override
  String get files_deleteSingleTitle => '确定删除该项目？';

  @override
  String get files_deleteToRecycleBinHint => '文件将被移动到服务器回收站，你可以稍后在回收站中找回。';

  @override
  String get files_deletePermanentHint => '此操作不可撤销，文件将被永久从服务器中移除。';

  @override
  String get files_deleteFailed => '删除失败';

  @override
  String get files_deleteSuccess => '删除成功';

  @override
  String files_batchDeleteSuccess(int count) {
    return '批量删除成功 ($count)';
  }

  @override
  String get files_batchDeletePartialTitle => '部分项删除失败';

  @override
  String files_batchDeletePartialDescription(int successCount, int failCount) {
    return '成功 $successCount, 失败 $failCount';
  }

  @override
  String get files_favoriteAdded => '已添加收藏';

  @override
  String get files_favoriteRemoved => '已移除收藏';

  @override
  String get files_favoriteFailed => '收藏操作失败';

  @override
  String get files_renameSuccess => '重命名成功';

  @override
  String get files_renameFailed => '重命名失败';

  @override
  String get files_editorSaveSuccess => '保存成功';

  @override
  String get files_editorSaveFailed => '保存失败';

  @override
  String files_editorLoadFailed(String error) {
    return '加载失败: $error';
  }

  @override
  String get files_editorFindReplace => '查找替换';

  @override
  String get files_editorCloseSearch => '关闭搜索';

  @override
  String get files_editorEnableEditing => '启用编辑';

  @override
  String get files_editorReadOnlyMode => '只读模式';

  @override
  String get files_editorFindPlaceholder => '查找';

  @override
  String get files_editorPreviousMatch => '上一个';

  @override
  String get files_editorNextMatch => '下一个';

  @override
  String get files_editorReplaceWithPlaceholder => '替换为';

  @override
  String get files_editorReplace => '替换';

  @override
  String get files_editorReplaceAll => '全部';

  @override
  String get files_deleteForceTitle => '直接永久删除';

  @override
  String get files_deleteForceSubtitle => '开启后将跳过回收站，无法找回';

  @override
  String get files_detailsTitle => '文件属性';

  @override
  String get files_detailsCalculateSizeFailed => '计算大小失败';

  @override
  String get files_detailsBasicInfo => '基础信息';

  @override
  String get files_detailsPath => '路径';

  @override
  String get files_detailsLinkTarget => '链接目标';

  @override
  String get files_detailsType => '类型';

  @override
  String get files_detailsDirectoryType => '目录';

  @override
  String get files_detailsFileType => '文件';

  @override
  String get files_detailsSize => '大小';

  @override
  String get files_detailsCalculate => '计算';

  @override
  String get files_detailsTapToCalculate => '点击计算';

  @override
  String get files_detailsModifiedTime => '修改时间';

  @override
  String get files_detailsShareCode => '分享代码';

  @override
  String get files_detailsPermissionsOwner => '权限与所有者';

  @override
  String get files_detailsPermissionMode => '权限模式';

  @override
  String get files_detailsOwner => '所有者';

  @override
  String get files_detailsGroup => '用户组';

  @override
  String get files_detailsLoadFailed => '加载属性失败';

  @override
  String get files_createFileTitle => '新建文件';

  @override
  String get files_createDirectoryTitle => '新建文件夹';

  @override
  String get files_createNameRequired => '名称不能为空';

  @override
  String get files_permissionModeInvalid => '权限位格式不正确';

  @override
  String get files_permissionLoadUserGroupsFailed => '加载用户组失败';

  @override
  String get files_permissionUpdateSuccess => '权限修改成功';

  @override
  String get files_permissionSubmitFailed => '提交失败';

  @override
  String get files_permissionBatchTitle => '批量修改权限';

  @override
  String get files_permissionSingleTitle => '修改权限';

  @override
  String get files_permissionModeValue => '权限数值';

  @override
  String get files_permissionModePlaceholder => '如 0644';

  @override
  String get files_permissionApplyToSubfiles => '同时修改子文件属性';

  @override
  String get files_createSuccess => '创建成功';

  @override
  String get files_createFailed => '创建失败';

  @override
  String get files_nameLabel => '名称';

  @override
  String get files_createFileNamePlaceholder => '请输入文件名';

  @override
  String get files_createDirectoryNamePlaceholder => '请输入文件夹名';

  @override
  String get files_permissionSettings => '权限设置';

  @override
  String get files_permissionRead => '读取';

  @override
  String get files_permissionWrite => '写入';

  @override
  String get files_permissionExecute => '执行';

  @override
  String get files_permissionOwner => '所有者';

  @override
  String get files_permissionGroup => '用户组';

  @override
  String get files_permissionPublic => '公共';

  @override
  String get files_linkSettings => '链接设置';

  @override
  String get files_linkType => '链接类型';

  @override
  String get files_softLink => '软链接';

  @override
  String get files_hardLink => '硬链接';

  @override
  String get files_linkTargetPlaceholder => '请选择目标路径';

  @override
  String get files_selectLinkTarget => '选择链接目标';

  @override
  String get files_fileName => '文件名';

  @override
  String get files_compressTitle => '压缩文件';

  @override
  String get files_compressAction => '压缩';

  @override
  String get files_compressFormat => '压缩格式';

  @override
  String get files_compressPath => '压缩路径';

  @override
  String get files_compressNameRequired => '请输入文件名';

  @override
  String get files_compressPathRequired => '请输入压缩路径';

  @override
  String get files_compressStarted => '压缩任务已启动';

  @override
  String get files_compressFailed => '压缩失败';

  @override
  String get files_overwriteExistingFile => '覆盖已存在的文件';

  @override
  String get files_fileNamePlaceholder => '请输入文件名';

  @override
  String get files_targetDirectoryPlaceholder => '请输入目标目录';

  @override
  String get files_selectCompressPath => '选择压缩路径';

  @override
  String get files_decompressTitle => '解压文件';

  @override
  String get files_decompressAction => '解压';

  @override
  String get files_decompressPath => '解压路径';

  @override
  String get files_decompressPathRequired => '请输入解压路径';

  @override
  String get files_decompressStarted => '解压任务已启动';

  @override
  String get files_decompressFailed => '解压失败';

  @override
  String get files_decompressHint => '提示：较大的压缩包解压可能需要一些时间，解压过程会在后台进行。';

  @override
  String get files_decompressTargetPlaceholder => '请输入解压目标目录';

  @override
  String get files_selectDecompressPath => '选择解压路径';

  @override
  String get files_imageLoadFailed => '无法加载图片';

  @override
  String get files_imageNoData => '无数据';

  @override
  String get files_shareUnsupportedTitle => '版本不支持';

  @override
  String get files_shareUnsupportedContent => '当前版本的 1Panel 不支持文件分享，请更新面板后再使用。';

  @override
  String get files_shareFailedTitle => '分享失败';

  @override
  String get files_shareConfigErrorTitle => '配置错误';

  @override
  String get files_shareConfigErrorContent => '无法获取服务器地址，请检查连接状态。';

  @override
  String get files_shareGenericErrorTitle => '发生错误';

  @override
  String files_shareClipboardLink(String link) {
    return '分享链接：$link';
  }

  @override
  String files_shareClipboardLinkPassword(String link, String password) {
    return '分享链接：$link，访问密码：$password';
  }

  @override
  String get files_shareTitle => '分享文件';

  @override
  String get files_shareExpireLabel => '有效期';

  @override
  String get files_sharePasswordOptional => '访问密码 (可选)';

  @override
  String get files_sharePasswordPlaceholder => '4-256 字符，不设请留空';

  @override
  String files_shareFilePath(String path) {
    return '文件路径: $path';
  }

  @override
  String get files_shareReady => '分享链接已就绪';

  @override
  String get files_shareDetailsTitle => '分享详情';

  @override
  String get files_shareFullPath => '完整路径';

  @override
  String get files_shareCode => '分享码';

  @override
  String get files_shareAccessPassword => '访问密码';

  @override
  String get files_shareCopyLink => '复制分享链接';

  @override
  String get files_shareUpdateSettings => '更新分享设置';

  @override
  String get files_shareExpirePermanent => '永久有效';

  @override
  String files_shareExpireMinutes(int minutes) {
    return '$minutes 分钟';
  }

  @override
  String files_shareExpireHours(int hours) {
    return '$hours 小时';
  }

  @override
  String files_shareExpireDays(int days) {
    return '$days 天';
  }

  @override
  String get files_shareListUnsupportedContent =>
      '当前版本的 1Panel 不支持管理分享列表，请更新面板后再使用。';

  @override
  String get files_shareListEmpty => '暂无有效的分享';

  @override
  String files_shareExpireUntil(String date) {
    return '有效期至 $date';
  }

  @override
  String get files_shareCancelConfirmHint => '点击右侧图标确认取消分享';

  @override
  String get files_shareLinkCopied => '分享链接已复制';

  @override
  String get files_recycleUnsupportedContent =>
      '当前版本的 1Panel 不支持文件回收站，请更新面板后再使用。';

  @override
  String get files_recycleTitle => '回收站管理';

  @override
  String get files_recycleEnabled => '回收站已开启';

  @override
  String get files_recycleDisabled => '回收站未开启';

  @override
  String get files_recycleClearTitle => '清空回收站';

  @override
  String get files_recycleClearContent => '确定要永久删除回收站中的所有项目吗？此操作不可撤销。';

  @override
  String get files_recycleClearAction => '确定清空';

  @override
  String get files_recycleEmpty => '回收站为空';

  @override
  String get files_recycleConfirmRestore => '再次点击确认还原';

  @override
  String get files_recycleConfirmDelete => '再次点击永久删除';

  @override
  String get files_recycleSelectAction => '请选择操作';

  @override
  String files_recycleRestored(String name) {
    return '已还原: $name';
  }

  @override
  String get files_recycleRestoreFailed => '还原失败';

  @override
  String files_recycleDeleted(String name) {
    return '已永久删除: $name';
  }

  @override
  String get files_recycleClearStarted => '回收站已清空（后台进行中）';

  @override
  String get files_recycleClearFailed => '清空失败';

  @override
  String get files_recycleSettingFailed => '设置失败';

  @override
  String get files_shareCancelSuccess => '取消分享成功';

  @override
  String get files_shareCancelFailed => '取消分享失败';

  @override
  String get download_taskMissing => '任务不存在';

  @override
  String get download_batchTitle => '批量下载';

  @override
  String get download_fileTitle => '下载文件';

  @override
  String download_taskCount(int count) {
    return '共 $count 个任务';
  }

  @override
  String get download_completedHint => '下载已完成，可进入下载管理查看';

  @override
  String get download_finishedHint => '任务已结束';

  @override
  String get download_backgroundHint => '关闭此面板后下载仍会在后台继续';

  @override
  String get download_managerEntryTitle => '管理下载任务';

  @override
  String get download_managerEntrySubtitle => '查看进度、分享与删除已下载文件';

  @override
  String download_pendingMetadata(String ext, String size) {
    return '等待开始  •  $ext  •  $size';
  }

  @override
  String download_packagingMetadata(String ext) {
    return '服务器打包中...  •  $ext';
  }

  @override
  String get download_failed => '下载失败';

  @override
  String get download_packagingTimeoutFailed => '服务器打包超时或失败';

  @override
  String get download_interrupted => '错误';

  @override
  String get download_cancelled => '已取消';

  @override
  String download_completedMetadata(String ext, String size) {
    return '已下载到本地  •  $ext  •  $size';
  }

  @override
  String get download_managerTitle => '下载管理';

  @override
  String get download_actionsMenu => '操作';

  @override
  String get download_clearCompletedRecords => '清除已完成记录';

  @override
  String get download_deleteAllFiles => '删除所有文件';

  @override
  String get download_activeSection => '下载中';

  @override
  String get download_completedSection => '已完成';

  @override
  String get download_emptyTasks => '暂无下载任务';

  @override
  String get download_deleteAllTitle => '删除所有下载';

  @override
  String get download_deleteAllContent =>
      '所有已下载的文件将从设备中删除，正在进行的任务将被取消。此操作不可恢复。';

  @override
  String get download_deleteAllAction => '全部删除';

  @override
  String get download_waiting => '等待中...';

  @override
  String get download_deleteTitle => '删除下载';

  @override
  String get download_deleteFileContent => '文件将从设备中删除';

  @override
  String get download_deleteRecordContent => '将移除此下载记录';

  @override
  String get remoteDownload_title => '远程下载';

  @override
  String get remoteDownload_subtitle => '由 1Panel 服务器后台异步下载';

  @override
  String get remoteDownload_startAction => '开始下载';

  @override
  String get remoteDownload_urlPlaceholder => '远程文件 URL (HTTP/HTTPS)';

  @override
  String get remoteDownload_namePlaceholder => '保存文件名 (必填)';

  @override
  String get remoteDownload_pathPlaceholder => '保存目录';

  @override
  String get remoteDownload_ignoreCertificateTitle => '忽略不可信证书';

  @override
  String get remoteDownload_ignoreCertificateSubtitle => '下载自签名证书或证书过期的站点时开启';

  @override
  String get remoteDownload_description =>
      '创建成功后，1Panel 将在后台异步处理下载。你可以在服务器的任务中心或下方的进度中心查看进度。';

  @override
  String get remoteDownload_createFailedTitle => '下载任务创建失败';

  @override
  String get remoteDownload_selectSaveDirectory => '选择保存目录';

  @override
  String get remoteDownload_progressCenterTitle => '下载进度中心';

  @override
  String get remoteDownload_emptyTitle => '暂无远程下载任务';

  @override
  String get remoteDownload_emptySubtitle => '当前没有正在进行的后台下载';

  @override
  String get remoteDownload_completedName => '已完成';

  @override
  String get remoteDownload_resolvingName => '正在解析...';

  @override
  String get upload_title => '上传文件';

  @override
  String upload_targetPath(String path) {
    return '上传至 $path';
  }

  @override
  String get upload_startAction => '开始上传';

  @override
  String get upload_overwriteHint => '如上传的文件存在同名文件，将自动进行覆盖';

  @override
  String get upload_fromAlbum => '从相册上传';

  @override
  String get upload_fromFiles => '从文件选择';

  @override
  String get upload_addFiles => '添加文件';

  @override
  String upload_uploadingProgress(String percent) {
    return '正在上传... ($percent%)';
  }

  @override
  String upload_partialFailedCount(int count) {
    return '部分上传失败 ($count 个错误)';
  }

  @override
  String get upload_allComplete => '全部上传完成';

  @override
  String get upload_emptyPending => '暂无待上传文件';

  @override
  String get upload_summaryCompleteTitle => '上传完成';

  @override
  String get upload_summaryPartialFailedTitle => '部分上传失败';

  @override
  String upload_summarySuccessCount(int count) {
    return '已成功上传 $count 个文件';
  }

  @override
  String upload_summaryMixedCount(int successCount, int failCount) {
    return '成功 $successCount 个，失败 $failCount 个';
  }

  @override
  String get upload_failed => '上传失败';

  @override
  String get upload_cancelled => '已取消';

  @override
  String get process_title => '进程管理';

  @override
  String get process_serverMissing => '服务器不存在';

  @override
  String get process_stopTitle => '停止进程';

  @override
  String process_stopContent(int pid) {
    return '确认停止 PID $pid？';
  }

  @override
  String get process_stopAction => '停止';

  @override
  String get process_stopRequested => '已发送停止请求';

  @override
  String get process_stopFailed => '停止失败';

  @override
  String get process_searchNamePlaceholder => '搜索进程名';

  @override
  String get process_searchNameOrPortPlaceholder => '搜索进程名或端口';

  @override
  String get process_connectionFailed => '连接失败';

  @override
  String get process_noResults => '无匹配结果';

  @override
  String get process_noData => '暂无数据';

  @override
  String get process_noResultsSubtitle => '尝试修改搜索关键词';

  @override
  String get process_waitingData => '等待数据加载';

  @override
  String get process_connecting => '正在连接进程服务';

  @override
  String get process_readingDetail => '正在读取进程详情';

  @override
  String get process_readFailed => '读取失败';

  @override
  String get process_basicInfo => '基本信息';

  @override
  String get process_user => '用户';

  @override
  String get process_status => '状态';

  @override
  String get process_startTime => '启动时间';

  @override
  String process_threads(int count) {
    return '$count 线程';
  }

  @override
  String get process_threadCount => '线程数';

  @override
  String process_connections(int count) {
    return '$count 连接';
  }

  @override
  String get process_connectionCount => '连接数';

  @override
  String get process_commandLine => '命令行';

  @override
  String get process_cpuDisk => 'CPU / 磁盘';

  @override
  String get process_memory => '内存';

  @override
  String get process_diskRead => '磁盘读取';

  @override
  String get process_diskWrite => '磁盘写入';

  @override
  String get process_memoryDetails => '内存详情';

  @override
  String get process_openFiles => '打开文件';

  @override
  String get process_networkConnections => '网络连接';

  @override
  String get process_environmentVariables => '环境变量';

  @override
  String get process_sort => '排序';

  @override
  String get process_sortCpu => 'CPU 使用率';

  @override
  String get process_sortMemory => '内存';

  @override
  String get process_sortConnections => '连接数';

  @override
  String get toolbox_title => '工具箱';

  @override
  String get toolbox_loadingStatus => '正在读取工具箱状态';

  @override
  String get toolbox_quickSettings => '快速设置';

  @override
  String get toolbox_hostname => '主机名';

  @override
  String get toolbox_systemUser => '系统用户';

  @override
  String get toolbox_timeZone => '时区';

  @override
  String get toolbox_localTime => '本地时间';

  @override
  String get toolbox_cacheClean => '缓存清理';

  @override
  String get toolbox_cleanSource => '来源';

  @override
  String get toolbox_cleanSourceValue => '1Panel 工具箱扫描接口';

  @override
  String get toolbox_cleanAction => '执行';

  @override
  String get toolbox_cleanActionValue => '扫描可清理项目，不直接删除';

  @override
  String get toolbox_scan => '扫描';

  @override
  String get toolbox_scanFailed => '扫描失败';

  @override
  String get toolbox_installed => '安装';

  @override
  String get toolbox_running => '运行';

  @override
  String get toolbox_enabled => '启用';

  @override
  String get toolbox_version => '版本';

  @override
  String get toolbox_port => '端口';

  @override
  String get toolbox_virusScan => '病毒扫描';

  @override
  String get toolbox_clamAvRunning => 'ClamAV 运行';

  @override
  String get toolbox_freshClamRunning => 'FreshClam 运行';

  @override
  String get toolbox_virusDatabase => '病毒库';

  @override
  String get toolbox_noCleanItems => '没有可清理项目';

  @override
  String get toolbox_cleanGroupSystem => '系统缓存';

  @override
  String get toolbox_cleanGroupBackup => '备份缓存';

  @override
  String get toolbox_cleanGroupUpload => '上传缓存';

  @override
  String get toolbox_cleanGroupDownload => '下载缓存';

  @override
  String get toolbox_cleanGroupSystemLog => '系统日志';

  @override
  String get toolbox_cleanGroupContainer => '容器缓存';

  @override
  String get disk_title => '磁盘管理';

  @override
  String get disk_loadingInfo => '正在读取磁盘信息';

  @override
  String get disk_overview => '磁盘总览';

  @override
  String disk_totalCapacity(String capacity) {
    return '总容量 $capacity';
  }

  @override
  String get disk_unpartitioned => '未分区磁盘';

  @override
  String get disk_unmountTitle => '卸载磁盘';

  @override
  String disk_unmountContent(String mountPoint) {
    return '确认卸载 $mountPoint？系统盘不会提供这个操作。';
  }

  @override
  String get disk_unmountAction => '卸载';

  @override
  String get disk_unmountRequested => '卸载请求已发送';

  @override
  String get disk_unmountFailed => '卸载失败';

  @override
  String get disk_mounted => '已挂载';

  @override
  String get disk_unmounted => '未挂载';

  @override
  String disk_size(String value) {
    return '容量 $value';
  }

  @override
  String disk_used(String value) {
    return '已用 $value';
  }

  @override
  String disk_available(String value) {
    return '可用 $value';
  }

  @override
  String disk_mountPoint(String value) {
    return '挂载 $value';
  }

  @override
  String disk_filesystem(String value) {
    return '文件系统 $value';
  }

  @override
  String purchases_serverLimitReached(int freeServerLimit, int serverCount) {
    return '免费版最多添加 $freeServerLimit 个面板，当前已有 $serverCount 个';
  }

  @override
  String get purchases_offlineUnlocked => '已使用本机购买凭证离线解锁';

  @override
  String get purchases_apiKeyMissing => '当前构建未配置 RevenueCat API Key';

  @override
  String get purchases_serviceUnavailableOfflineUnlocked =>
      '购买服务暂不可用，已使用本机购买凭证离线解锁';

  @override
  String get purchases_serviceUnavailableNetwork => '购买服务暂不可用，请允许 App 使用网络后重试';

  @override
  String get purchases_noPackageAvailable => 'RevenueCat 当前 Offering 中没有可购买套餐';

  @override
  String get purchases_packageLoadFailed => '购买套餐暂时无法加载，请稍后再试';

  @override
  String get purchases_serviceNotInitialized => '购买服务尚未初始化';

  @override
  String get log_hubTitle => '日志审计';

  @override
  String get log_panelLogs => '面板日志';

  @override
  String get log_operationLog => '操作日志';

  @override
  String get log_loginLog => '登录日志';

  @override
  String get log_systemLog => '系统日志';

  @override
  String get log_taskLog => '任务日志';

  @override
  String get log_sshLoginLog => 'SSH 登录日志';

  @override
  String get log_actions => '操作';

  @override
  String get log_clearLogs => '清空日志';

  @override
  String get log_searchOperationPlaceholder => '搜索操作日志...';

  @override
  String get log_searchIpPlaceholder => '搜索 IP 地址...';

  @override
  String get log_searchSshPlaceholder => '搜索地址、用户...';

  @override
  String get log_noTaskLogs => '暂无任务日志';

  @override
  String get log_noTaskLogsSubtitle => '后台任务执行记录会显示在这里';

  @override
  String get log_noOperationLogs => '暂无操作日志';

  @override
  String get log_noOperationLogsSubtitle => '操作日志会自动记录面板中的操作行为';

  @override
  String get log_noLoginLogs => '暂无登录日志';

  @override
  String get log_noLoginLogsSubtitle => '登录日志会自动记录面板的登录行为';

  @override
  String get log_noSshLoginLogs => '暂无 SSH 登录日志';

  @override
  String get log_noSshLoginLogsSubtitle => 'SSH 登录记录会显示在这里';

  @override
  String get log_noSystemLogContent => '暂无日志内容';

  @override
  String get log_noSystemLogContentSubtitle => '所选日志文件为空';

  @override
  String get log_selectLogFile => '选择日志文件';

  @override
  String get log_clearLoginTitle => '清空登录日志';

  @override
  String get log_clearLoginContent => '确定要清空所有登录日志吗？此操作不可恢复。';

  @override
  String get log_clearOperationTitle => '清空操作日志';

  @override
  String get log_clearOperationContent => '确定要清空所有操作日志吗？此操作不可恢复。';

  @override
  String get log_success => '成功';

  @override
  String get log_failed => '失败';

  @override
  String get log_executing => '执行中';

  @override
  String log_port(String port) {
    return '端口 $port';
  }

  @override
  String get log_readFailed => '读取日志失败';

  @override
  String get log_operationCleared => '操作日志已清空';

  @override
  String get log_loginCleared => '登录日志已清空';

  @override
  String get log_clearFailed => '清空失败';

  @override
  String get more_appsServices => '应用与服务';

  @override
  String get more_appStoreTitle => '应用商店';

  @override
  String get more_appStoreSubtitle => '管理已安装应用、升级与应用设置';

  @override
  String get more_terminalTitle => '终端';

  @override
  String get more_terminalSubtitle => '连接服务器并执行终端命令';

  @override
  String get more_webServices => '网站服务';

  @override
  String get more_sslTitle => '证书管理';

  @override
  String get more_sslSubtitle => '管理 SSL 证书、ACME 账号与自签 CA';

  @override
  String get more_runtimeTitle => '运行环境';

  @override
  String get more_runtimeSubtitle => '管理 PHP、Node.js、Java 等运行环境';

  @override
  String get more_databaseTitle => '数据库';

  @override
  String get more_databaseSubtitle => '管理 MySQL、PostgreSQL、Redis 等数据库';

  @override
  String get more_operations => '运维管理';

  @override
  String get more_cronjobTitle => '计划任务';

  @override
  String get more_cronjobSubtitle => '管理定时任务、Shell 脚本与自动化运维';

  @override
  String get more_panelSettingsTitle => '面板设置';

  @override
  String get more_panelSettingsSubtitle => '面板安全、通知、备份与快照设置';

  @override
  String get more_logAuditSubtitle => '面板日志、登录日志与网站运行日志';

  @override
  String get more_system => '系统';

  @override
  String get more_firewallTitle => '防火墙';

  @override
  String get more_firewallSubtitle => '管理系统端口开放与黑白名单设置';

  @override
  String get more_processSubtitle => '查看并管理系统正在运行的进程';

  @override
  String get more_sshTitle => 'SSH 管理';

  @override
  String get more_sshSubtitle => '管理 SSH 密钥与远程连接设置';

  @override
  String get servers_apiKeyReadFailed => 'API Key 读取失败';

  @override
  String get servers_hostRequired => '请填写主机地址';

  @override
  String get servers_hostApiKeyRequired => '请填写主机地址和 API Key';

  @override
  String get servers_saved => '已保存';

  @override
  String get servers_added => '添加成功';

  @override
  String get servers_connectionFailed => '连接失败';

  @override
  String servers_connectionFailedDescription(String error) {
    return '请检查配置或 API Key 是否正确。\n错误信息: $error';
  }

  @override
  String get servers_stop => '停止';

  @override
  String get servers_connecting => '正在连接';

  @override
  String get servers_editPanel => '编辑面板';

  @override
  String get servers_addPanel => '添加面板';

  @override
  String get servers_connectionSettings => '连接设置';

  @override
  String get servers_name => '名称';

  @override
  String get servers_namePlaceholder => '可选，如: 我的服务器';

  @override
  String get servers_host => '主机地址';

  @override
  String get servers_hostPlaceholder => '必填，如: 1.2.3.4';

  @override
  String get servers_port => '端口';

  @override
  String get servers_securityAuth => '安全认证';

  @override
  String get servers_apiKeyHint =>
      'API Key 可在 1Panel 面板的「面板设置 → 面板 API」中生成。请注意 IP 白名单，只有在 IP 白名单列表中的 IP 才能访问面板 API 接口。';

  @override
  String get servers_reading => '正在读取...';

  @override
  String get servers_required => '必填';

  @override
  String get servers_sortHint => '拖动卡片调整排序';

  @override
  String get servers_empty => '尚未添加面板\n点击右上角按钮开始';

  @override
  String servers_loadFailed(String error) {
    return '加载失败: $error';
  }

  @override
  String get servers_deleteTitle => '删除服务器';

  @override
  String servers_deleteContent(String name) {
    return '确定要删除「$name」吗？';
  }

  @override
  String get servers_online => '在线';

  @override
  String get servers_memory => '内存';

  @override
  String get servers_disk => '磁盘';

  @override
  String get servers_websites => '网站';

  @override
  String get servers_databases => '数据库';

  @override
  String get servers_apps => '应用';

  @override
  String get servers_tasks => '任务';

  @override
  String get servers_sort => '排序';

  @override
  String get servers_edit => '编辑';

  @override
  String get premium_heroSubtitle => '一次购买，永久解锁全部功能';

  @override
  String get premium_unlimitedTitle => '无限面板管理';

  @override
  String get premium_unlimitedDescription => '不再受 1 个面板的限制，添加任意数量的 1Panel 实例。';

  @override
  String premium_currentServerCount(int serverCount) {
    return ' (您当前已添加 $serverCount 个面板)';
  }

  @override
  String get premium_moreFeaturesTitle => '更多高级功能';

  @override
  String get premium_desktopWidgetsFeature => '桌面小组件';

  @override
  String get premium_desktopWidgetsFreeHint => '（已免费开放）';

  @override
  String get premium_moreFeaturesDescription => '、多端同步等更多高级功能正在开发中，敬请期待。';

  @override
  String get premium_supportTitle => '支持开源项目';

  @override
  String get premium_supportDescription =>
      'Mono Dash 是托管在 GitHub 上的开源项目。您的支持会帮助项目持续维护和推进新功能。';

  @override
  String get premium_loading => '加载中...';

  @override
  String premium_unlockNow(String price) {
    return '立即解锁 $price';
  }

  @override
  String get premium_oneTime => '一次性付费，永久有效';

  @override
  String get premium_restore => '恢复购买';

  @override
  String get premium_unlockedTitle => '已解锁高级版';

  @override
  String premium_unlockedDescription(int serverCount) {
    return '感谢您的支持！当前已添加 $serverCount 个面板。';
  }

  @override
  String get premium_terms => '使用条款';

  @override
  String get premium_privacy => '隐私政策';

  @override
  String get premium_legalAgreement => '购买即表示您同意上述条款与政策。';

  @override
  String get premium_unlockedToast => '已解锁无限面板';

  @override
  String get premium_purchaseIncomplete => '购买未完成';

  @override
  String get premium_purchaseFailed => '购买失败';

  @override
  String get premium_restoredToast => '已恢复购买';

  @override
  String get premium_restoreNotFound => '未找到可恢复的购买';

  @override
  String get premium_restoreFailed => '恢复失败';

  @override
  String get serverDetail_searchFilesPlaceholder => '搜索文件...';

  @override
  String get serverDetail_searchWebsitesPlaceholder => '搜索网站...';

  @override
  String get serverDetail_includeSubdirectories => '包含子目录';

  @override
  String get serverDetail_currentDirectoryOnly => '仅当前目录';

  @override
  String get serverDetail_menu => '菜单';

  @override
  String get serverDetail_new => '新增';

  @override
  String get serverDetail_selectMultiple => '多选';

  @override
  String get serverDetail_exitSelection => '退出多选';

  @override
  String get serverDetail_uploadFromPhotos => '从照片库上传';

  @override
  String get serverDetail_uploadFromFiles => '从文件选取上传';

  @override
  String get serverDetail_uploadFromRemote => '远程下载';

  @override
  String get serverDetail_shareManagement => '分享管理';

  @override
  String get serverDetail_viewSettings => '视图设置';

  @override
  String get serverDetail_listView => '列表视图';

  @override
  String get serverDetail_iconView => '图标视图';

  @override
  String get serverDetail_hideHiddenFiles => '不显示隐藏文件';

  @override
  String get serverDetail_showAllFiles => '显示全部文件';

  @override
  String get serverDetail_sortSettings => '排序设置';

  @override
  String get serverDetail_openTerminal => '打开终端';

  @override
  String get serverDetail_openRestyInstallMissing => '未获取到 OpenResty 安装信息';

  @override
  String serverDetail_openRestyConfirmContent(String action) {
    return '确定要${action}OpenResty 服务吗？';
  }

  @override
  String serverDetail_openRestySuccess(String action) {
    return 'OpenResty $action成功';
  }

  @override
  String serverDetail_operationFailed(String action) {
    return '$action失败';
  }

  @override
  String get serverDetail_openRestyConfigTitle => 'OpenResty 配置';

  @override
  String get serverDetail_openRestyConfigSubtitle => 'OpenResty 主配置';

  @override
  String get serverDetail_createStaticWebsite => '静态网站';

  @override
  String get serverDetail_createRuntimeWebsite => '运行环境';

  @override
  String get serverDetail_createReverseProxy => '反向代理';

  @override
  String get serverDetail_createTcpUdpProxy => 'TCP/UDP 代理';

  @override
  String get serverDetail_manageGroups => '管理分组';

  @override
  String get serverDetail_runtimeStatus => '运行状态';

  @override
  String get serverDetail_logs => '日志';

  @override
  String get serverDetail_configEdit => '配置修改';

  @override
  String get serverDetail_performanceTuning => '性能调整';

  @override
  String get serverDetail_service => '服务';

  @override
  String get serverDetail_start => '启动';

  @override
  String get serverDetail_stop => '停止';

  @override
  String get serverDetail_restart => '重启';

  @override
  String get serverDetail_reload => '重载';

  @override
  String get serverDetail_pullImage => '拉取镜像';

  @override
  String get serverDetail_importImage => '导入镜像';

  @override
  String get serverDetail_buildImage => '构建镜像';

  @override
  String get serverDetail_pruneBuildCache => '清理构建缓存';

  @override
  String get serverDetail_pruneImages => '清理镜像';

  @override
  String get settings_title => '设置';

  @override
  String get settings_premium_title => '内购';

  @override
  String get settings_premium_unlimitedTitle => 'Mono Dash Unlimited';

  @override
  String get settings_premium_unlimitedUnlocked => '已解锁无限面板';

  @override
  String get settings_premium_unlimitedLocked => '解锁无限面板及更多功能';

  @override
  String get settings_appearance_title => '个性化';

  @override
  String get settings_appearance_modeTitle => '外观模式';

  @override
  String get settings_appearance_modeLight => '浅色';

  @override
  String get settings_appearance_modeDark => '暗色';

  @override
  String get settings_appearance_appIconTitle => 'App 图标';

  @override
  String get settings_appearance_cardStyleTitle => '卡片样式';

  @override
  String get settings_language_title => '语言';

  @override
  String get settings_language_subtitle => '选择 App 显示语言';

  @override
  String get settings_language_sectionTitle => '显示语言';

  @override
  String get settings_language_systemSubtitle => '使用系统语言，支持时自动切换';

  @override
  String get settings_language_zh => '简体中文';

  @override
  String get settings_language_en => 'English';

  @override
  String get settings_network_title => '网络安全';

  @override
  String get settings_network_allowInsecureTitle => '允许不安全连接';

  @override
  String get settings_network_allowInsecureSubtitle => '接受自签名/不受信任证书';

  @override
  String get settings_network_requestTimeoutTitle => '请求超时';

  @override
  String settings_network_requestTimeoutSubtitle(int seconds) {
    return '$seconds 秒';
  }

  @override
  String get settings_sync_title => '同步';

  @override
  String get settings_sync_iCloudTitle => 'iCloud 同步';

  @override
  String get settings_sync_disabledSubtitle => '同步服务器与 API Key，默认关闭';

  @override
  String get settings_sync_enabledWaitingSubtitle => '已开启，等待首次同步';

  @override
  String get settings_sync_unavailableSubtitle =>
      'iCloud 不可用，请检查系统 iCloud 与 iCloud 钥匙串设置';

  @override
  String settings_sync_lastSucceeded(String time) {
    return '上次同步：$time';
  }

  @override
  String get settings_sync_syncNowTitle => '立即同步';

  @override
  String get settings_sync_syncNowSubtitle => '从 iCloud 拉取并合并服务器信息';

  @override
  String settings_sync_lastAttempted(String time) {
    return '上次尝试：$time';
  }

  @override
  String get settings_sync_enabledToast => 'iCloud 同步已开启';

  @override
  String get settings_sync_disabledToast => 'iCloud 同步已关闭';

  @override
  String get settings_sync_successToast => '同步完成';

  @override
  String get settings_sync_failedToast => '同步失败';

  @override
  String get settings_sync_webDavConfigTitle => 'WebDAV 配置';

  @override
  String get settings_sync_webDavConfigMissing => '未配置 WebDAV 地址';

  @override
  String get settings_sync_webDavTitle => 'WebDAV 同步';

  @override
  String get settings_sync_webDavDisabledSubtitle => '同步服务器信息，默认不上传 API Key';

  @override
  String get settings_sync_webDavSyncNowSubtitle => '从 WebDAV 拉取并合并服务器信息';

  @override
  String get settings_sync_webDavEnabledToast => 'WebDAV 同步已开启';

  @override
  String get settings_sync_webDavDisabledToast => 'WebDAV 同步已关闭';

  @override
  String get settings_sync_webDavDescription =>
      'WebDAV 会将服务器列表保存到远端 JSON 文件。默认不会上传 API Key；开启下方开关后，API Key 会随文件一起同步，请确认你的 WebDAV 存储可信。';

  @override
  String get settings_sync_webDavUrlLabel => 'WebDAV 地址';

  @override
  String get settings_sync_webDavUrlPlaceholder =>
      'https://example.com/dav/mono-dash/';

  @override
  String get settings_sync_webDavUsernameLabel => '用户名';

  @override
  String get settings_sync_webDavUsernamePlaceholder => '可留空';

  @override
  String get settings_sync_webDavPasswordLabel => '密码';

  @override
  String get settings_sync_webDavPasswordPlaceholder => '可留空';

  @override
  String get settings_sync_webDavUrlInvalid => '请输入有效的 http 或 https 地址';

  @override
  String get settings_sync_webDavSyncApiKeysTitle => '同步 API Key';

  @override
  String get settings_sync_webDavSyncApiKeysSubtitle =>
      '开启后 API Key 会写入 WebDAV 同步文件';

  @override
  String settings_sync_webDavErrorReadFailed(String status) {
    return '无法读取 WebDAV 同步文件（HTTP $status）';
  }

  @override
  String settings_sync_webDavErrorWriteFailed(String status) {
    return '无法写入 WebDAV 同步文件（HTTP $status）';
  }

  @override
  String settings_sync_webDavErrorDirectoryFailed(String status) {
    return '无法创建 WebDAV 目录（HTTP $status）';
  }

  @override
  String get settings_network_customHeadersTitle => '自定义 Header';

  @override
  String get settings_network_customHeadersEmpty => '未设置';

  @override
  String settings_network_customHeadersCount(int count) {
    return '已设置 $count 项';
  }

  @override
  String get ssh_title => 'SSH 管理';

  @override
  String get ssh_manage => '管理';

  @override
  String get ssh_refreshConfig => '刷新配置';

  @override
  String get ssh_fullConfig => '完整配置';

  @override
  String get ssh_publicKeyManagement => '公钥管理';

  @override
  String get ssh_authorizedKeys => '授权密钥';

  @override
  String get ssh_logSearchPlaceholder => '搜索地址、用户...';

  @override
  String get ssh_searchLogs => '搜索日志';

  @override
  String get ssh_exportLogs => '导出日志';

  @override
  String get ssh_refreshList => '刷新列表';

  @override
  String get ssh_downloadEmpty => '文件下载失败或为空';

  @override
  String get ssh_loginLogTitle => 'SSH 登录日志';

  @override
  String get ssh_exportFailed => '导出失败';

  @override
  String get ssh_serviceStatus => '服务状态';

  @override
  String get ssh_runningStatus => '运行状态';

  @override
  String get ssh_serviceRunningMessage => 'SSH 服务正常运行中';

  @override
  String get ssh_running => '运行中';

  @override
  String get ssh_stopped => '已停止';

  @override
  String get ssh_port => '端口';

  @override
  String get ssh_notConfigured => '未配置';

  @override
  String get ssh_listenAddress => '监听地址';

  @override
  String get ssh_currentUser => '当前用户';

  @override
  String get ssh_autoStart => '开机自启';

  @override
  String get ssh_startService => '启动服务';

  @override
  String get ssh_stopService => '停止服务';

  @override
  String get ssh_restartService => '重启服务';

  @override
  String get ssh_start => '启动';

  @override
  String get ssh_stop => '停止';

  @override
  String get ssh_restart => '重启';

  @override
  String get ssh_authConfig => '认证配置';

  @override
  String get ssh_passwordLogin => '密码登录';

  @override
  String get ssh_keyLogin => '密钥登录';

  @override
  String get ssh_useDns => 'DNS 反查 (UseDNS)';

  @override
  String ssh_confirmOperationTitle(String label) {
    return '$label SSH';
  }

  @override
  String ssh_confirmOperationContent(String operation) {
    return '确认执行 $operation？';
  }

  @override
  String get ssh_configFileTitle => 'SSH 配置文件';

  @override
  String get ssh_fullConfigWarning =>
      '完整配置直接编辑 sshd_config 文件，修改后将自动重启 SSH 服务。';

  @override
  String get ssh_configFile => '配置文件';

  @override
  String ssh_priority(int priority) {
    return '优先级 $priority';
  }

  @override
  String get ssh_editConfigFile => '编辑配置文件';

  @override
  String get ssh_rootLoginPolicy => 'Root 登录策略';

  @override
  String get ssh_rootLoginAllow => '允许 Root 登录';

  @override
  String get ssh_rootLoginDeny => '禁止 Root 登录';

  @override
  String get ssh_rootLoginProhibitPassword => '禁止密码登录';

  @override
  String get ssh_rootLoginForcedCommandsOnly => '仅强制命令';

  @override
  String get ssh_disconnectTitle => '断开连接';

  @override
  String ssh_disconnectContent(int pid) {
    return '确认断开 PID $pid 的 SSH 会话？';
  }

  @override
  String get ssh_disconnectAction => '断开';

  @override
  String get ssh_disconnected => '已断开连接';

  @override
  String get ssh_disconnectFailed => '断开失败';

  @override
  String get ssh_connectingSessions => '正在连接会话服务';

  @override
  String get ssh_connectionFailed => '连接失败';

  @override
  String get ssh_noActiveSessions => '暂无活跃会话';

  @override
  String get ssh_sessionsEmptySubtitle => 'SSH 会话会显示在这里';

  @override
  String get ssh_forceDisconnect => '强制断开';

  @override
  String get ssh_updating => '正在更新';

  @override
  String get ssh_enabled => '已开启';

  @override
  String get ssh_disabled => '已关闭';

  @override
  String get ssh_editPort => '编辑端口';

  @override
  String get ssh_portPlaceholder => '22 或 22,2222';

  @override
  String get ssh_portHint => '多个端口用逗号分隔，如 22,2222';

  @override
  String get ssh_portRequired => '端口不能为空';

  @override
  String get ssh_portInvalidFormat => '端口格式不正确';

  @override
  String get ssh_portInvalidRange => '端口必须为 1-65535 的整数';

  @override
  String get ssh_portDuplicate => '端口不能重复';

  @override
  String get ssh_editListenAddress => '编辑监听地址';

  @override
  String get ssh_ipv4Address => 'IPv4 地址';

  @override
  String get ssh_ipv6Address => 'IPv6 地址';

  @override
  String get ssh_bindAllHint => '绑定全部表示监听所有网络接口（0.0.0.0 / ::）';

  @override
  String get ssh_bindAll => '绑定全部';

  @override
  String get ssh_certManageTitle => 'SSH 密钥管理';

  @override
  String get ssh_certEmptyTitle => '暂无密钥';

  @override
  String get ssh_certEmptySubtitle => '点击右上角 + 创建新密钥';

  @override
  String get ssh_certSyncTitle => '同步密钥';

  @override
  String get ssh_certSyncContent => '将从磁盘扫描并同步密钥到数据库，确认执行？';

  @override
  String get ssh_certSyncAction => '同步';

  @override
  String get ssh_encryptionMode => '加密模式';

  @override
  String get ssh_passphrase => '口令';

  @override
  String get ssh_publicKey => '公钥';

  @override
  String get ssh_privateKey => '私钥';

  @override
  String get ssh_unsynced => '未同步';

  @override
  String get ssh_editKey => '编辑密钥';

  @override
  String get ssh_createKey => '创建密钥';

  @override
  String get ssh_name => '名称';

  @override
  String get ssh_createMode => '创建方式';

  @override
  String get ssh_passphraseOptional => '口令（可选）';

  @override
  String get ssh_passphrasePlaceholder => '留空表示无口令';

  @override
  String get ssh_pastePublicKey => '粘贴公钥内容';

  @override
  String get ssh_pastePrivateKey => '粘贴私钥内容';

  @override
  String get ssh_descriptionOptional => '描述（可选）';

  @override
  String get ssh_remarksPlaceholder => '备注信息';

  @override
  String get ssh_selectEncryptionMode => '选择加密模式';

  @override
  String get ssh_generateAutomatically => '自动生成';

  @override
  String get ssh_manualInput => '手动输入';

  @override
  String get ssh_enterName => '请输入名称';

  @override
  String get ssh_certCreated => '密钥已创建';

  @override
  String get ssh_createFailed => '创建失败';

  @override
  String get ssh_certUpdated => '密钥已更新';

  @override
  String get ssh_updateFailed => '更新失败';

  @override
  String get ssh_certDeleted => '密钥已删除';

  @override
  String get ssh_deleteFailed => '删除失败';

  @override
  String get ssh_syncCompleted => '同步完成';

  @override
  String get ssh_syncFailed => '同步失败';

  @override
  String get ssh_operationCompleted => '操作已完成';

  @override
  String get ssh_operationFailed => '操作失败';

  @override
  String get ssh_configUpdated => '配置已更新';

  @override
  String get runtime_title => '运行环境';

  @override
  String get runtime_all => '全部';

  @override
  String get runtime_action => '操作';

  @override
  String get runtime_new => '新建';

  @override
  String get runtime_searchPlaceholder => '搜索运行环境...';

  @override
  String get runtime_containerNameMissing => '未找到运行环境容器名';

  @override
  String runtime_buildLogTitle(String name) {
    return '$name 构建日志';
  }

  @override
  String get runtime_emptyTitle => '暂无运行环境';

  @override
  String get runtime_noSearchResults => '未搜索到运行环境';

  @override
  String runtime_emptyTypeTitle(String type) {
    return '还没有 $type 运行环境';
  }

  @override
  String get runtime_emptySubtitle => '点击右上角新建运行环境';

  @override
  String get runtime_noSearchResultsSubtitle => '换个关键词试试吧';

  @override
  String runtime_emptyTypeSubtitle(String type) {
    return '可从右上角新建一个 $type 环境';
  }

  @override
  String runtime_editTitle(String type) {
    return '编辑 $type 运行环境';
  }

  @override
  String runtime_createTitle(String type) {
    return '创建 $type 运行环境';
  }

  @override
  String get runtime_serviceManagement => '服务管理';

  @override
  String get runtime_start => '启动';

  @override
  String get runtime_stop => '停止';

  @override
  String get runtime_restart => '重启';

  @override
  String get runtime_startDescription => '启动运行环境';

  @override
  String get runtime_stopDescription => '停止运行环境';

  @override
  String get runtime_restartDescription => '重启运行环境';

  @override
  String get runtime_appTools => '应用工具';

  @override
  String get runtime_projectDirectory => '项目目录';

  @override
  String get runtime_configDirectory => '配置目录';

  @override
  String get runtime_terminal => '终端';

  @override
  String get runtime_terminalDescription => '进入容器内部执行命令';

  @override
  String get runtime_editDescription => '修改运行环境配置';

  @override
  String get runtime_logs => '日志记录';

  @override
  String get runtime_runLogs => '运行日志';

  @override
  String get runtime_runLogsDescription => '查看容器运行日志';

  @override
  String get runtime_buildLogs => '构建日志';

  @override
  String get runtime_buildLogsDescription => '查看构建过程日志';

  @override
  String get runtime_dangerZone => '危险区域';

  @override
  String get runtime_deleteDescription => '删除此运行环境';

  @override
  String get runtime_deleteTitle => '删除运行环境';

  @override
  String runtime_deleteConfirm(String name) {
    return '确定要删除运行环境 \"$name\" 吗？';
  }

  @override
  String runtime_operateTitle(String action) {
    return '$action运行环境';
  }

  @override
  String runtime_operateContent(String action) {
    return '确定要$action此运行环境吗？';
  }

  @override
  String runtime_operationSucceeded(String action) {
    return '$action成功';
  }

  @override
  String runtime_operationFailed(String action) {
    return '$action失败';
  }

  @override
  String get runtime_deleteSucceeded => '删除成功';

  @override
  String get runtime_deleteFailed => '删除失败';

  @override
  String get runtime_nameRequired => '请填写名称';

  @override
  String get runtime_appLoadFailed => '应用加载失败';

  @override
  String get runtime_versionRequired => '请选择版本';

  @override
  String get runtime_configLoading => '应用配置加载中，请稍候';

  @override
  String get runtime_containerNameInvalid => '容器名称格式不正确';

  @override
  String get runtime_codeDirRequired => '请填写代码目录';

  @override
  String get runtime_hostPortInvalid => '宿主机端口无效';

  @override
  String get runtime_containerPortInvalid => '容器端口无效';

  @override
  String runtime_hostPortDuplicate(int port) {
    return '宿主机端口 $port 重复';
  }

  @override
  String runtime_containerPortDuplicate(int port) {
    return '容器端口 $port 重复';
  }

  @override
  String get runtime_saveFailed => '保存失败';

  @override
  String get runtime_createFailed => '创建失败';

  @override
  String get runtime_appSelection => '应用选择';

  @override
  String get runtime_basicConfig => '基本配置';

  @override
  String get runtime_name => '名称';

  @override
  String get runtime_containerName => '容器名称';

  @override
  String get runtime_containerNamePlaceholder => '留空则与名称相同';

  @override
  String get runtime_projectConfig => '项目配置';

  @override
  String get runtime_codeDirectory => '代码目录';

  @override
  String get runtime_chooseCodeDirectory => '选择代码目录';

  @override
  String get runtime_startCommand => '启动命令';

  @override
  String runtime_startCommandExample(String command) {
    return '例如：$command';
  }

  @override
  String get runtime_portMappings => '端口映射';

  @override
  String get runtime_portPublicHint => '点击锁图标允许端口外部访问';

  @override
  String get runtime_environmentVariables => '环境变量';

  @override
  String get runtime_mounts => '挂载';

  @override
  String get runtime_hostMappings => '主机映射';

  @override
  String get runtime_other => '其他';

  @override
  String get runtime_remark => '备注';

  @override
  String get runtime_optional => '选填';

  @override
  String get runtime_version => '版本';

  @override
  String get runtime_loadingApps => '正在加载应用...';

  @override
  String get runtime_loading => '正在加载...';

  @override
  String get runtime_noVersions => '无可用版本';

  @override
  String get runtime_noPortMappings => '未添加端口映射';

  @override
  String get runtime_hostPort => '宿主机端口';

  @override
  String get runtime_containerPort => '容器端口';

  @override
  String get runtime_noEnvironmentVariables => '未添加环境变量';

  @override
  String get runtime_envKey => '变量名 (Key)';

  @override
  String get runtime_envValue => '变量值 (Value)';

  @override
  String get runtime_noMounts => '未添加挂载卷';

  @override
  String get runtime_hostPath => '宿主机路径';

  @override
  String get runtime_chooseMountPath => '选择挂载路径';

  @override
  String get runtime_containerPath => '容器路径';

  @override
  String get runtime_noHostMappings => '未添加主机映射';

  @override
  String get runtime_hostname => '主机名';

  @override
  String get runtime_ipAddress => 'IP 地址';

  @override
  String get runtime_aptMirrorSource => 'APT 镜像源';

  @override
  String get runtime_phpConfig => 'PHP 配置';

  @override
  String get runtime_phpVersion => 'PHP 版本';

  @override
  String get runtime_phpFpmPort => 'PHP-FPM 端口';

  @override
  String get runtime_extensionPreset => '扩展预设';

  @override
  String get runtime_mirrorSource => '镜像源';

  @override
  String get runtime_phpExtensions => 'PHP 扩展';

  @override
  String get runtime_addMore => '添加更多';

  @override
  String get runtime_packageConfig => '包配置';

  @override
  String get runtime_packageManager => '包管理器';

  @override
  String get runtime_startCommandSection => '启动命令';

  @override
  String get runtime_runScript => '运行脚本';

  @override
  String get runtime_selectBuiltinScript => '选择内置脚本';

  @override
  String get runtime_customCommand => '自定义命令';

  @override
  String get runtime_customScriptHint => '请在上方“项目配置”中填写自定义启动命令';

  @override
  String get runtime_loadingScripts => '正在加载脚本...';

  @override
  String get runtime_noScripts => '未发现可用的项目脚本';

  @override
  String get runtime_npmMirrorSource => 'NPM 镜像源';

  @override
  String get firewall_title => '防火墙';

  @override
  String get firewall_loadStatusFailed => '加载防火墙状态失败';

  @override
  String get firewall_serviceMissingTitle => '未检测到 Firewalld / Ufw 服务';

  @override
  String get firewall_serviceMissingSubtitle => '请安装后再使用。';

  @override
  String get firewall_refreshStatus => '刷新状态';

  @override
  String get firewall_searchPortRules => '搜索端口规则';

  @override
  String get firewall_searchIpRules => '搜索 IP 规则';

  @override
  String get firewall_serviceMenu => '防火墙服务';

  @override
  String get firewall_newPortRule => '新建端口规则';

  @override
  String get firewall_editPortRule => '编辑端口规则';

  @override
  String get firewall_newIpRule => '新建 IP 规则';

  @override
  String get firewall_editIpRule => '编辑 IP 规则';

  @override
  String get firewall_exitMultiSelect => '退出多选';

  @override
  String get firewall_selectRules => '选择规则';

  @override
  String get firewall_importing => '正在导入';

  @override
  String get firewall_importRules => '导入规则';

  @override
  String get firewall_filterStrategy => '筛选策略';

  @override
  String get firewall_allStrategies => '全部策略';

  @override
  String get firewall_refreshRules => '刷新规则';

  @override
  String get firewall_startService => '启动服务';

  @override
  String get firewall_stopService => '停止服务';

  @override
  String get firewall_restartService => '重启服务';

  @override
  String get firewall_startTitle => '启动防火墙';

  @override
  String get firewall_stopTitle => '停止防火墙';

  @override
  String get firewall_restartTitle => '重启防火墙';

  @override
  String get firewall_startContent => '确认启动防火墙服务？';

  @override
  String get firewall_stopContent => '停止后规则列表将不可操作，确认继续？';

  @override
  String get firewall_restartContent => '确认重启防火墙服务？';

  @override
  String get firewall_enableBanPing => '开启禁 Ping';

  @override
  String get firewall_disableBanPing => '关闭禁 Ping';

  @override
  String get firewall_enableBanPingContent => '开启后外部 Ping 请求将被拦截，确认继续？';

  @override
  String get firewall_disableBanPingContent => '关闭后外部可以 Ping 当前主机，确认继续？';

  @override
  String get firewall_initBasicChain => '初始化 1PANEL_BASIC';

  @override
  String get firewall_initIptables => '初始化 iptables';

  @override
  String get firewall_initBasicChainContent => '确认初始化 1PANEL_BASIC 基础链？';

  @override
  String get firewall_bindBasicChain => '绑定 1PANEL_BASIC';

  @override
  String get firewall_unbindBasicChain => '解绑 1PANEL_BASIC';

  @override
  String get firewall_bindIptablesTitle => '绑定 iptables 基础链';

  @override
  String get firewall_unbindIptablesTitle => '解绑 iptables 基础链';

  @override
  String get firewall_bindBasicChainContent => '确认绑定 1PANEL_BASIC 基础链？';

  @override
  String get firewall_unbindBasicChainContent => '解绑后端口和 IP 规则将不可操作，确认继续？';

  @override
  String get firewall_operationSucceeded => '操作成功';

  @override
  String get firewall_operationFailed => '操作失败';

  @override
  String get firewall_ruleInfo => '规则信息';

  @override
  String get firewall_port => '端口';

  @override
  String get firewall_portPlaceholder => '80、8080-8090 或 80,443';

  @override
  String get firewall_protocol => '协议';

  @override
  String get firewall_strategy => '策略';

  @override
  String get firewall_editPortHint => '编辑规则不会修改端口号。';

  @override
  String get firewall_createPortHint => '支持单端口、端口段或英文逗号分隔的端口列表。';

  @override
  String get firewall_source => '来源';

  @override
  String get firewall_range => '范围';

  @override
  String get firewall_address => '地址';

  @override
  String get firewall_addressPlaceholder => '多个地址用英文逗号分隔，支持 CIDR';

  @override
  String get firewall_descriptionOptional => '描述（可选）';

  @override
  String get firewall_descriptionPlaceholder => '可选备注';

  @override
  String get firewall_acceptLabel => 'Accept (允许)';

  @override
  String get firewall_dropLabel => 'Drop (拒绝)';

  @override
  String get firewall_allAddresses => '所有地址';

  @override
  String get firewall_specificAddress => '指定地址';

  @override
  String get firewall_portRequired => '请输入端口号';

  @override
  String get firewall_sourceAddressRequired => '请输入来源地址';

  @override
  String get firewall_ruleUpdated => '规则已更新';

  @override
  String get firewall_ruleAdded => '规则已添加';

  @override
  String get firewall_portListRangeMixed => '端口列表和端口段不能混用';

  @override
  String get firewall_portInvalidFormat => '端口格式不正确';

  @override
  String get firewall_portRangeInvalidFormat => '端口段格式不正确';

  @override
  String get firewall_portRangeInvalid => '端口段必须在 1-65535 内，且起始端口不能大于结束端口';

  @override
  String get firewall_portInvalidRange => '端口必须在 1-65535 内';

  @override
  String get firewall_addressInvalidFormat => '地址格式不正确';

  @override
  String firewall_addressInvalidValue(String address) {
    return '地址格式不正确: $address';
  }

  @override
  String get firewall_ipAddress => 'IP 地址';

  @override
  String get firewall_ipAddressPlaceholder => '192.168.1.100 或 10.0.0.0/8';

  @override
  String get firewall_editIpHint => '编辑规则不会修改 IP 地址。';

  @override
  String get firewall_createIpHint => '支持单个 IP 或 CIDR 网段。';

  @override
  String get firewall_ipRequired => '请输入 IP 地址';

  @override
  String firewall_selectedRules(int count) {
    return '已选择 $count 条规则';
  }

  @override
  String get firewall_chooseAction => '请选择下方操作';

  @override
  String get firewall_expandActionMenu => '点击展开操作菜单';

  @override
  String get firewall_selectAll => '全选';

  @override
  String get firewall_clearSelectAll => '取消全选';

  @override
  String get firewall_exporting => '正在导出';

  @override
  String get firewall_export => '导出';

  @override
  String get firewall_importPortRules => '导入端口规则';

  @override
  String firewall_importCount(int count) {
    return '导入 $count';
  }

  @override
  String get firewall_importSucceeded => '导入成功';

  @override
  String firewall_importedCount(int count) {
    return '已导入 $count 条规则';
  }

  @override
  String get firewall_importPartiallySucceeded => '部分导入成功';

  @override
  String firewall_importPartialDescription(int success, int failed) {
    return '成功 $success 条，失败 $failed 条';
  }

  @override
  String get firewall_importStatusNew => '新增';

  @override
  String get firewall_importStatusConflict => '冲突';

  @override
  String get firewall_importStatusDuplicate => '重复';

  @override
  String get firewall_importStatusInvalid => '无效';

  @override
  String firewall_importPortTitle(String port, String protocol) {
    return '端口 $port ($protocol)';
  }

  @override
  String firewall_importConflictSubtitle(String existing, String incoming) {
    return '现有策略 $existing，导入策略 $incoming';
  }

  @override
  String get firewall_importInvalidSubtitle => '此项不会导入';

  @override
  String firewall_importCandidateSubtitle(String address, String strategy) {
    return '$address · $strategy';
  }

  @override
  String get firewall_ruleManagement => '规则管理';

  @override
  String get firewall_editRule => '编辑规则';

  @override
  String get firewall_editPortRuleDescription => '修改协议、策略、来源和描述';

  @override
  String get firewall_editIpRuleDescription => '修改策略和描述';

  @override
  String get firewall_changeToDrop => '改为 Drop';

  @override
  String get firewall_changeToAccept => '改为 Accept';

  @override
  String get firewall_denyThisPort => '拒绝此端口访问';

  @override
  String get firewall_allowThisPort => '允许此端口访问';

  @override
  String get firewall_denyThisAddress => '拒绝此地址访问';

  @override
  String get firewall_allowThisAddress => '允许此地址访问';

  @override
  String get firewall_occupiedProcess => '占用进程';

  @override
  String get firewall_processDetails => '查看监听进程详情';

  @override
  String get firewall_deleteRule => '删除规则';

  @override
  String get firewall_removeThisRule => '从防火墙中移除此规则';

  @override
  String get firewall_protocolLabel => '协议';

  @override
  String get firewall_sourceLabel => '来源';

  @override
  String get firewall_occupiedLabel => '占用';

  @override
  String get firewall_descriptionLabel => '描述';

  @override
  String get firewall_occupied => '已占用';

  @override
  String get firewall_notDetected => '未检测到防火墙';

  @override
  String get firewall_notInitialized => '防火墙未初始化';

  @override
  String get firewall_notStarted => '防火墙未启动';

  @override
  String get firewall_basicChainUnbound => 'iptables 基础链未绑定';

  @override
  String get firewall_portRulesNeedActive => '端口规则操作需要防火墙处于运行状态。';

  @override
  String get firewall_iptablesUnboundSubtitle =>
      '当前 iptables 未绑定 1PANEL_BASIC，端口规则区域暂不可操作。';

  @override
  String get firewall_initializeFirst => '请先在 1Panel 中完成防火墙初始化。';

  @override
  String get firewall_noPortRules => '暂无端口规则';

  @override
  String get firewall_noPortRulesSubtitle => '可以创建规则，或导入已有规则 JSON。';

  @override
  String get firewall_noIpRules => '暂无 IP 规则';

  @override
  String get firewall_noIpRulesSubtitle => '可在右上角菜单中新建 IP 规则';

  @override
  String get firewall_enableAction => '开启';

  @override
  String get firewall_disableAction => '关闭';

  @override
  String get firewall_createRule => '创建规则';

  @override
  String get firewall_switchStrategyTitle => '切换策略';

  @override
  String firewall_switchPortStrategyContent(String port, String strategy) {
    return '确认将端口 $port 的策略改为 $strategy？';
  }

  @override
  String firewall_switchIpStrategyContent(String address, String strategy) {
    return '确认将 $address 的策略改为 $strategy？';
  }

  @override
  String get firewall_switchAction => '切换';

  @override
  String get firewall_strategyUpdated => '策略已更新';

  @override
  String get firewall_strategyUpdateFailed => '策略更新失败';

  @override
  String get firewall_deletePortRule => '删除端口规则';

  @override
  String firewall_deletePortRuleContent(String port, String protocol) {
    return '确认删除端口 $port（$protocol）？';
  }

  @override
  String get firewall_deleteIpRule => '删除 IP 规则';

  @override
  String firewall_deleteIpRuleContent(String address) {
    return '确认删除 $address？';
  }

  @override
  String get firewall_ruleDeleted => '规则已删除';

  @override
  String get firewall_deleteFailed => '删除失败';

  @override
  String get firewall_batchDeleteTitle => '批量删除';

  @override
  String firewall_batchDeleteContent(int count) {
    return '确认删除选中的 $count 条端口规则？批量接口会尽力执行，完成后以刷新列表为准。';
  }

  @override
  String get firewall_batchDeleteSubmitted => '批量删除已提交';

  @override
  String get firewall_batchDeleteFailed => '批量删除失败';

  @override
  String get firewall_selectRulesToExport => '请先选择要导出的规则';

  @override
  String get firewall_exportFailed => '导出失败';

  @override
  String get firewall_importFailed => '导入失败';

  @override
  String get firewall_jsonRootMustBeArray => 'JSON 根节点必须是数组。';

  @override
  String get firewall_importItemNotObject => '导入项不是对象';

  @override
  String get firewall_missingPortProtocolStrategy =>
      '缺少 port/protocol/strategy';

  @override
  String firewall_unsupportedProtocol(String protocol) {
    return '协议不支持: $protocol';
  }

  @override
  String firewall_unsupportedStrategy(String strategy) {
    return '策略不支持: $strategy';
  }

  @override
  String firewall_portTitle(String port) {
    return '端口 $port';
  }

  @override
  String get settings_general_title => '通用';

  @override
  String get settings_security_title => '安全';

  @override
  String get settings_appLock_title => '启动保护';

  @override
  String get settings_appLock_subtitleOn => '需要密码或生物识别';

  @override
  String get settings_appLock_subtitleOff => '打开 App 时需要数字密码或生物识别验证';

  @override
  String get settings_appLock_pageTitle => '启动保护';

  @override
  String get settings_appLock_description => '打开 Mono Dash 前需要输入密码或完成生物识别验证。';

  @override
  String get settings_appLock_passwordLabel => '数字密码';

  @override
  String get settings_appLock_passwordSwitchTitle => '密码';

  @override
  String get settings_appLock_confirmPasswordLabel => '确认数字密码';

  @override
  String get settings_appLock_currentPasswordLabel => '当前数字密码';

  @override
  String get settings_appLock_newPasswordLabel => '新数字密码';

  @override
  String get settings_appLock_passwordRequired => '请输入数字密码';

  @override
  String get settings_appLock_passwordTooShort => '请使用 6 位数字密码';

  @override
  String get settings_appLock_passwordDigitsOnly => '只能使用数字';

  @override
  String get settings_appLock_createPinTitle => '创建数字密码';

  @override
  String get settings_appLock_createPinSubtitle => '请输入 6 位数字。生物识别不可用时可用它解锁。';

  @override
  String get settings_appLock_confirmPinTitle => '确认数字密码';

  @override
  String get settings_appLock_confirmPinSubtitle => '再次输入数字密码以开启启动保护。';

  @override
  String get settings_appLock_currentPinTitle => '输入当前数字密码';

  @override
  String get settings_appLock_currentPinSubtitle => '修改前需要先验证当前数字密码。';

  @override
  String get settings_appLock_newPinTitle => '输入新数字密码';

  @override
  String get settings_appLock_newPinSubtitle => '请选择 6 位数字。';

  @override
  String get settings_appLock_passwordMismatch => '两次输入的密码不一致';

  @override
  String get settings_appLock_wrongPassword => '密码不正确';

  @override
  String get settings_appLock_enableAction => '开启启动保护';

  @override
  String get settings_appLock_disableTitle => '关闭启动保护？';

  @override
  String get settings_appLock_disableContent =>
      '关闭后，打开 Mono Dash 时不再需要密码或生物识别验证。';

  @override
  String get settings_appLock_disableAction => '关闭';

  @override
  String get settings_appLock_disableVerifyTitle => '输入数字密码';

  @override
  String get settings_appLock_disableVerifySubtitle => '验证数字密码后才能关闭启动保护。';

  @override
  String get settings_appLock_enabledToast => '启动保护已开启';

  @override
  String get settings_appLock_disabledToast => '启动保护已关闭';

  @override
  String get settings_appLock_passwordUpdatedToast => '密码已更新';

  @override
  String get settings_appLock_biometricTitle => '生物识别解锁';

  @override
  String get settings_appLock_biometricSectionTitle => '生物识别';

  @override
  String get settings_appLock_biometricSubtitle => '使用 Face ID、Touch ID 或指纹';

  @override
  String get settings_appLock_biometricUnavailable => '当前设备没有可用的生物识别';

  @override
  String get settings_appLock_biometricRequiresPassword => '请先开启密码';

  @override
  String get settings_appLock_faceIdTitle => 'Face ID';

  @override
  String get settings_appLock_fingerprintTitle => '指纹解锁';

  @override
  String get settings_appLock_changePassword => '修改密码';

  @override
  String get settings_appLock_changePasswordSubtitle => '更新用于解锁 App 的密码';

  @override
  String get settings_appLock_authReason => '解锁 Mono Dash';

  @override
  String get settings_appLock_unlockTitle => 'Mono Dash 已锁定';

  @override
  String get settings_appLock_unlockSubtitle => '输入数字密码或使用生物识别继续。';

  @override
  String get settings_appLock_unlockAction => '解锁';

  @override
  String get settings_appLock_useBiometric => '使用生物识别';

  @override
  String get settings_appLock_unlockFailed => '无法完成生物识别验证';

  @override
  String get settings_appLock_widgetNote =>
      '桌面小组件会独立刷新。启动保护只保护主应用入口，不会阻止小组件时间线刷新。';

  @override
  String get settings_appLock_mischiefSectionTitle => '无聊设置';

  @override
  String get settings_appLock_misleadingPinFeedbackTitle => '糟糕密码反馈';

  @override
  String get settings_appLock_misleadingPinFeedbackSubtitle =>
      '输入时随机显示红绿提示，真实校验只在确认时进行。';

  @override
  String get settings_appLock_setPinSheetTitle => '设置密码';

  @override
  String get settings_appLock_changePinSheetTitle => '修改密码';

  @override
  String settings_appLock_enableBiometricSheetTitle(String method) {
    return '使用 $method？';
  }

  @override
  String settings_appLock_enableBiometricSheetSubtitle(String method) {
    return '输入一次数字密码后，可以使用 $method 解锁 Mono Dash。';
  }

  @override
  String get settings_cache_title => '缓存管理';

  @override
  String get settings_cache_subtitle => '清理本机临时文件';

  @override
  String get settings_help_title => '帮助与关于';

  @override
  String get settings_help_contactTitle => '联系我们';

  @override
  String get settings_help_contactSubtitle => 'GitHub Issues 与 Telegram 群组';

  @override
  String get settings_contact_supportTitle => 'GitHub Issues';

  @override
  String get settings_contact_supportContent =>
      '如果遇到使用问题，请在 GitHub Issues 提交，方便跟踪和处理。';

  @override
  String get settings_contact_feedbackTitle => 'Telegram 群组';

  @override
  String get settings_contact_feedbackContent =>
      '也可以加入 Telegram 群组进行讨论，反馈使用问题或交流建议。';

  @override
  String get settings_contact_submitIssue => '提交 GitHub Issue';

  @override
  String get settings_contact_joinSupport => '加入 Telegram 群组';

  @override
  String get settings_contact_openFailed => '无法打开链接';

  @override
  String get settings_help_apiKeyTitle => 'API Key 获取位置';

  @override
  String get settings_help_apiKeyContent =>
      '在 1Panel 面板中进入「设置 → 面板设置 → API」，开启 API 并生成 API Key 后填入添加面板表单。';

  @override
  String get settings_help_privacyTitle => '隐私与购买说明';

  @override
  String get settings_help_privacyContent =>
      '面板连接信息保存在本机，API Key 使用系统安全存储。购买由 App Store 或 Google Play 处理，RevenueCat 只用于同步购买状态。';

  @override
  String get settings_help_openSourceTitle => '查看源码';

  @override
  String get settings_help_openSourceSubtitle => '查看 Mono Dash 的 GitHub 仓库';

  @override
  String get settings_openSource_projectTitle => 'Mono Dash 是开源项目';

  @override
  String get settings_openSource_projectContent =>
      'Mono Dash 的源代码托管在 GitHub。你可以查看代码、提交 Issue，或参与改进这个第三方 1Panel 移动管理客户端。';

  @override
  String get settings_openSource_openRepository => '打开 GitHub 仓库';

  @override
  String get settings_openSource_copyRepositoryUrl => '复制仓库链接';

  @override
  String get settings_help_licensesTitle => '开源许可';

  @override
  String get settings_help_licensesSubtitle => '第三方组件许可与声明';

  @override
  String get settings_licenses_appSection => '应用';

  @override
  String get settings_licenses_componentsSection => '开源组件';

  @override
  String get settings_licenses_licenseSection => '许可文本';

  @override
  String settings_licenses_versionSubtitle(String version) {
    return '版本 $version';
  }

  @override
  String settings_licenses_packageCount(int count) {
    return '$count 个组件';
  }

  @override
  String settings_licenses_entryCount(int count) {
    return '$count 条许可声明';
  }

  @override
  String get settings_licenses_loading => '正在加载许可信息...';

  @override
  String get settings_licenses_emptyTitle => '未找到许可信息';

  @override
  String get settings_licenses_emptySubtitle => '当前没有可展示的注册许可数据。';

  @override
  String get settings_help_aboutTitle => '关于 Mono Dash';

  @override
  String get settings_help_aboutContent => '1Panel 第三方移动管理工具。';

  @override
  String get settings_insecure_confirmTitle => '确认允许不安全连接？';

  @override
  String get settings_insecure_confirmContent =>
      '开启后，此面板的 API 请求会接受自签名证书和不受信任证书。这会降低连接安全性，只应在你信任目标服务器时开启。';

  @override
  String get settings_insecure_enable => '开启';

  @override
  String get settings_timeout_placeholder => '例如：60';

  @override
  String get settings_timeout_description => '用于 App 内所有面板 API 请求。范围 5-300 秒。';

  @override
  String get settings_timeout_errorEmpty => '请输入超时时间';

  @override
  String get settings_timeout_errorRange => '请输入 5-300 秒之间的数值';

  @override
  String get settings_timeout_updated => '请求超时已更新';

  @override
  String get settings_headers_placeholder => 'X-Header-Name: value';

  @override
  String get settings_headers_description =>
      '每行一个 Header，格式为 Key: Value。留空表示清除自定义 Header。';

  @override
  String get settings_headers_cleared => '自定义 Header 已清空';

  @override
  String get settings_headers_updated => '自定义 Header 已更新';

  @override
  String settings_headers_errorFormat(int line) {
    return '第 $line 行格式应为 Key: Value';
  }

  @override
  String settings_headers_errorEmptyKey(int line) {
    return '第 $line 行 Header 名不能为空';
  }

  @override
  String settings_headers_errorEmptyValue(int line) {
    return '第 $line 行 Header 值不能为空';
  }

  @override
  String settings_headers_errorInvalidKey(int line) {
    return '第 $line 行 Header 名不能包含空格或冒号';
  }

  @override
  String get settings_cache_sectionTitle => '本机缓存';

  @override
  String get settings_cache_footer => '仅清理系统临时目录和应用缓存目录，不影响已保存的面板信息。';

  @override
  String settings_cache_errorFooter(String error) {
    return '错误信息: $error';
  }

  @override
  String get settings_cache_sizeTitle => '缓存大小';

  @override
  String get settings_cache_clearTitle => '清理缓存';

  @override
  String get settings_cache_calculating => '计算中...';

  @override
  String get settings_cache_readFailed => '读取失败';

  @override
  String get settings_cache_confirmContent =>
      '将删除：本机临时缓存文件。\n\n不会删除：面板配置、API Key、下载文件或购买状态。';

  @override
  String get settings_cache_clearAction => '清理';

  @override
  String get settings_cache_cleared => '缓存已清理';

  @override
  String get settings_cache_clearFailed => '清理失败';

  @override
  String get settings_appIcon_selectTitle => '选择图标';

  @override
  String get settings_appIcon_default => '默认';

  @override
  String get settings_appIcon_dark => '深色';

  @override
  String get settings_appIcon_adaptive => '自适应';

  @override
  String get settings_appIcon_hint => '提示：切换图标可能在某些系统版本上会有短暂延迟。';

  @override
  String get settings_appIcon_unsupported => '当前平台不支持切换 App 图标';

  @override
  String get settings_appIcon_failedTitle => '切换图标失败';

  @override
  String get settings_cardStyle_selectTitle => '选择样式';

  @override
  String get settings_cardStyle_terminal => '终端';

  @override
  String get settings_cardStyle_simple => '简洁';

  @override
  String get panelSettings_title => '面板设置';

  @override
  String get panelSettings_panel => '面板';

  @override
  String get panelSettings_security => '安全';

  @override
  String get panelSettings_alerts => '告警通知';

  @override
  String get panelSettings_backupAccounts => '备份账号';

  @override
  String get panelSettings_snapshots => '快照';

  @override
  String get panelSettings_about => '关于';

  @override
  String get panelSettings_basicInfo => '基本信息';

  @override
  String get panelSettings_defaultAccessAddress => '默认访问地址';

  @override
  String get panelSettings_notSet => '未设置';

  @override
  String get panelSettings_defaultAccessAddressPlaceholder => '请输入默认访问地址';

  @override
  String get panelSettings_panelUsername => '面板用户名';

  @override
  String get panelSettings_changePanelUsername => '修改面板用户名';

  @override
  String get panelSettings_newPanelUsernamePlaceholder => '请输入新面板用户名';

  @override
  String get panelSettings_panelLoginPassword => '面板登录密码';

  @override
  String get panelSettings_changePanelLoginPassword => '修改面板登录密码';

  @override
  String get panelSettings_passwordUpdated => '密码已更新';

  @override
  String get panelSettings_passwordUpdateFailed => '密码更新失败';

  @override
  String get panelSettings_displaySettingsWebOnly => '显示设置（仅影响 Web 界面）';

  @override
  String get panelSettings_theme => '主题';

  @override
  String get panelSettings_themeLight => '浅色';

  @override
  String get panelSettings_themeDark => '深色';

  @override
  String get panelSettings_language => '语言';

  @override
  String get panelSettings_languageZh => '中文';

  @override
  String get panelSettings_languageZhHant => '繁體中文';

  @override
  String get panelSettings_languageJa => '日本語';

  @override
  String get panelSettings_languageMs => 'Bahasa Melayu';

  @override
  String get panelSettings_languagePtBr => 'Português (Brasil)';

  @override
  String get panelSettings_tabNavigation => '标签页导航';

  @override
  String get panelSettings_tabNavigationSubtitle => '在顶栏显示页面标签';

  @override
  String get panelSettings_securitySettings => '安全设置';

  @override
  String get panelSettings_sessionTimeout => '会话超时';

  @override
  String get panelSettings_neverTimeout => '永不超时';

  @override
  String panelSettings_secondsValue(String seconds) {
    return '$seconds 秒';
  }

  @override
  String get panelSettings_sessionTimeoutPlaceholder => '0 = 永不超时';

  @override
  String get panelSettings_sessionTimeoutDescription =>
      '设置面板登录会话的超时时间（秒）。设为 0 表示永不超时。';

  @override
  String get panelSettings_previewProgram => '预览体验计划';

  @override
  String get panelSettings_previewProgramSubtitle => '获取 1Panel 的预览版本';

  @override
  String get panelSettings_advancedSettings => '高级设置';

  @override
  String get panelSettings_apiInterface => 'API 接口';

  @override
  String get panelSettings_enabled => '已启用';

  @override
  String get panelSettings_disabled => '未启用';

  @override
  String get panelSettings_settingUpdated => '设置已更新';

  @override
  String get panelSettings_updateFailed => '更新失败';

  @override
  String get panelSettings_saveFailed => '保存失败';

  @override
  String get panelSettings_accessControl => '访问控制';

  @override
  String get panelSettings_panelPort => '面板端口';

  @override
  String get panelSettings_portPlaceholder => '请输入端口号 (1-65535)';

  @override
  String get panelSettings_bindAddress => '绑定地址';

  @override
  String get panelSettings_securityEntrance => '安全入口';

  @override
  String get panelSettings_securityEntrancePlaceholder => '5-116 位字母数字';

  @override
  String get panelSettings_securityEntranceLengthError => '长度需在 5-116 位之间';

  @override
  String get panelSettings_ipWhitelist => 'IP 白名单';

  @override
  String get panelSettings_unrestricted => '未限制';

  @override
  String get panelSettings_ipWhitelistPlaceholder => '每行一个 IP 或 CIDR';

  @override
  String get panelSettings_bindDomain => '绑定域名';

  @override
  String get panelSettings_closeSsl => '关闭 SSL';

  @override
  String get panelSettings_panelSsl => '面板 SSL';

  @override
  String get panelSettings_closeSslContent => '关闭 SSL 后将通过 HTTP 访问面板，是否继续？';

  @override
  String get panelSettings_sslDisabled => 'SSL 已关闭';

  @override
  String get panelSettings_operationFailed => '操作失败';

  @override
  String get panelSettings_securityPolicy => '安全策略';

  @override
  String get panelSettings_passwordExpiration => '密码过期时间';

  @override
  String get panelSettings_neverExpires => '永不过期';

  @override
  String panelSettings_daysValue(String days) {
    return '$days 天';
  }

  @override
  String get panelSettings_passwordExpirationDays => '密码过期天数';

  @override
  String get panelSettings_passwordExpirationPlaceholder => '0 = 永不过期';

  @override
  String get panelSettings_passwordComplexity => '密码复杂度验证';

  @override
  String get panelSettings_passwordComplexitySubtitle => '要求密码包含大小写字母、数字和特殊字符';

  @override
  String get panelSettings_mfa => '两步验证';

  @override
  String get panelSettings_mfaTwoFactor => 'MFA 两步验证';

  @override
  String get panelSettings_closeMfa => '关闭 MFA';

  @override
  String get panelSettings_closeMfaContent => '关闭两步验证将降低账户安全性，是否继续？';

  @override
  String get panelSettings_other => '其他';

  @override
  String get panelSettings_noAuthResponseCode => '未认证响应码';

  @override
  String get panelSettings_alertList => '告警列表';

  @override
  String get panelSettings_alertLogs => '告警日志';

  @override
  String get panelSettings_noAlertRules => '暂无告警规则';

  @override
  String panelSettings_alertCardMeta(String type, String method) {
    return '类型: $type  方式: $method';
  }

  @override
  String get panelSettings_deleted => '已删除';

  @override
  String get panelSettings_deleteFailed => '删除失败';

  @override
  String get panelSettings_logsCleared => '日志已清空';

  @override
  String get panelSettings_clearFailed => '清空失败';

  @override
  String get panelSettings_clearLogs => '清空日志';

  @override
  String get panelSettings_noLogs => '暂无日志';

  @override
  String get panelSettings_notificationMethods => '通知方式';

  @override
  String get panelSettings_emailNotification => '邮件通知';

  @override
  String get panelSettings_smtpSubtitle => '配置 SMTP 邮件发送';

  @override
  String get panelSettings_webhookSubtitle => '配置 Webhook';

  @override
  String get panelSettings_weCom => '企业微信';

  @override
  String get panelSettings_dingTalk => '钉钉';

  @override
  String get panelSettings_feishu => '飞书';

  @override
  String get panelSettings_emailTodo => '邮件配置功能即将上线';

  @override
  String get panelSettings_weComTodo => '企业微信配置功能即将上线';

  @override
  String get panelSettings_dingTalkTodo => '钉钉配置功能即将上线';

  @override
  String get panelSettings_feishuTodo => '飞书配置功能即将上线';

  @override
  String get panelSettings_barkTodo => 'Bark 配置功能即将上线';

  @override
  String get panelSettings_noBackupAccounts => '暂无备份账号';

  @override
  String get panelSettings_addBackupAccount => '添加备份账号';

  @override
  String get panelSettings_editBackupAccount => '编辑备份账号';

  @override
  String get panelSettings_tokenRefreshed => 'Token 已刷新';

  @override
  String get panelSettings_refreshFailed => '刷新失败';

  @override
  String get panelSettings_deleteBackupAccount => '删除备份账号';

  @override
  String panelSettings_deleteBackupAccountConfirm(String name) {
    return '确定要删除备份账号 \"$name\" 吗？';
  }

  @override
  String get panelSettings_confirmDelete => '确定删除';

  @override
  String get panelSettings_authInfo => '认证信息';

  @override
  String get panelSettings_storageSettings => '存储设置';

  @override
  String get panelSettings_name => '名称';

  @override
  String get panelSettings_namePlaceholder => '输入账号名称';

  @override
  String get panelSettings_type => '类型';

  @override
  String get panelSettings_address => '地址';

  @override
  String get panelSettings_serverAddress => '服务器地址';

  @override
  String get panelSettings_username => '用户名';

  @override
  String get panelSettings_sshUsername => 'SSH 用户名';

  @override
  String get panelSettings_password => '密码';

  @override
  String get panelSettings_sshPassword => 'SSH 密码';

  @override
  String get panelSettings_privateKey => '私钥';

  @override
  String get panelSettings_privateKeyPlaceholder => '粘贴 SSH 私钥';

  @override
  String get panelSettings_keyPassphrase => '密钥密码';

  @override
  String get panelSettings_keyPassphrasePlaceholder => '私钥密码（可选）';

  @override
  String get panelSettings_webdavAddress => 'WebDAV 服务器地址';

  @override
  String get panelSettings_webdavUsername => 'WebDAV 用户名';

  @override
  String get panelSettings_webdavPassword => 'WebDAV 密码';

  @override
  String get panelSettings_operator => '操作员';

  @override
  String get panelSettings_upyunOperatorName => '又拍云操作员名称';

  @override
  String get panelSettings_operatorPassword => '操作员密码';

  @override
  String get panelSettings_domain => '域名';

  @override
  String get panelSettings_refreshTokenPlaceholder => '授权获取的 Refresh Token';

  @override
  String get panelSettings_aliyunRefreshToken => '阿里云盘 Refresh Token';

  @override
  String get panelSettings_driveIdPlaceholder => '网盘 ID (drive_id)';

  @override
  String get panelSettings_cnRegion => '世纪互联 (国内)';

  @override
  String get panelSettings_endpointWithScheme => 'Endpoint 地址 (需含协议)';

  @override
  String get panelSettings_authMode => '认证方式';

  @override
  String get panelSettings_authPassword => '密码';

  @override
  String get panelSettings_authKey => '密钥';

  @override
  String get panelSettings_backupPath => '备份路径';

  @override
  String get panelSettings_remoteBackupDirectory => '远程备份目录';

  @override
  String get panelSettings_optional => '可选';

  @override
  String get panelSettings_serviceName => '服务名称';

  @override
  String get panelSettings_selectBucket => '选择 Bucket';

  @override
  String get panelSettings_loadBucket => '加载 Bucket';

  @override
  String get panelSettings_testConnection => '测试连接';

  @override
  String get panelSettings_saveSettings => '保存设置';

  @override
  String get panelSettings_connectionSucceeded => '连接成功';

  @override
  String get panelSettings_connectionFailed => '连接失败';

  @override
  String get panelSettings_bucketNotFound => '未找到 Bucket';

  @override
  String get panelSettings_enterAccountName => '请输入账号名称';

  @override
  String get panelSettings_enterRefreshToken => '请填写 Refresh Token';

  @override
  String get panelSettings_enterAuthInfo => '请填写认证信息';

  @override
  String get panelSettings_added => '已添加';

  @override
  String get panelSettings_updated => '已更新';

  @override
  String get panelSettings_noSnapshots => '暂无快照';

  @override
  String get panelSettings_createSnapshot => '创建快照';

  @override
  String get panelSettings_importSnapshot => '导入快照';

  @override
  String panelSettings_snapshotVersion(String version) {
    return '版本: $version';
  }

  @override
  String get panelSettings_log => '日志';

  @override
  String get panelSettings_restore => '恢复';

  @override
  String panelSettings_snapshotLogTitle(String name) {
    return '快照: $name';
  }

  @override
  String get panelSettings_restoreSnapshot => '恢复快照';

  @override
  String panelSettings_restoreSnapshotConfirm(String name) {
    return '确定要恢复快照 \"$name\" 吗？此操作可能需要一些时间。';
  }

  @override
  String get panelSettings_snapshotRestoreStarted => '快照恢复已启动';

  @override
  String get panelSettings_restoreFailed => '恢复失败';

  @override
  String get panelSettings_deleteSnapshot => '删除快照';

  @override
  String panelSettings_deleteSnapshotConfirm(String name) {
    return '确定要删除快照 \"$name\" 吗？';
  }

  @override
  String get panelSettings_baseInfo => '基础信息';

  @override
  String get panelSettings_remarkDescription => '备注描述';

  @override
  String get panelSettings_compressionPassword => '压缩密码';

  @override
  String get panelSettings_storageAccounts => '存储账号';

  @override
  String get panelSettings_dataContent => '数据内容';

  @override
  String get panelSettings_extraOptions => '附加选项';

  @override
  String get panelSettings_dockerConfig => 'Docker 配置';

  @override
  String get panelSettings_monitorData => '监控数据';

  @override
  String get panelSettings_logFiles => '日志文件';

  @override
  String get panelSettings_operationLog => '操作日志';

  @override
  String get panelSettings_loginLog => '登录日志';

  @override
  String get panelSettings_systemLog => '系统日志';

  @override
  String get panelSettings_taskLog => '任务日志';

  @override
  String get panelSettings_addBackupAccountFirst => '请先在设置中添加备份账号';

  @override
  String get panelSettings_downloadNode => '下载节点';

  @override
  String get panelSettings_appData => '应用数据';

  @override
  String get panelSettings_panelData => '面板数据';

  @override
  String get panelSettings_backupData => '备份数据';

  @override
  String get panelSettings_timeout => '超时时间';

  @override
  String get panelSettings_chooseAtLeastOneSourceAccount => '请先选择至少一个源账号';

  @override
  String get panelSettings_chooseDownloadAccount => '请选择下载账号';

  @override
  String get panelSettings_chooseAtLeastOneBackupAccount => '请选择至少一个备份账号';

  @override
  String get panelSettings_chooseDownloadAccountTitle => '选择下载账号';

  @override
  String get panelSettings_second => '秒';

  @override
  String get panelSettings_minute => '分钟';

  @override
  String get panelSettings_hour => '小时';

  @override
  String get panelSettings_snapshotCreateStarted => '快照创建已启动';

  @override
  String get panelSettings_createFailed => '创建失败';

  @override
  String get panelSettings_syncSnapshot => '同步快照';

  @override
  String get panelSettings_importSnapshotHelp =>
      '从备份账号中导入已有的快照文件到面板管理。请选择存有快照文件的备份账号。';

  @override
  String get panelSettings_noBackupAccountsAddFirst => '暂无备份账号，请先添加备份账号';

  @override
  String get panelSettings_selectBackupAccount => '选择备份账号';

  @override
  String get panelSettings_sync => '同步';

  @override
  String get panelSettings_syncStarted => '同步已启动';

  @override
  String get panelSettings_syncFailed => '同步失败';

  @override
  String get panelSettings_changePassword => '修改密码';

  @override
  String get panelSettings_currentPassword => '当前密码';

  @override
  String get panelSettings_currentPasswordPlaceholder => '请输入当前密码';

  @override
  String get panelSettings_newPassword => '新密码';

  @override
  String get panelSettings_newPasswordPlaceholder => '请输入新密码';

  @override
  String get panelSettings_confirmNewPassword => '确认新密码';

  @override
  String get panelSettings_confirmNewPasswordPlaceholder => '请再次输入新密码';

  @override
  String get panelSettings_general => '常规';

  @override
  String get panelSettings_enableApi => '开启 API';

  @override
  String get panelSettings_enableApiSubtitle => '允许通过 API 访问面板功能';

  @override
  String get panelSettings_credentials => '身份凭证';

  @override
  String get panelSettings_apiKey => 'API 密钥';

  @override
  String get panelSettings_keyCopied => '密钥已复制';

  @override
  String get panelSettings_resetKey => '重置密钥';

  @override
  String get panelSettings_resetKeySubtitle => '生成新的 API Key，旧密钥将失效';

  @override
  String get panelSettings_apiWhitelistPlaceholder => '多个 IP 用换行分隔，留空则不限制';

  @override
  String get panelSettings_validityMinutes => '有效期 (分钟)';

  @override
  String get panelSettings_apiValiditySubtitle => 'API 请求的有效时间窗口';

  @override
  String get panelSettings_minutesPlaceholder => '分钟';

  @override
  String get panelSettings_apiSecurityTip => '提示：开启 API 后请务必设置 IP 白名单以增强安全性。';

  @override
  String get panelSettings_resetApiKeyTitle => '重置 API 密钥？';

  @override
  String get panelSettings_resetApiKeyContent =>
      '重置后，当前正在使用旧密钥的程序将无法访问。确定要继续吗？';

  @override
  String get panelSettings_confirmReset => '确定重置';

  @override
  String get panelSettings_keyReset => '密钥已重置';

  @override
  String get panelSettings_resetFailed => '重置失败';

  @override
  String get panelSettings_aboutProductSubtitle => '现代化 Linux 服务器运维管理面板';

  @override
  String get panelSettings_links => '链接';

  @override
  String get panelSettings_officialDocs => '官方文档';

  @override
  String get panelSettings_community => '社区';

  @override
  String get panelSettings_communitySubtitle => '加入社区讨论';

  @override
  String get panelSettings_feedback => '问题反馈';

  @override
  String get panelSettings_feedbackSubtitle => '提交 Issue';

  @override
  String get panelSettings_client => '客户端';

  @override
  String get panelSettings_clientSubtitle => '第三方 iOS 管理客户端';

  @override
  String get cronjobs_title => '计划任务';

  @override
  String get cronjobs_searchPlaceholder => '搜索计划任务...';

  @override
  String get cronjobs_emptyTitle => '暂无计划任务';

  @override
  String get cronjobs_emptySubtitle => '创建计划任务来自动化你的运维工作';

  @override
  String get cronjobs_newTask => '新建任务';

  @override
  String get cronjobs_noSearchResults => '未找到结果';

  @override
  String cronjobs_noSearchResultsSubtitle(String query) {
    return '没有匹配 \"$query\" 的计划任务';
  }

  @override
  String get cronjobs_typeShell => 'Shell 脚本';

  @override
  String get cronjobs_typeApp => '应用备份';

  @override
  String get cronjobs_typeWebsite => '网站备份';

  @override
  String get cronjobs_typeDatabase => '数据库备份';

  @override
  String get cronjobs_typeDirectory => '目录备份';

  @override
  String get cronjobs_typeLog => '日志备份';

  @override
  String get cronjobs_typeCurl => 'URL 请求';

  @override
  String get cronjobs_typeCutWebsiteLog => '日志切割';

  @override
  String get cronjobs_typeClean => '磁盘清理';

  @override
  String get cronjobs_typeSnapshot => '系统快照';

  @override
  String get cronjobs_typeNtp => '时间同步';

  @override
  String get cronjobs_typeSyncIpGroup => 'IP 同步';

  @override
  String get cronjobs_typeCleanLog => '日志清理';

  @override
  String get cronjobs_statusEnabled => '已启用';

  @override
  String get cronjobs_statusDisabled => '已禁用';

  @override
  String get cronjobs_statusPending => '等待中';

  @override
  String cronjobs_retentionCopies(int count) {
    return '保留 $count 份';
  }

  @override
  String get cronjobs_notExecutedYet => '尚未执行';

  @override
  String get cronjobs_runSuccess => '执行成功';

  @override
  String get cronjobs_runFailed => '执行失败';

  @override
  String get cronjobs_statusSuccess => '成功';

  @override
  String get cronjobs_statusFailed => '失败';

  @override
  String get cronjobs_statusWaiting => '等待中';

  @override
  String get cronjobs_statusUnexecuted => '未执行';

  @override
  String cronjobs_recordsTitle(String name) {
    return '$name - 执行记录';
  }

  @override
  String get cronjobs_noRecordsTitle => '暂无执行记录';

  @override
  String get cronjobs_noRecordsSubtitle => '该任务尚未执行过';

  @override
  String get cronjobs_taskRunSuccess => '任务执行成功';

  @override
  String get cronjobs_noDetails => '无详细信息';

  @override
  String get cronjobs_executionLog => '执行日志';

  @override
  String get cronjobs_management => '任务管理';

  @override
  String get cronjobs_enable => '启用';

  @override
  String get cronjobs_disable => '禁用';

  @override
  String get cronjobs_enableSubtitle => '启用此计划任务';

  @override
  String get cronjobs_disableSubtitle => '暂停此计划任务';

  @override
  String get cronjobs_runOnce => '立即执行';

  @override
  String get cronjobs_runOnceSubtitle => '手动触发一次执行';

  @override
  String get cronjobs_editSubtitle => '修改计划任务配置';

  @override
  String get cronjobs_records => '执行记录';

  @override
  String get cronjobs_recordsSubtitle => '查看历史执行记录和日志';

  @override
  String get cronjobs_dangerZone => '危险区域';

  @override
  String get cronjobs_deleteSubtitle => '删除此计划任务';

  @override
  String get cronjobs_deleteTitle => '删除计划任务';

  @override
  String cronjobs_deleteConfirm(String name) {
    return '确定要删除计划任务 \"$name\" 吗？';
  }

  @override
  String get cronjobs_enableTitle => '启用计划任务';

  @override
  String get cronjobs_disableTitle => '禁用计划任务';

  @override
  String get cronjobs_enableConfirm => '确定要启用此计划任务吗？';

  @override
  String get cronjobs_disableConfirm => '确定要禁用此计划任务吗？';

  @override
  String get cronjobs_enableSucceeded => '启用成功';

  @override
  String get cronjobs_disableSucceeded => '禁用成功';

  @override
  String get cronjobs_enableFailed => '启用失败';

  @override
  String get cronjobs_disableFailed => '禁用失败';

  @override
  String get cronjobs_runTriggered => '已触发执行';

  @override
  String get cronjobs_runTriggerFailed => '触发失败';

  @override
  String get cronjobs_deleteSucceeded => '删除成功';

  @override
  String get cronjobs_deleteFailed => '删除失败';

  @override
  String cronjobs_everyMinutes(String n) {
    return '每隔 $n 分钟';
  }

  @override
  String cronjobs_everySeconds(String n) {
    return '每隔 $n 秒';
  }

  @override
  String cronjobs_everyHourAtMinute(String minute) {
    return '每小时第 $minute 分钟';
  }

  @override
  String cronjobs_dailyAt(String time) {
    return '每天 $time';
  }

  @override
  String cronjobs_everyHours(String n) {
    return '每隔 $n 小时';
  }

  @override
  String cronjobs_weeklyAt(String weekday, String time) {
    return '每$weekday $time';
  }

  @override
  String cronjobs_monthlyAt(String day, String time) {
    return '每月 $day 日 $time';
  }

  @override
  String cronjobs_everyDaysAt(String n, String time) {
    return '每隔 $n 天 $time';
  }

  @override
  String get cronjobs_weekdaySun => '周日';

  @override
  String get cronjobs_weekdayMon => '周一';

  @override
  String get cronjobs_weekdayTue => '周二';

  @override
  String get cronjobs_weekdayWed => '周三';

  @override
  String get cronjobs_weekdayThu => '周四';

  @override
  String get cronjobs_weekdayFri => '周五';

  @override
  String get cronjobs_weekdaySat => '周六';

  @override
  String cronjobs_weekdayFallback(String day) {
    return '周$day';
  }

  @override
  String get cronjobs_formCreateTitle => '新建计划任务';

  @override
  String get cronjobs_formEditTitle => '编辑计划任务';

  @override
  String get cronjobs_basicInfo => '基本信息';

  @override
  String get cronjobs_taskName => '任务名称';

  @override
  String get cronjobs_schedule => '执行周期';

  @override
  String get cronjobs_cronExpression => 'Cron 表达式';

  @override
  String get cronjobs_customExpression => '自定义表达式';

  @override
  String get cronjobs_executionSettings => '执行设置';

  @override
  String get cronjobs_retainCopies => '保留份数';

  @override
  String get cronjobs_retryTimes => '重试次数';

  @override
  String get cronjobs_ignoreErrors => '忽略错误';

  @override
  String get cronjobs_scriptConfig => '脚本配置';

  @override
  String get cronjobs_runInContainer => '在容器中执行';

  @override
  String get cronjobs_container => '容器';

  @override
  String get cronjobs_chooseContainer => '选择容器';

  @override
  String get cronjobs_customCommand => '自定义命令';

  @override
  String get cronjobs_command => '命令';

  @override
  String get cronjobs_customExecutor => '自定义执行器';

  @override
  String get cronjobs_executor => '执行器';

  @override
  String get cronjobs_runUser => '运行用户';

  @override
  String get cronjobs_scriptSource => '脚本来源';

  @override
  String get cronjobs_scriptSourceManual => '手动编辑';

  @override
  String get cronjobs_scriptSourceLibrary => '脚本库';

  @override
  String get cronjobs_scriptSourceFilePath => '文件路径';

  @override
  String get cronjobs_scriptContent => '脚本内容';

  @override
  String get cronjobs_editScript => '编辑脚本';

  @override
  String get cronjobs_tapToEditScript => '点击编辑脚本...';

  @override
  String get cronjobs_script => '脚本';

  @override
  String get cronjobs_chooseScript => '选择脚本';

  @override
  String get cronjobs_scriptFile => '脚本文件';

  @override
  String get cronjobs_chooseFile => '选择文件';

  @override
  String get cronjobs_chooseScriptFile => '选择脚本文件';

  @override
  String get cronjobs_app => '应用';

  @override
  String get cronjobs_website => '网站';

  @override
  String get cronjobs_allWebsites => '全部网站（all）';

  @override
  String get cronjobs_databaseType => '数据库类型';

  @override
  String get cronjobs_database => '数据库';

  @override
  String get cronjobs_backupArgs => '备份参数';

  @override
  String get cronjobs_mysqlArgsHelp => '适用于 MySQL 类型数据库的备份参数';

  @override
  String get cronjobs_backupType => '备份类型';

  @override
  String get cronjobs_directory => '目录';

  @override
  String get cronjobs_file => '文件';

  @override
  String get cronjobs_backupDirectory => '备份目录';

  @override
  String get cronjobs_chooseDirectory => '选择目录';

  @override
  String get cronjobs_addFile => '添加文件';

  @override
  String get cronjobs_addUrl => '添加 URL';

  @override
  String get cronjobs_includeImages => '包含镜像';

  @override
  String get cronjobs_excludeApps => '排除应用';

  @override
  String get cronjobs_cleanScope => '清理范围';

  @override
  String get cronjobs_websiteLogs => '网站日志';

  @override
  String get cronjobs_backupSettings => '备份设置';

  @override
  String get cronjobs_compressionPassword => '压缩密码';

  @override
  String get cronjobs_emptyMeansNoEncryption => '留空则不加密';

  @override
  String get cronjobs_backupAccount => '备份账号';

  @override
  String get cronjobs_chooseBackupAccount => '选择备份账号';

  @override
  String get cronjobs_downloadAccount => '下载账号';

  @override
  String get cronjobs_chooseDownloadAccount => '选择下载账号';

  @override
  String get cronjobs_exclusionRules => '排除规则';

  @override
  String get cronjobs_addExclusionRule => '添加排除规则';

  @override
  String get cronjobs_exclusionRulePlaceholder => '例如: *.log, .git';

  @override
  String get cronjobs_taskType => '任务类型';

  @override
  String get cronjobs_frequency => '执行频率';

  @override
  String get cronjobs_chooseWeekday => '选择星期';

  @override
  String get cronjobs_chooseDate => '选择日期';

  @override
  String get cronjobs_intervalDays => '间隔天数';

  @override
  String get cronjobs_executionTime => '执行时间';

  @override
  String get cronjobs_chooseTime => '选择时间';

  @override
  String get cronjobs_intervalMinutes => '间隔分钟';

  @override
  String get cronjobs_intervalHours => '间隔小时';

  @override
  String get cronjobs_timeout => '超时时间';

  @override
  String get cronjobs_seconds => '秒';

  @override
  String cronjobs_selectLabel(String label) {
    return '选择$label';
  }

  @override
  String get cronjobs_specPerMonth => '每月';

  @override
  String get cronjobs_specPerWeek => '每周';

  @override
  String get cronjobs_specPerDay => '每天';

  @override
  String get cronjobs_specPerHour => '每小时';

  @override
  String get cronjobs_specPerNDay => '每隔 N 天';

  @override
  String get cronjobs_specPerNHour => '每隔 N 小时';

  @override
  String get cronjobs_specPerNMinute => '每隔 N 分钟';

  @override
  String get appStore_title => '应用商店';

  @override
  String get appStore_searchPlaceholder => '搜索应用...';

  @override
  String get appStore_searchApps => '搜索应用';

  @override
  String get appStore_syncRemoteApps => '更新远程应用';

  @override
  String get appStore_syncRemoteAppsFailed => '更新远程应用失败';

  @override
  String get appStore_syncLocalApps => '同步本地应用';

  @override
  String get appStore_syncLocalAppsFailed => '同步本地应用失败';

  @override
  String get appStore_viewIgnoredApps => '查看忽略应用';

  @override
  String get appStore_noMatchingApps => '没有匹配的应用';

  @override
  String get appStore_loadAllAppsFailed => '加载全部应用失败';

  @override
  String get appStore_allFilter => '全部';

  @override
  String get appStore_noMatchingInstalledApps => '没有匹配的已安装应用';

  @override
  String get appStore_noInstalledApps => '暂无已安装应用';

  @override
  String get appStore_loadStoreFailed => '加载应用商店失败';

  @override
  String get appStore_noUpdatableApps => '暂无可更新应用';

  @override
  String get appStore_noRelatedApps => '未找到相关应用';

  @override
  String get appStore_allAppsUpToDate => '所有应用均已是最新版本';

  @override
  String get appStore_tryAnotherSearch => '请尝试更换搜索词';

  @override
  String get appStore_loadMoreFailed => '加载更多失败';

  @override
  String get appStore_searchFailed => '搜索应用失败';

  @override
  String get appStore_addedFavorite => '已加入收藏';

  @override
  String get appStore_removedFavorite => '已取消收藏';

  @override
  String get appStore_operationFailed => '操作失败';

  @override
  String get appStore_rebuildStarted => '已开始重建';

  @override
  String get appStore_rebuildFailed => '重建失败';

  @override
  String get appStore_restartSent => '重启指令已发送';

  @override
  String get appStore_restartFailed => '重启失败';

  @override
  String get appStore_stopSent => '停止指令已发送';

  @override
  String get appStore_stopFailed => '停止失败';

  @override
  String get appStore_startSent => '启动指令已发送';

  @override
  String get appStore_startFailed => '启动失败';

  @override
  String get appStore_refreshFailed => '刷新失败';

  @override
  String get appStore_loadMoreBackupsFailed => '加载更多备份失败';

  @override
  String get appStore_containerIdFailed => '获取 container id 失败';

  @override
  String get appStore_dockerNotFoundWarning =>
      '未检测到 Docker 容器服务，应用安装和运行依赖 Docker。';

  @override
  String get appStore_dockerNotRunningWarning =>
      'Docker 容器服务未运行，应用安装和运行依赖 Docker。';

  @override
  String get appStore_dockerAbnormalWarning => 'Docker 容器服务状态异常，应用安装和运行可能不可用。';

  @override
  String get appStore_rebuildApp => '重建应用';

  @override
  String appStore_rebuildConfirm(String name) {
    return '确定要重建「$name」吗？将重新创建应用容器，期间服务可能中断。';
  }

  @override
  String get appStore_rebuild => '重建';

  @override
  String get appStore_restartApp => '重启应用';

  @override
  String appStore_restartConfirm(String name) {
    return '确定要重启「$name」吗？服务将短暂中断。';
  }

  @override
  String get appStore_restart => '重启';

  @override
  String get appStore_stopApp => '停止应用';

  @override
  String appStore_stopConfirm(String name) {
    return '确定要停止「$name」吗？';
  }

  @override
  String get appStore_stop => '停止';

  @override
  String get appStore_startApp => '启用应用';

  @override
  String appStore_startConfirm(String name) {
    return '确定要启动「$name」吗？';
  }

  @override
  String get appStore_start => '启动';

  @override
  String get appStore_uninstallApp => '卸载应用';

  @override
  String appStore_uninstallConfirm(String name) {
    return '确定要从服务器卸载「$name」吗？';
  }

  @override
  String get appStore_confirmUninstall => '确认卸载';

  @override
  String get appStore_forceUninstall => '强制卸载';

  @override
  String get appStore_forceUninstallDescription => '强制删除，会忽略删除过程中产生的错误并最终删除元数据';

  @override
  String get appStore_deleteBackups => '删除备份';

  @override
  String get appStore_deleteBackupsDescription => '同时删除该应用关联的所有备份文件';

  @override
  String get appStore_deleteImages => '删除镜像';

  @override
  String get appStore_deleteImagesDescription => '删除应用相关镜像，删除失败任务不会终止';

  @override
  String appStore_uninstallingTitle(String name) {
    return '正在卸载 $name';
  }

  @override
  String appStore_uninstallRequestFailed(String error) {
    return '提交卸载请求失败: $error';
  }

  @override
  String get appStore_selectInstallVersion => '选择安装版本';

  @override
  String appStore_currentVersion(String version) {
    return '当前版本: $version';
  }

  @override
  String get appStore_newVersionFound => '发现新版本';

  @override
  String get appStore_ignore => '忽略';

  @override
  String get appStore_update => '更新';

  @override
  String get appStore_ignoreUpdate => '忽略更新';

  @override
  String get appStore_ignoreUpdateSubtitle => '请选择忽略升级的范围';

  @override
  String get appStore_confirmIgnore => '确定忽略';

  @override
  String get appStore_ignoreAllVersions => '忽略后续所有版本';

  @override
  String get appStore_ignoreSpecificVersion => '忽略指定版本';

  @override
  String appStore_fetchVersionsFailed(String error) {
    return '拉取版本失败: $error';
  }

  @override
  String get appStore_updateIgnored => '已忽略更新';

  @override
  String appStore_operationFailedWithError(String error) {
    return '操作失败: $error';
  }

  @override
  String get appStore_appInfo => '应用信息';

  @override
  String get appStore_installDirectory => '安装目录';

  @override
  String get appStore_directoryUnavailable => '未获取到目录';

  @override
  String get appStore_backup => '备份';

  @override
  String get appStore_runBackup => '运行备份';

  @override
  String get appStore_runBackupSubtitle => '创建当前应用备份';

  @override
  String get appStore_runtimeControl => '运行控制';

  @override
  String get appStore_rebuildSubtitle => '重新创建应用容器';

  @override
  String get appStore_restartSubtitle => '重启应用服务';

  @override
  String get appStore_stopRunningApp => '停止应用';

  @override
  String get appStore_enableApp => '启用应用';

  @override
  String get appStore_stopRunningSubtitle => '停止当前运行中的应用';

  @override
  String get appStore_startCurrentSubtitle => '启动当前应用';

  @override
  String get appStore_maintenance => '维护';

  @override
  String get appStore_modifyParams => '修改参数';

  @override
  String get appStore_modifyParamsSubtitle => '调整应用安装参数';

  @override
  String get appStore_runTerminal => '运行终端';

  @override
  String get appStore_enterContainer => '进入应用容器';

  @override
  String get appStore_viewLogs => '查看日志';

  @override
  String get appStore_viewLogsSubtitle => '查看应用运行日志';

  @override
  String get appStore_installLog => '安装日志';

  @override
  String get appStore_installLogSubtitle => '查看应用安装与部署记录';

  @override
  String appStore_installLogTitle(String name) {
    return '安装日志: $name';
  }

  @override
  String get appStore_uninstallSubtitle => '移除应用与相关资源';

  @override
  String get appStore_noDescription => '暂无描述';

  @override
  String get appStore_fetchVersionInfoFailed => '获取版本信息失败';

  @override
  String get appStore_install => '安装';

  @override
  String get appStore_installed => '已安装';

  @override
  String get appStore_notInstalled => '未安装';

  @override
  String get appStore_loadDetailsFailed => '加载详情失败';

  @override
  String get appStore_intro => '应用介绍';

  @override
  String get appStore_appKey => '应用标识';

  @override
  String get appStore_architectures => '架构支持';

  @override
  String get appStore_gpuSupport => '显卡支持';

  @override
  String get appStore_supported => '支持';

  @override
  String get appStore_notSupported => '不支持';

  @override
  String get appStore_latestVersion => '最新版本';

  @override
  String get appStore_officialWebsite => '官网';

  @override
  String get appStore_documentation => '文档';

  @override
  String get appStore_statusRunning => '正运行';

  @override
  String get appStore_statusRebuilding => '重建中';

  @override
  String get appStore_statusStopped => '已停止';

  @override
  String get appStore_statusError => '异常';

  @override
  String appStore_portNotConfigured(String label) {
    return '$label 未配置';
  }

  @override
  String get appStore_installedUnknown => '已安装：未知';

  @override
  String get appStore_installedToday => '已安装：今天';

  @override
  String appStore_installedDays(int days) {
    return '已安装：$days 天';
  }

  @override
  String appStore_loadIgnoredFailed(String error) {
    return '获取忽略列表失败: $error';
  }

  @override
  String get appStore_cancelIgnored => '已取消忽略';

  @override
  String appStore_cancelIgnoreFailed(String error) {
    return '取消忽略失败: $error';
  }

  @override
  String get appStore_ignoredApps => '已忽略的应用';

  @override
  String get appStore_noIgnoredApps => '暂无忽略的应用';

  @override
  String get appStore_ignoredAllVersions => '忽略所有版本';

  @override
  String appStore_ignoredVersion(String version) {
    return '忽略版本: $version';
  }

  @override
  String get appStore_cancelIgnore => '取消忽略';

  @override
  String appStore_getConfigFailed(String error) {
    return '获取配置失败: $error';
  }

  @override
  String appStore_updateConfigFailed(String error) {
    return '更新配置失败: $error';
  }

  @override
  String get appStore_settingsUninstall => '应用卸载';

  @override
  String get appStore_settingsDeleteBackupLabel => '卸载应用-删除备份';

  @override
  String get appStore_settingsDeleteBackupSubtitle => '卸载应用时自动删除该应用的备份文件';

  @override
  String get appStore_settingsDeleteImageLabel => '卸载应用-删除镜像';

  @override
  String get appStore_settingsDeleteImageSubtitle => '卸载应用时尝试删除该应用对应的镜像';

  @override
  String get appStore_settingsUpdate => '应用更新';

  @override
  String get appStore_settingsUpgradeBackupLabel => '应用升级前备份应用';

  @override
  String get appStore_settingsUpgradeBackupSubtitle => '在执行应用升级操作前自动创建备份';

  @override
  String get appStore_settingsInstall => '应用安装';

  @override
  String get appStore_settingsInstallOpenPortLabel => '安装应用默认打开端口外部访问';

  @override
  String get appStore_settingsInstallOpenPortSubtitle => '应用安装时默认允许防火墙放行对应端口';

  @override
  String appStore_backupSheetTitle(String name) {
    return '$name 备份';
  }

  @override
  String get appStore_loadBackupsFailed => '加载备份失败';

  @override
  String get appStore_createBackupFailed => '创建备份失败';

  @override
  String get appStore_noRemark => '无备注';

  @override
  String get appStore_runDirectory => '运行目录';

  @override
  String get appStore_restore => '恢复';

  @override
  String get appStore_restoreBackup => '恢复备份';

  @override
  String get appStore_restoreBackupFailed => '恢复备份失败';

  @override
  String get appStore_deleteBackup => '删除备份';

  @override
  String appStore_deleteBackupConfirm(String fileName) {
    return '确定要删除备份文件 $fileName 吗？该操作不可撤销。';
  }

  @override
  String get appStore_deletedBackup => '已删除备份';

  @override
  String get appStore_deleteBackupFailed => '删除备份失败';

  @override
  String get appStore_startBackup => '开始备份';

  @override
  String get appStore_compressionPasswordOptional => '压缩密码（可选）';

  @override
  String get appStore_descriptionOptional => '描述（可选）';

  @override
  String get appStore_startRestore => '开始恢复';

  @override
  String get appStore_restorePasswordHint => '如果备份未设置压缩密码，请留空。';

  @override
  String get appStore_restorePasswordOptional => '恢复密码（可选）';

  @override
  String get appStore_nameRequired => '名称不能为空';

  @override
  String appStore_cpuLimitExceeded(num cpu) {
    return 'CPU 限制超出系统核心数 ($cpu核)';
  }

  @override
  String appStore_memoryLimitExceeded(num max) {
    return '内存限制超出系统上限 ($max MB)';
  }

  @override
  String appStore_installingApp(String name) {
    return '正在安装 $name';
  }

  @override
  String appStore_installRequestFailed(Object error) {
    return '安装请求失败: $error';
  }

  @override
  String get appStore_installApp => '安装应用';

  @override
  String get appStore_loadInstallConfigFailed => '加载安装配置失败';

  @override
  String get appStore_basicSettings => '基本设置';

  @override
  String get appStore_name => '名称';

  @override
  String get appStore_appRunNamePlaceholder => '应用运行名称';

  @override
  String get appStore_advancedSettings => '高级设置';

  @override
  String get appStore_containerName => '容器名称';

  @override
  String get appStore_autoGeneratedPlaceholder => '可留空，自动生成';

  @override
  String get appStore_externalPortAccess => '端口外部访问';

  @override
  String get appStore_externalPortAccessSubtitle => '允许端口外部访问会尝试放开防火墙端口';

  @override
  String get appStore_cpuLimit => 'CPU 限制';

  @override
  String appStore_cpuMaxUnit(num max) {
    return '核 (最大 $max)';
  }

  @override
  String get appStore_memoryLimit => '内存限制';

  @override
  String appStore_memoryMaxUnit(num max) {
    return 'MB (最大 $max)';
  }

  @override
  String get appStore_imageCompose => '容器镜像与编排';

  @override
  String get appStore_pullImage => '拉取镜像';

  @override
  String get appStore_pullImageSubtitle => '在应用启动之前执行 docker pull 来拉取镜像';

  @override
  String get appStore_editCompose => '编辑 Compose';

  @override
  String get appStore_editComposeSubtitle => '启用后可手动调整 Docker Compose 配置';

  @override
  String get appStore_restartPolicy => '重启规则';

  @override
  String get appStore_restartAlways => '一直重启';

  @override
  String get appStore_restartNo => '不重启';

  @override
  String get appStore_restartOnFailure => '失败后重启';

  @override
  String get appStore_restartUnlessStopped => '未手动停止则重启';

  @override
  String get appStore_restartOnFailureHint => '说明：容器退出代码非 0 时重启，默认重启 5 次';

  @override
  String get appStore_confirmUpdate => '确认更新';

  @override
  String get appStore_confirmUpdateSubtitle => '更新参数需要重建应用容器，期间服务可能会短暂中断。是否继续？';

  @override
  String get appStore_continue => '继续';

  @override
  String get appStore_paramsUpdateSuccess => '参数更新成功，应用正在重建';

  @override
  String appStore_updateParamsFailed(Object error) {
    return '更新参数失败: $error';
  }

  @override
  String get appStore_loadParamsConfigFailed => '加载参数配置失败';

  @override
  String get appStore_basicParams => '基本参数';

  @override
  String get appStore_containerDisplayNamePlaceholder => '容器显示名称';

  @override
  String get appStore_bindHostIp => '绑定主机 IP';

  @override
  String get appStore_defaultEmptyIpPlaceholder => '默认为空 (0.0.0.0)';

  @override
  String appStore_loadVersionInfoFailed(Object error) {
    return '加载版本信息失败: $error';
  }

  @override
  String appStore_getVersionDetailsFailed(Object error) {
    return '获取版本详情失败: $error';
  }

  @override
  String appStore_updateAppTaskTitle(String name) {
    return '更新应用: $name';
  }

  @override
  String appStore_upgradeTaskFailed(Object error) {
    return '提交升级任务失败: $error';
  }

  @override
  String get appStore_targetVersion => '目标版本';

  @override
  String get appStore_upgradeOptions => '升级选项';

  @override
  String get appStore_backupBeforeUpgrade => '升级前备份应用';

  @override
  String get appStore_backupBeforeUpgradeSubtitle =>
      '升级失败会使用备份自动回滚,请在日志审计-系统日志中查看失败原因';

  @override
  String get appStore_customCompose => '自定义 docker-compose.yml';

  @override
  String get appStore_customComposeSubtitle =>
      '使用自定义 docker-compose.yml 文件，可能会导致应用升级失败，如无必要，请勿使用';

  @override
  String get appStore_dockerComposeContent => 'Docker Compose 內容';

  @override
  String get appStore_upgradeNow => '立即升级';

  @override
  String websites_sslExpiresRelative(String time) {
    return '$time到期';
  }

  @override
  String get websites_primaryDomainAliasRequired => '主域名和代号不能为空';

  @override
  String get websites_selectRuntime => '请选择一个运行环境';

  @override
  String get websites_sslCertificateRequired => '启用 SSL 后必须选择一个证书';

  @override
  String get websites_ftpAccountRequired => '启用 FTP 后必须填写账号';

  @override
  String get websites_selectPort => '请选择一个端口';

  @override
  String get websites_selectDatabaseService => '请选择数据库服务';

  @override
  String get websites_proxyAddressRequired => '代理地址不能为空';

  @override
  String get websites_aliasRequired => '代号不能为空';

  @override
  String get websites_streamPortsRequired => '监听端口不能为空';

  @override
  String get websites_backendServerRequired => '至少需要一个后端服务器';

  @override
  String get websites_serverAddressRequired => '服务器地址不能为空';

  @override
  String get websites_databaseNameRequired => '请填写数据库名称';

  @override
  String get websites_databaseUsernameRequired => '请填写数据库用户名';

  @override
  String get websites_databasePasswordRequired => '请填写数据库密码';

  @override
  String get websites_createSuccess => '创建成功';

  @override
  String websites_runtimeSiteCreated(String alias, String domain) {
    return '运行环境网站 $alias（$domain）已添加';
  }

  @override
  String websites_staticSiteCreated(String alias, String domain) {
    return '静态网站 $alias（$domain）已添加';
  }

  @override
  String websites_proxySiteCreated(String alias, String domain) {
    return '反向代理 $alias（$domain）已添加';
  }

  @override
  String websites_tunnelSiteCreated(String alias) {
    return 'TCP/UDP 代理 $alias 已添加';
  }

  @override
  String get websites_createFailed => '创建失败';

  @override
  String get websites_tryAgainLater => '请稍后重试';

  @override
  String get websites_notice => '提示';

  @override
  String get websites_createRuntimeSite => '新建运行环境网站';

  @override
  String get websites_createStaticSite => '新建静态网站';

  @override
  String get websites_createProxySite => '新建反向代理';

  @override
  String get websites_createTunnelSite => '新建 TCP/UDP 代理';

  @override
  String get websites_basicConfig => '基本配置';

  @override
  String get websites_primaryDomain => '主域名';

  @override
  String get websites_alias => '代号';

  @override
  String get websites_aliasPlaceholder => '网站目录的文件夹名称（创建后不可修改）';

  @override
  String websites_relativeToRoot(String path) {
    return '相对于主目录：$path/';
  }

  @override
  String get websites_group => '分组';

  @override
  String get websites_httpPort => 'HTTP 端口';

  @override
  String get websites_port => '端口';

  @override
  String get websites_runtime => '运行环境';

  @override
  String get websites_createDatabase => '创建数据库';

  @override
  String get websites_databaseService => '数据库服务';

  @override
  String get websites_databaseName => '数据库名';

  @override
  String get websites_sslAndAccess => 'SSL 与访问';

  @override
  String get websites_proxySettings => '反向代理设置';

  @override
  String get websites_protocol => '协议';

  @override
  String get websites_proxyAddress => '代理地址';

  @override
  String get websites_loadBalancingNamePlaceholder => '负载均衡名称（创建后不可修改）';

  @override
  String get websites_listeningPort => '监听端口';

  @override
  String get websites_listeningPortPlaceholder => '例如: 3306 或 3306,3307,3308';

  @override
  String get websites_udpMode => 'UDP 模式';

  @override
  String get websites_loadBalancing => '负载均衡';

  @override
  String get websites_loadBalancingAlgorithm => '负载均衡算法';

  @override
  String get websites_roundRobin => '轮询 (Round Robin)';

  @override
  String get websites_leastConnections => '最少连接';

  @override
  String get websites_statusNormal => '正常';

  @override
  String get websites_statusDown => '停用';

  @override
  String get websites_statusBackup => '备份';

  @override
  String websites_serverNumber(int index) {
    return '服务器 $index';
  }

  @override
  String get websites_weight => '权重';

  @override
  String get websites_status => '状态';

  @override
  String get websites_addServer => '添加服务器';

  @override
  String get websites_add => '添加';

  @override
  String get websites_proxyRequiredFields => '名称、前端请求路径、后端代理地址、后端域名为必填';

  @override
  String get websites_proxyUrlInvalid => '后端代理地址必须是可访问的 http:// 或 https:// URL';

  @override
  String get websites_corsOriginsRequired => '开启跨域访问后，允许访问的域名必填';

  @override
  String get websites_serverCacheTimePositive => '服务器缓存时间必须大于 0';

  @override
  String get websites_browserCacheTimePositive => '浏览器缓存时间必须大于 0';

  @override
  String get websites_proxyCreated => '反向代理已创建';

  @override
  String get websites_proxyUpdated => '反向代理已更新';

  @override
  String get websites_saveFailedCopyDetails => '保存失败（点击复制详情）';

  @override
  String get websites_editReverseProxy => '编辑反向代理';

  @override
  String get websites_newReverseProxy => '新建反向代理';

  @override
  String get websites_name => '名称';

  @override
  String get websites_proxyNameHint => '如 api-proxy';

  @override
  String get websites_editNameLocked => '编辑模式下名称不可修改';

  @override
  String get websites_matchRule => '匹配规则';

  @override
  String get websites_matchRuleHint => '留空默认，可填 = / ^~ / ~ / ~*';

  @override
  String get websites_matchRuleHelper => '示例：= 精确匹配，^~ 前缀优先，~ 正则匹配';

  @override
  String get websites_frontendPath => '前端请求路径';

  @override
  String get websites_frontendPathHint => '如 /api';

  @override
  String get websites_backendProxyAddress => '后端代理地址';

  @override
  String get websites_backendDomain => '后端域名';

  @override
  String get websites_backendDomainHelper => '默认 \$host 会透传域名到后端';

  @override
  String get websites_cacheSettings => '缓存设置';

  @override
  String get websites_serverCacheTime => '服务器缓存时间';

  @override
  String get websites_browserCacheTime => '浏览器缓存时间';

  @override
  String get websites_enableCors => '启用 CORS';

  @override
  String get websites_allowedOriginsRequired => '请输入允许访问的域名';

  @override
  String get websites_corsSaved => '跨域配置已保存';

  @override
  String get websites_loadCorsConfigFailed => '加载跨域配置失败';

  @override
  String get websites_basicSettings => '基础设置';

  @override
  String get websites_enableCorsAccess => '启用跨域访问';

  @override
  String get websites_allowOriginsPlaceholder => '输入允许访问的域名，* 表示所有';

  @override
  String get websites_allowOriginHint =>
      'Access-Control-Allow-Origin，例如: * 或 https://example.com';

  @override
  String get websites_allowMethods => '请求方法 (allow_methods)';

  @override
  String get websites_allowMethodsHint =>
      'Access-Control-Allow-Methods，留空则允许所有方法。';

  @override
  String get websites_allowHeaders => '允许请求头 (allow_headers)';

  @override
  String get websites_allowHeadersPlaceholder => '输入允许的自定义请求头，多个用逗号分隔';

  @override
  String get websites_allowHeadersHint =>
      'Access-Control-Allow-Headers，留空表示允许常规 Header。';

  @override
  String get websites_allowCredentialsCookies => '允许携带 Credentials (Cookies)';

  @override
  String get websites_preflightFastResponseHint =>
      '对 OPTIONS 预检请求直接返回 204，不再转发给后端。';

  @override
  String get websites_allowedOrigins => '允许访问的域名';

  @override
  String get websites_allowedOriginsHint => '* 或 https://example.com';

  @override
  String get websites_allowedHeaders => '允许请求头';

  @override
  String get websites_allowCredentials => '允许携带 Cookies';

  @override
  String get websites_preflightFastResponse => '预检快速响应 (OPTIONS 204)';

  @override
  String get websites_textReplacement => '文本替换';

  @override
  String get websites_noReplaceRules => '暂无替换规则';

  @override
  String get websites_notSet => '未设置';

  @override
  String get websites_neverExpires => '永不过期';

  @override
  String websites_expiresInYears(int n) {
    return '$n 年后过期';
  }

  @override
  String websites_expiresInMonths(int n) {
    return '$n 个月后过期';
  }

  @override
  String websites_expiresInDays(int n) {
    return '$n 天后过期';
  }

  @override
  String websites_expiresInHours(int n) {
    return '$n 小时后过期';
  }

  @override
  String websites_expiresInMinutes(int n) {
    return '$n 分钟后过期';
  }

  @override
  String websites_expiredYearsAgo(int n) {
    return '$n 年前过期';
  }

  @override
  String websites_expiredMonthsAgo(int n) {
    return '$n 个月前过期';
  }

  @override
  String websites_expiredDaysAgo(int n) {
    return '$n 天前过期';
  }

  @override
  String websites_expiredHoursAgo(int n) {
    return '$n 小时前过期';
  }

  @override
  String websites_expiredMinutesAgo(int n) {
    return '$n 分钟前过期';
  }

  @override
  String get websites_justExpired => '刚刚过期';

  @override
  String get websites_expiringSoon => '即将过期';

  @override
  String get websites_staticWebsite => '静态网站';

  @override
  String get websites_runtimeWebsite => '运行环境';

  @override
  String get websites_website => '网站';

  @override
  String get websites_statusRunning => '运行中';

  @override
  String get websites_statusStopped => '已停止';

  @override
  String get websites_statusStarting => '启动中';

  @override
  String get websites_statusRestarting => '重启中';

  @override
  String get websites_statusError => '异常';

  @override
  String get websites_statusExpired => '已过期';

  @override
  String get websites_statusPendingApply => '待申请';

  @override
  String get websites_statusApplying => '申请中';

  @override
  String get websites_statusApplyFailed => '申请失败';

  @override
  String get websites_statusRestartInterrupted => '重启中断';

  @override
  String get websites_unknown => '未知';

  @override
  String get websites_dnsAutoValidation => 'DNS 自动校验';

  @override
  String get websites_dnsManualValidation => 'DNS 手动校验';

  @override
  String get websites_manualImport => '手动导入';

  @override
  String get websites_selfSignedCertificate => '自签证书';

  @override
  String get websites_masterNodePush => '主节点推送';

  @override
  String get websites_sslCertificate => 'SSL 证书';

  @override
  String get websites_openBrowserFailed => '无法打开外部浏览器';

  @override
  String get websites_unnamedWebsite => '未命名网站';

  @override
  String get websites_directoryNotSet => '未设置目录';

  @override
  String get websites_noRemark => '暂无备注';

  @override
  String get websites_sslDisabledTitle => '未启用 SSL';

  @override
  String get websites_sslDisabledMessage => '当前网站未启用 SSL。';

  @override
  String get websites_sslExpiredTitle => 'SSL 已过期';

  @override
  String websites_sslExpiredMessage(String time) {
    return '证书已在 $time。';
  }

  @override
  String get websites_sslExpiryUnknown => '未获取到证书过期时间';

  @override
  String get websites_sslEnabledTitle => 'SSL 已启用';

  @override
  String websites_sslEnabledMessage(String time) {
    return '证书将在 $time。';
  }

  @override
  String get websites_enableAntiLeech => '开启防盗链';

  @override
  String get websites_extensionSettings => '后缀设置';

  @override
  String get websites_extensionSettingsHint => '选择或输入要保护的文件后缀（以逗号分隔）';

  @override
  String get websites_customExtensionHint => '自定义后缀，如: mp4';

  @override
  String get websites_customProtection => '自定义保护：';

  @override
  String get websites_allowedDomains => '允许域名';

  @override
  String get websites_allowedDomainsHint => '设置允许访问的域名，支持通配符，如 *.example.com';

  @override
  String get websites_addDomainHint => '输入域名并添加';

  @override
  String get websites_noAllowedDomains => '未添加允许域名';

  @override
  String get websites_ruleControl => '规则控制';

  @override
  String get websites_allowEmptyReferer => '允许 Referer 为空';

  @override
  String get websites_allowNonStandardReferer => '允许非标准 Referer';

  @override
  String get websites_blockedResponse => '响应资源 (Blocked Response)';

  @override
  String get websites_blockedResponseHint => '当请求被拦截时，服务器返回的状态码。';

  @override
  String get websites_performanceAndLogs => '性能与日志';

  @override
  String get websites_loadPerformanceSettingsFailed => '加载性能设置失败';

  @override
  String get websites_performanceTuning => '性能调整';

  @override
  String get websites_openRestyPerformanceSubtitle => '调整 OpenResty 全局性能参数';

  @override
  String get websites_getRuntimeStatusFailed => '获取运行状态失败';

  @override
  String get websites_runtimeStatus => '运行状态';

  @override
  String get websites_openRestyRealtimeMetrics => 'OpenResty 服务实时指标';

  @override
  String get websites_activityMetrics => '活动指标';

  @override
  String get websites_activeConnections => '活动连接';

  @override
  String get websites_currentActiveClientConnections => '当前活跃的客户端连接数';

  @override
  String get websites_requestStats => '请求统计';

  @override
  String get websites_totalConnections => '总连接次数';

  @override
  String get websites_totalHandshakes => '总握手次数';

  @override
  String get websites_totalRequests => '总请求数';

  @override
  String get websites_connectionDetails => '连接详情';

  @override
  String get websites_readingClientRequestHeaders => '正在读取客户端请求头';

  @override
  String get websites_writingResponseToClient => '正在将响应写回客户端';

  @override
  String get websites_idleWaitingState => '处于空闲等待状态';

  @override
  String get websites_realtimeMetric => '实时监控指标';

  @override
  String get websites_serverSettings => '服务器设置';

  @override
  String get websites_serverNamesHashBucketSize => '服务器名字的 hash 表大小';

  @override
  String get websites_clientSettings => '客户端设置';

  @override
  String get websites_clientHeaderBufferSize => '客户端请求的头 buffer 大小';

  @override
  String get websites_maxUploadFile => '最大上传文件';

  @override
  String get websites_keepaliveTimeout => '连接超时时间';

  @override
  String get websites_gzipCompression => 'Gzip 压缩';

  @override
  String get websites_enableCompressionTransfer => '是否开启压缩传输';

  @override
  String get websites_minCompressionFile => '最小压缩文件';

  @override
  String get websites_compressionLevel => '压缩率';

  @override
  String get websites_browserCache => '浏览器缓存';

  @override
  String get websites_serverCache => '服务器缓存';

  @override
  String websites_cacheValue(String label, String value) {
    return '$label: $value';
  }

  @override
  String get websites_backendAddress => '后端地址';

  @override
  String get websites_cache => '缓存';

  @override
  String get websites_noReverseProxy => '暂无反向代理';

  @override
  String get websites_createReverseProxyHint => '点击右上角 + 创建反向代理规则';

  @override
  String get websites_createNow => '立即创建';

  @override
  String get websites_noModify => '不修改';

  @override
  String get websites_allowedMethods => '允许的方法';

  @override
  String get websites_searchString => '搜索字符串';

  @override
  String get websites_replaceWithString => '替换为字符串';

  @override
  String get websites_cacheTime => '缓存时间';

  @override
  String get websites_recordRequestLogs => '记录请求日志';

  @override
  String get websites_extensionRequired => '请至少选择或输入一个扩展名';

  @override
  String get websites_allowedDomainRequired => '请至少输入一个允许的域名';

  @override
  String get websites_cacheTimePositive => '缓存时间必须大于 0';

  @override
  String get websites_antiLeechSaved => '防盗链配置已保存';

  @override
  String get websites_saveFailed => '保存失败';

  @override
  String get websites_updateFailed => '更新失败';

  @override
  String get websites_deleteFailed => '删除失败';

  @override
  String get websites_loadAntiLeechFailed => '加载防盗链配置失败';

  @override
  String get websites_loadGroupsFailed => '加载网站分组失败';

  @override
  String get websites_otherSettings => '其他设置';

  @override
  String get websites_default => '默认';

  @override
  String get websites_websiteName => '网站名称';

  @override
  String get websites_websiteAlias => '网站代号';

  @override
  String get websites_loadWebsiteDirectoryFailed => '加载网站目录失败';

  @override
  String get websites_websiteDirectory => '网站目录';

  @override
  String get websites_directorySubtitle => '运行目录、权限与目录结构';

  @override
  String get websites_rootDirectory => '根目录';

  @override
  String get websites_runningDirectory => '运行目录';

  @override
  String get websites_runningUserGroup => '运行用户 / 组';

  @override
  String get websites_userGroup => '用户组';

  @override
  String get websites_savePermissions => '保存权限';

  @override
  String get websites_runningUserGroupRequired => '请输入运行用户和用户组';

  @override
  String get websites_directoryDescription => '目录说明';

  @override
  String get websites_siteCertificates => '网站证书';

  @override
  String get websites_siteLogs => '网站日志';

  @override
  String get websites_indexDirectoryDescription =>
      '网站 root 目录，静态网站代码或 PHP 运行环境入口';

  @override
  String get websites_websiteAliasPlaceholder => '网站目录名称或代号';

  @override
  String get websites_optionalRemark => '可选备注';

  @override
  String get websites_switches => '开关';

  @override
  String get websites_listenIpv6 => '监听 IPv6';

  @override
  String get websites_listenIpv6Subtitle => '开启后站点配置会同时监听 IPv6 地址';

  @override
  String get websites_favoriteWebsite => '收藏网站';

  @override
  String get websites_favoriteWebsiteSubtitle => '用于在列表中标记常用站点';

  @override
  String get websites_saving => '保存中';

  @override
  String get websites_saveChanges => '保存修改';

  @override
  String get websites_loadDefaultDocumentsFailed => '加载默认文档失败';

  @override
  String get websites_defaultDocuments => '默认文档';

  @override
  String get websites_finishCurrentEditFirst => '请先完成当前编辑';

  @override
  String get websites_fileNameRequired => '文件名不能为空';

  @override
  String get websites_saveOrCancelCurrentEditFirst => '请先保存或取消当前编辑';

  @override
  String get websites_validFileNameOrRemoveEmptyRows => '请填写有效的文件名，或删除空行';

  @override
  String get websites_savedAndReloaded => '已保存并重载';

  @override
  String get websites_defaultDocumentOrderHint =>
      '长按左侧手柄拖拽排序，顺序即 Nginx 查找默认文件的先后。';

  @override
  String get websites_noDefaultDocumentEntries => '暂无条目，点右上角 + 添加';

  @override
  String get websites_cannotDragWhileEditing => '编辑中不可拖拽排序';

  @override
  String get websites_defaultDocumentsDisabledHint =>
      '面板返回当前默认文档功能为关闭状态，保存后仍以服务端规则为准。';

  @override
  String get websites_unsavedEdits => '您有尚未保存的编辑';

  @override
  String get websites_indexFileExample => '例如 index.html';

  @override
  String get websites_websiteNameRequired => '网站名称不能为空';

  @override
  String get websites_websiteAliasRequired => '网站代号不能为空';

  @override
  String get websites_selectWebsiteGroup => '请选择网站分组';

  @override
  String get websites_websiteInfoUpdated => '网站信息已更新';

  @override
  String get websites_groupFallbackWarning => '未获取到网站分组，保存时将使用当前分组 ID。';

  @override
  String get websites_limitPresetForumBlog => '论坛/博客';

  @override
  String get websites_limitPresetImageSite => '图片站';

  @override
  String get websites_limitPresetDownloadSite => '下载站';

  @override
  String get websites_limitPresetShop => '商城';

  @override
  String get websites_limitPresetPortal => '门户';

  @override
  String get websites_limitPresetEnterprise => '企业';

  @override
  String get websites_limitPresetVideo => '视频';

  @override
  String websites_limitPresetSummary(
    String name,
    String perServer,
    String perIp,
    String rate,
  ) {
    return '$name · 站点 $perServer / IP $perIp / $rate KB/s';
  }

  @override
  String get websites_loadTrafficLimitFailed => '加载流量限制失败';

  @override
  String get websites_positiveIntegerRequired => '请填写有效的数值（必须为大于 0 的整数）';

  @override
  String get websites_trafficLimitEnabled => '流量限制已启用';

  @override
  String get websites_trafficLimitDisabled => '流量限制已关闭';

  @override
  String get websites_enableStatus => '启用状态';

  @override
  String get websites_trafficLimitEnabledStatus => '已启用流量限制';

  @override
  String get websites_trafficLimitDisabledStatus => '未启用流量限制';

  @override
  String get websites_candidatePresets => '候选方案';

  @override
  String get websites_parameterSettings => '参数设置';

  @override
  String get websites_editAfterEnable => '启用后可编辑参数';

  @override
  String get websites_concurrencyLimit => '并发限制';

  @override
  String get websites_perIpLimit => '单 IP 限制';

  @override
  String get websites_requestRateLimit => '单请求限速';

  @override
  String get websites_limitItemsDescription => '限制项说明';

  @override
  String get websites_concurrencyLimitDesc => '限制当前站点最大并发数';

  @override
  String get websites_perIpLimitDesc => '限制单个 IP 访问最大并发数';

  @override
  String get websites_requestRateLimitDesc => '限制每个请求的每秒传输速率，单位 KB/s';

  @override
  String get websites_loadGroupsGenericFailed => '加载分组失败';

  @override
  String get websites_groupCreated => '分组已创建';

  @override
  String get websites_groupUpdated => '分组已更新';

  @override
  String get websites_defaultGroupSet => '已设为默认分组';

  @override
  String get websites_operationFailed => '操作失败';

  @override
  String get websites_deleteGroup => '删除分组';

  @override
  String websites_deleteGroupConfirm(String name) {
    return '确定要删除「$name」吗？\n该分组下的网站将变为未分组。';
  }

  @override
  String get websites_groupDeleted => '分组已删除';

  @override
  String get websites_manageGroups => '管理分组';

  @override
  String get websites_setAsDefault => '设为默认';

  @override
  String get websites_groupNameRequired => '请输入分组名称';

  @override
  String get websites_editGroup => '编辑分组';

  @override
  String get websites_newGroup => '新建分组';

  @override
  String get websites_caName => 'CA 名称';

  @override
  String get websites_caNameRequired => '请填写 CA 名称和通用名称';

  @override
  String get websites_caNamePlaceholder => '例如：corp-root-ca';

  @override
  String get websites_commonName => '通用名称 (CN)';

  @override
  String get websites_commonNameShort => '通用名称';

  @override
  String get websites_commonNamePlaceholder => '例如：Corp Root CA';

  @override
  String get websites_organizationInfo => '组织信息';

  @override
  String get websites_countryRegion => '国家/地区 (C)';

  @override
  String get websites_countryRegionShort => '国家/地区';

  @override
  String get websites_countryRegionPlaceholder => '例如：CN';

  @override
  String get websites_organizationName => '组织名称 (O)';

  @override
  String get websites_organization => '组织';

  @override
  String get websites_organizationNamePlaceholder => '例如：Example Inc';

  @override
  String get websites_organizationUnit => '组织单位 (OU)';

  @override
  String get websites_organizationUnitShort => '组织单位';

  @override
  String get websites_organizationUnitPlaceholder => '例如：IT';

  @override
  String get websites_provinceState => '省份/州 (ST)';

  @override
  String get websites_province => '省份';

  @override
  String get websites_provincePlaceholder => '例如：Guangdong';

  @override
  String get websites_city => '城市 (L)';

  @override
  String get websites_cityShort => '城市';

  @override
  String get websites_cityPlaceholder => '例如：Shenzhen';

  @override
  String get websites_issue => '签发';

  @override
  String get websites_issueSslCertificate => '签发 SSL 证书';

  @override
  String get websites_domainsRequired => '请填写域名';

  @override
  String get websites_validityRequired => '请填写有效的有效期';

  @override
  String get websites_issueFailed => '签发失败';

  @override
  String get websites_domains => '域名';

  @override
  String get websites_domainsPlaceholder =>
      '每行一个域名，例如：\nexample.com\nwww.example.com';

  @override
  String get websites_certificateDescriptionPlaceholder => '可选，证书描述';

  @override
  String get websites_pushToDirectory => '推送至目录';

  @override
  String get websites_targetDirectory => '目标目录';

  @override
  String get websites_scriptCommand => '脚本命令';

  @override
  String get websites_scriptCommandPlaceholder => '例如：nginx -s reload';

  @override
  String get websites_validity => '有效期';

  @override
  String get websites_selfSignedCa => '自签 CA';

  @override
  String get websites_caList => 'CA 列表';

  @override
  String get websites_noSelfSignedCa => '暂无自签 CA';

  @override
  String get websites_createCa => '创建 CA';

  @override
  String get websites_createSelfSignedCaSubtitle => '创建新的自签名 CA';

  @override
  String get websites_loadDetailsFailed => '加载详情失败';

  @override
  String get websites_deleteCa => '删除 CA';

  @override
  String websites_deleteCaConfirm(String name) {
    return '确定要删除「$name」吗？';
  }

  @override
  String get websites_downloadFailed => '下载失败';

  @override
  String get websites_unitSeconds => '秒';

  @override
  String get websites_unitMinutes => '分钟';

  @override
  String get websites_unitHours => '小时';

  @override
  String get websites_unitDays => '天';

  @override
  String get websites_unitWeeks => '周';

  @override
  String get websites_unitMonths => '月';

  @override
  String get websites_unitYears => '年';

  @override
  String get websites_certificateInfo => '证书信息';

  @override
  String get websites_certificateSource => '证书来源';

  @override
  String get websites_issuer => '签发机构';

  @override
  String get websites_expirationTime => '过期时间';

  @override
  String get websites_operations => '操作';

  @override
  String get websites_obtainOrRenew => '申请 / 续签';

  @override
  String get websites_obtainOrRenewSubtitle => '向 CA 申请或续签证书';

  @override
  String get websites_editCertificateConfig => '修改证书配置';

  @override
  String get websites_viewCertificatePem => '查看证书 (PEM)';

  @override
  String get websites_viewCertificatePemSubtitle => '查看证书 PEM 内容';

  @override
  String get websites_viewPrivateKey => '查看私钥';

  @override
  String get websites_viewPrivateKeySubtitle => '查看私钥 PEM 内容';

  @override
  String get websites_downloadCertificate => '下载证书';

  @override
  String get websites_downloadCertificateSubtitle => '下载证书文件';

  @override
  String get websites_deleteCertificate => '删除证书';

  @override
  String get websites_deleteCertificateSubtitle => '永久删除此证书';

  @override
  String get websites_deleteCertificateConfirm => '确定要删除此证书吗？此操作不可恢复。';

  @override
  String websites_deleteCertificatesConfirm(int count) {
    return '确定要删除选中的 $count 个证书吗？';
  }

  @override
  String get websites_deleteSuccess => '删除成功';

  @override
  String get websites_applyTaskSubmitted => '申请任务已提交';

  @override
  String get websites_applyFailed => '申请失败';

  @override
  String get websites_enableSsl => '启用 SSL';

  @override
  String get websites_acmeAccount => 'ACME 账号';

  @override
  String get websites_enableHttps => '启用 HTTPS';

  @override
  String get websites_listenPortsReadonly => '监听端口 (不可编辑)';

  @override
  String get websites_httpOptions => 'HTTP 选项';

  @override
  String get websites_httpRedirectToHttps => '重定向到 HTTPS';

  @override
  String get websites_httpAlsoAccessible => 'HTTP 也可访问';

  @override
  String get websites_httpsOnly => '禁止 HTTP 访问';

  @override
  String get websites_enableHsts => '启用 HSTS';

  @override
  String get websites_enableHstsSubdomains => '启用 HSTS 子域';

  @override
  String get websites_enableHttp3 => '启用 HTTP/3';

  @override
  String get websites_http3Subtitle => '提高连接速度，但部分浏览器可能不支持';

  @override
  String get websites_certificateSettings => '证书设置';

  @override
  String get websites_sslOptions => 'SSL 选项';

  @override
  String get websites_selectExistingCertificate => '选择已有证书';

  @override
  String get websites_selectCertificate => '选择证书';

  @override
  String get websites_noCertificatesForAccount => '该账号下暂无证书';

  @override
  String get websites_sslProtocolSettings => 'SSL 协议设置';

  @override
  String get websites_supportedProtocolVersions => '支持的协议版本 (可多选)';

  @override
  String get websites_insecureTlsSelected => '所选择的协议版本 (TLS 1.0/1.1) 不安全';

  @override
  String get websites_cipherSuites => '加密算法';

  @override
  String get websites_loadAcmeAccountsFailed => '加载 ACME 账户失败';

  @override
  String get websites_loadCertificateListFailed => '加载证书列表失败';

  @override
  String get websites_httpsConfigUpdated => 'HTTPS 配置已更新';

  @override
  String get websites_loadHttpsConfigFailed => '加载 HTTPS 配置失败';

  @override
  String get websites_certificateManagement => '证书管理';

  @override
  String get websites_searchCertificates => '搜索证书...';

  @override
  String get websites_uploadCertificate => '上传证书';

  @override
  String get websites_upload => '上传';

  @override
  String get websites_uploadFailed => '上传失败';

  @override
  String get websites_importFromText => '从文本导入';

  @override
  String get websites_selectServerFile => '选择服务器文件';

  @override
  String get websites_uploadFromLocal => '从本地上传';

  @override
  String get websites_searchCertificatesAction => '搜索证书';

  @override
  String get websites_refreshList => '刷新列表';

  @override
  String get websites_noCertificateFound => '未搜索到证书';

  @override
  String get websites_noCertificates => '暂无证书';

  @override
  String get websites_tryAnotherKeyword => '换个关键词试试吧';

  @override
  String get websites_noSslCertificates => '当前没有 SSL 证书';

  @override
  String get websites_loadDataFailed => '加载数据失败';

  @override
  String get websites_remarkOptional => '备注（可选）';

  @override
  String get websites_certificateContentPem => '证书内容 (PEM)';

  @override
  String get websites_privateKeyContentPem => '私钥内容 (PEM)';

  @override
  String get websites_certificateFile => '证书文件';

  @override
  String get websites_privateKeyFile => '私钥文件';

  @override
  String get websites_tapToSelectCertificateFile => '点击选择证书文件';

  @override
  String get websites_tapToSelectPrivateKeyFile => '点击选择私钥文件';

  @override
  String get websites_certificateFilePath => '证书文件路径';

  @override
  String get websites_privateKeyFilePath => '私钥文件路径';

  @override
  String get websites_selectCertificateFile => '选择证书文件';

  @override
  String get websites_selectPrivateKeyFile => '选择私钥文件';

  @override
  String get websites_certificateRemarkPlaceholder => '为证书添加备注说明';

  @override
  String get websites_certificate => '证书';

  @override
  String get websites_enableFtp => '启用 FTP';

  @override
  String get websites_account => '账号';

  @override
  String get websites_ftpAccountPlaceholder => 'FTP 账号';

  @override
  String get websites_ftpPasswordPlaceholder => 'FTP 密码';

  @override
  String get websites_otherInfo => '其他信息';

  @override
  String get websites_remark => '备注';

  @override
  String get websites_optional => '选填';

  @override
  String get websites_runtimeType => '运行时类型';

  @override
  String get websites_local => '本地';

  @override
  String get websites_container => '容器';

  @override
  String get websites_noAvailableRuntime => '暂无可用运行环境';

  @override
  String get websites_connectionType => '连接方式';

  @override
  String get websites_runtimeNoExposedPorts => '该运行环境未暴露端口，请先在运行环境配置中设置端口';

  @override
  String get websites_databaseType => '数据库类型';

  @override
  String get websites_noAvailableService => '暂无可用服务';

  @override
  String get websites_charset => '字符集';

  @override
  String get websites_noGroups => '暂无分组';

  @override
  String get websites_validityUnknown => '有效期：未知';

  @override
  String get websites_validityNeverExpires => '有效期：永不过期';

  @override
  String websites_validityValue(String value) {
    return '有效期：$value';
  }

  @override
  String get websites_validityExpired => '有效期：已过期';

  @override
  String websites_validityDays(int days) {
    return '有效期：$days 天';
  }

  @override
  String get websites_validityLessThanOneDay => '有效期：不足 1 天';

  @override
  String websites_certificateNumber(int id) {
    return '证书 #$id';
  }

  @override
  String get websites_noAvailableCertificate => '无可用证书';

  @override
  String websites_domainCount(int count) {
    return '$count 个域名';
  }

  @override
  String get websites_loadingCount => '正在获取数量';

  @override
  String get websites_detailLoadFailed => '详情加载失败';

  @override
  String get websites_noPhpRuntimeBound => '未绑定 PHP 运行环境';

  @override
  String get websites_settings => '网站设置';

  @override
  String get websites_openRestyNotInstalled => '未安装 OpenResty';

  @override
  String get websites_installOpenRestyPrefix => '请先在';

  @override
  String get websites_appStore => '应用商店';

  @override
  String get websites_installOpenRestySuffix => '中安装 OpenResty';

  @override
  String get websites_openRestyStopped => 'OpenResty 已停止';

  @override
  String get websites_startOpenRestyFromServiceMenu => '请从右上角菜单「服务」中启动';

  @override
  String get websites_noWebsites => '暂无网站';

  @override
  String get websites_noMatchingWebsites => '未找到匹配网站';

  @override
  String get websites_createFirstWebsiteHint => '点击右上角创建你的第一个网站';

  @override
  String get websites_loadWebsitesFailed => '加载网站失败';

  @override
  String get websites_selectWebsiteType => '选择网站类型';

  @override
  String get websites_staticWebsiteType => '静态网站 (Static HTML)';

  @override
  String get websites_staticWebsiteTypeDescription => '适合纯静态页面、前端打包产物，配置最简单。';

  @override
  String get websites_reverseProxyType => '反向代理 (Reverse Proxy)';

  @override
  String get websites_reverseProxyTypeDescription => '将流量转发到其他端口或外部地址，适合后端服务。';

  @override
  String get websites_domainSettings => '域名设置';

  @override
  String get websites_loadDomainsFailed => '加载域名失败';

  @override
  String get websites_domain => '域名';

  @override
  String websites_domainCountTitle(String title, int count) {
    return '$title · $count 个域名';
  }

  @override
  String get websites_keepAtLeastOneDomain => '至少保留一个域名';

  @override
  String get websites_removeDomain => '移除域名';

  @override
  String websites_removeDomainConfirm(String domain) {
    return '确定移除 $domain 吗？';
  }

  @override
  String get websites_remove => '移除';

  @override
  String get websites_noDomains => '暂无域名';

  @override
  String get websites_addDomainFromTopRight => '点击右上角新增域名';

  @override
  String get websites_domainOrIpPlaceholder => '输入域名或 IP';

  @override
  String get websites_validDomainPortRequired => '请输入有效的域名和端口';

  @override
  String websites_portValue(int port) {
    return '端口 $port';
  }

  @override
  String get websites_disableHttps => '关闭 HTTPS';

  @override
  String get websites_domainSettingsSubtitle => '管理绑定域名、端口与 SSL 标记';

  @override
  String get websites_siteDirectory => '网站目录';

  @override
  String get websites_detailLoadingRetry => '详情加载中，请稍后重试';

  @override
  String get websites_defaultDocument => '默认文档';

  @override
  String get websites_defaultDocumentSubtitle =>
      '配置 index.html / index.php 等默认入口';

  @override
  String get websites_trafficLimit => '流量限制';

  @override
  String get websites_trafficLimitSubtitle => '限制访问流量、连接数 and 请求速率';

  @override
  String get websites_accessControl => '访问控制';

  @override
  String get websites_reverseProxy => '反向代理';

  @override
  String get websites_loadReverseProxyFailed => '加载反向代理失败';

  @override
  String get websites_deleteReverseProxy => '删除反向代理';

  @override
  String websites_deleteProxyConfirm(String name) {
    return '确定删除 $name 吗？';
  }

  @override
  String websites_deletedName(String name) {
    return '已删除 $name';
  }

  @override
  String get websites_operationFailedCopyDetails => '操作失败（点击复制详情）';

  @override
  String get websites_sourceContent => '源文';

  @override
  String get websites_sourceContentSaved => '源文已保存';

  @override
  String websites_enabledName(String name) {
    return '已启用 $name';
  }

  @override
  String websites_disabledName(String name) {
    return '已停用 $name';
  }

  @override
  String get websites_reverseProxySubtitle => '配置代理目标、路径和缓存规则';

  @override
  String get websites_passwordAccess => '密码访问';

  @override
  String get websites_passwordAuthStatus => '密码认证状态';

  @override
  String get websites_passwordAccessEnabled => '已开启密码访问';

  @override
  String get websites_passwordAccessDisabled => '已关闭密码访问';

  @override
  String get websites_globalAccess => '全局访问';

  @override
  String get websites_pathAccess => '路径访问';

  @override
  String get websites_loadAuthConfigFailed => '加载认证配置失败';

  @override
  String get websites_noAuthAccounts => '暂无认证账号';

  @override
  String get websites_addGlobalAuthHint => '点击右上角按钮添加全局认证账号';

  @override
  String get websites_deleteAccount => '删除账号';

  @override
  String websites_deleteAuthAccountConfirm(String username) {
    return '确定要删除认证账号 \"$username\" 吗？';
  }

  @override
  String get websites_accountDeleted => '已删除账号';

  @override
  String get websites_noPathAccessLimits => '暂无路径访问限制';

  @override
  String get websites_addPathAccessHint => '点击右上角按钮为特定路径添加密码访问限制';

  @override
  String get websites_deletePathAccess => '删除路径访问';

  @override
  String websites_deletePathAccessConfirm(String path) {
    return '确定要删除路径 \"$path\" 的访问限制吗？';
  }

  @override
  String get websites_pathAccessDeleted => '已删除路径访问限制';

  @override
  String get websites_authorizedAccount => '授权账号';

  @override
  String get websites_remarkDescription => '备注说明';

  @override
  String get websites_passwordAccessSubtitle => '为网站添加基础认证';

  @override
  String get websites_usernameRequired => '请输入用户名';

  @override
  String get websites_passwordRequired => '请输入密码';

  @override
  String get websites_pathAndNameRequired => '请输入路径和名称';

  @override
  String get websites_editAccount => '编辑账号';

  @override
  String get websites_addAccount => '添加账号';

  @override
  String get websites_protectedPath => '保护路径';

  @override
  String get websites_pathExampleAdmin => '如: /admin';

  @override
  String get websites_authName => '认证名称';

  @override
  String get websites_authNameExample => '如: 后台管理';

  @override
  String get websites_username => '用户名';

  @override
  String get websites_accessPassword => '访问密码';

  @override
  String get websites_leaveBlankToKeep => '留空表示不修改';

  @override
  String get websites_accountRemarkPlaceholder => '备注此账号的用途';

  @override
  String get websites_pathAuthImmutableHint => '路径、名称及用户名在保存后不可更改';

  @override
  String get websites_globalAuthPasswordResetHint => '更新全局账号时必须重新设置密码';

  @override
  String get websites_confirmSave => '确认保存';

  @override
  String get websites_corsAccess => '跨域访问';

  @override
  String get websites_corsAccessSubtitle => '配置 CORS 跨域请求规则';

  @override
  String get websites_realIp => '真实 IP';

  @override
  String get websites_ipSourceRequired => '请至少输入一个 IP 来源';

  @override
  String get websites_customHeaderRequired => '请输入自定义 Header 名称';

  @override
  String get websites_realIpSaved => '真实 IP 配置已保存';

  @override
  String get websites_loadRealIpConfigFailed => '加载真实 IP 配置失败';

  @override
  String get websites_enableRealIp => '启用真实 IP';

  @override
  String get websites_ipSourceSetRealIpFrom => 'IP 来源 (set_real_ip_from)';

  @override
  String get websites_ipSourceHint => '输入 IP 或网段，每行一个\n例如：127.0.0.1';

  @override
  String get websites_trustedProxyIpList => '允许的可信代理 IP 列表';

  @override
  String get websites_noTrustedProxyIp => '暂无可信代理 IP';

  @override
  String get websites_realIpHeader => '真实 IP Header (real_ip_header)';

  @override
  String get websites_otherCustom => 'Other (自定义)';

  @override
  String get websites_customHeaderPlaceholder =>
      '输入自定义 Header 名称，如: My-Real-IP';

  @override
  String get websites_realIpHeaderHint => '指定包含客户端真实 IP 的请求头字段。';

  @override
  String get websites_ipOrCidrPlaceholder => '输入 IP 或网段';

  @override
  String get websites_realIpSubtitle => '配置代理后的真实客户端 IP';

  @override
  String get websites_rulesAndRuntime => '规则与运行';

  @override
  String get websites_rewrite => '伪静态';

  @override
  String get websites_fetchTemplateContentFailed => '获取模板内容失败';

  @override
  String get websites_rewriteSavedAndReloaded => '伪静态配置已保存并重载';

  @override
  String get websites_saveAsTemplate => '另存为模板';

  @override
  String get websites_templateNamePlaceholder => '输入模板名称';

  @override
  String get websites_templateNameRequired => '请输入模板名称';

  @override
  String websites_templateSavedAs(String name) {
    return '模板已另存为 $name';
  }

  @override
  String get websites_saveAsTemplateFailed => '另存为模板失败';

  @override
  String get websites_deleteTemplate => '删除模板';

  @override
  String websites_deleteTemplateConfirmName(String name) {
    return '确定要删除模板 \"$name\" 吗？';
  }

  @override
  String get websites_templateDeleted => '模板已删除';

  @override
  String get websites_deleteTemplateFailed => '删除模板失败';

  @override
  String get websites_loadRewriteConfigFailed => '加载伪静态配置失败';

  @override
  String get websites_currentTemplate => '当前 (Current)';

  @override
  String websites_customTemplateName(String name) {
    return '$name (自定义)';
  }

  @override
  String get websites_selectTemplate => '选择模板';

  @override
  String get websites_ruleContent => '规则内容';

  @override
  String get websites_rewriteRulesHint => '输入伪静态规则...';

  @override
  String get websites_saveAndReload => '保存并重载';

  @override
  String get websites_rewriteSubtitle => '配置 rewrite 规则';

  @override
  String get websites_antiLeech => '防盗链';

  @override
  String get websites_antiLeechSubtitle => '限制来源站点与资源访问';

  @override
  String get websites_redirect => '重定向';

  @override
  String get websites_loadRedirectRulesFailed => '加载重定向规则失败';

  @override
  String get websites_deleteRedirect => '删除重定向';

  @override
  String websites_deleteRedirectConfirm(String name) {
    return '确定删除重定向规则 \"$name\" 吗？';
  }

  @override
  String get websites_redirectSourceContent => '重定向源文';

  @override
  String get websites_redirectSourceSaved => '重定向源文已保存';

  @override
  String get websites_ruleName => '规则名称';

  @override
  String get websites_ruleNamePlaceholder => '输入规则名称';

  @override
  String get websites_redirectType => '重定向类型';

  @override
  String get websites_redirectMethod => '重定向方式';

  @override
  String get websites_redirect301 => '301 永久重定向';

  @override
  String get websites_redirect302 => '302 临时重定向';

  @override
  String get websites_domainSelection => '域名选择';

  @override
  String get websites_noSelectableDomains => '暂无可供选择的域名';

  @override
  String get websites_targetSettings => '目标设置';

  @override
  String get websites_targetUrl => '目标 URL 地址';

  @override
  String get websites_targetUrlPlaceholder => '输入目标 URL，例如: http://example.com';

  @override
  String get websites_keepUriParameters => '保留 URI 参数';

  @override
  String get websites_noRedirectRules => '暂无重定向规则';

  @override
  String get websites_addRedirectRuleHint => '您可以点击右上角或下方按钮新增规则';

  @override
  String get websites_addNow => '立即新增';

  @override
  String get websites_targetAddress => '目标地址';

  @override
  String get websites_scopeDomains => '作用域名';

  @override
  String get websites_loadDomainListFailed => '加载域名列表失败';

  @override
  String get websites_ruleNameRequired => '请输入规则名称';

  @override
  String get websites_targetUrlRequired => '请输入目标 URL';

  @override
  String get websites_selectAtLeastOneDomain => '请至少选择一个域名';

  @override
  String get websites_redirectRuleCreated => '重定向规则已创建';

  @override
  String get websites_redirectRuleUpdated => '重定向规则已更新';

  @override
  String get websites_newRedirect => '新增重定向';

  @override
  String get websites_editRedirect => '编辑重定向';

  @override
  String get websites_redirectSubtitle => '配置 301/302 跳转规则';

  @override
  String get websites_resource => '资源';

  @override
  String get websites_associatedResources => '关联资源';

  @override
  String get websites_databaseSettings => '数据库设置';

  @override
  String get websites_changeDatabase => '更换数据库';

  @override
  String get websites_unlinkDatabaseConfirm => '确定要取消关联当前的数据库吗？';

  @override
  String websites_changeDatabaseConfirm(String name) {
    return '确定要将网站关联的数据库更换为 \"$name\" 吗？';
  }

  @override
  String get websites_confirmChange => '确认更换';

  @override
  String get websites_databaseAssociationUpdated => '数据库关联已更新';

  @override
  String get websites_runtimeEnvironment => '运行环境';

  @override
  String get websites_phpSettings => 'PHP 设置';

  @override
  String get websites_staticSite => '静态网站';

  @override
  String get websites_currentStatus => '当前状态';

  @override
  String get websites_switchRuntime => '切换运行环境';

  @override
  String get websites_selectStaticOrPhpRuntime => '选择静态网站或 PHP 运行环境';

  @override
  String get websites_switching => '正在切换...';

  @override
  String get websites_phpRuntime => 'PHP 运行环境';

  @override
  String websites_switchRuntimeConfirm(String target) {
    return '即将切换到 $target\n\n此操作将重新配置网站，且不可回滚。是否继续？';
  }

  @override
  String get websites_confirmSwitch => '确认切换';

  @override
  String websites_switchedTo(String target) {
    return '已切换到 $target';
  }

  @override
  String get websites_switchFailed => '切换失败';

  @override
  String get websites_phpWebsite => 'PHP 网站';

  @override
  String get websites_unknownRuntime => '未知运行环境';

  @override
  String get websites_staticFileService => '纯静态文件服务';

  @override
  String get websites_loadPhpRuntimesFailed => '加载 PHP 运行环境失败';

  @override
  String get websites_application => '应用';

  @override
  String get websites_database => '数据库';

  @override
  String get websites_noAssociatedResources => '暂无关联资源';

  @override
  String get websites_noDatabaseAssociation => '不关联数据库';

  @override
  String get websites_selectAssociatedDatabase => '选择要关联的数据库';

  @override
  String get websites_updating => '正在更新...';

  @override
  String get websites_loadResourcesFailed => '加载资源失败';

  @override
  String get websites_loadWebsiteDetailsFailed => '加载网站详情失败';

  @override
  String get websites_resourceSubtitle => '查看网站资源占用与统计';

  @override
  String get websites_other => '其他';

  @override
  String get websites_otherSubtitle => '名称、分组、IPv6 与收藏标记';

  @override
  String get websites_diagnostics => '诊断';

  @override
  String get websites_logs => '日志';

  @override
  String get websites_logsSubtitle => '访问日志与错误日志';

  @override
  String get websites_configFile => '配置文件';

  @override
  String get websites_loadConfigFailed => '加载配置失败';

  @override
  String get websites_configUpdatedAndReloaded => '配置已更新并重载';

  @override
  String get websites_discardChangesQuestion => '放弃修改？';

  @override
  String get websites_unsavedChangesLeaveConfirm => '你的改动尚未保存，确定要离开吗？';

  @override
  String get websites_continueEditing => '继续编辑';

  @override
  String get websites_discard => '放弃';

  @override
  String get websites_updateAndReload => '更新并重载';

  @override
  String get websites_configFileSubtitle => '查看和编辑站点配置';

  @override
  String get websites_sslNotEnabled => '未启用 SSL';

  @override
  String get websites_certificateLoadFailed => '证书信息加载失败';

  @override
  String get websites_httpsEnabled => '已启用 HTTPS';

  @override
  String websites_certificateExpiry(String time) {
    return '证书 $time';
  }

  @override
  String get websites_accessLogLoadFailed => '加载访问日志失败';

  @override
  String get websites_errorLogLoadFailed => '加载错误日志失败';

  @override
  String get websites_clearAccessLog => '清空访问日志';

  @override
  String get websites_clearErrorLog => '清空错误日志';

  @override
  String get websites_clearLogConfirm => '该操作会清空服务器上的日志文件，确定继续吗？';

  @override
  String get websites_clear => '清空';

  @override
  String get websites_logCleared => '日志已清空';

  @override
  String get websites_logEnabled => '日志已启用';

  @override
  String get websites_logDisabled => '日志已禁用';

  @override
  String get websites_rawLogCopied => '已复制原始日志';

  @override
  String get websites_noExportableLogs => '没有可导出的日志';

  @override
  String get websites_sharePluginUnregistered => '分享插件未注册';

  @override
  String get websites_sharePluginRestartHint =>
      '请完全停止 App 后重新运行。新增原生插件后，热重载/热重启不会注册分享通道。';

  @override
  String get websites_exportFailed => '导出失败';

  @override
  String get websites_websiteLogs => '网站日志';

  @override
  String websites_logHeaderSubtitle(String title, int lines, String status) {
    return '$title · $lines 行 · $status';
  }

  @override
  String get websites_enabled => '已启用';

  @override
  String get websites_disabled => '已禁用';

  @override
  String get websites_accessLog => '访问日志';

  @override
  String get websites_errorLog => '错误日志';

  @override
  String get websites_logSearchPlaceholder => '搜索 IP、路径、状态码、UA';

  @override
  String get websites_time => '时间';

  @override
  String get websites_path => '路径';

  @override
  String get websites_user => '用户';

  @override
  String get websites_source => '来源';

  @override
  String get websites_size => '大小';

  @override
  String get websites_copyRawData => '复制原始数据';

  @override
  String get websites_noLogs => '暂无日志';

  @override
  String get websites_noMatchingLogs => '没有匹配的日志';

  @override
  String get websites_enable => '启用';

  @override
  String get websites_disable => '禁用';

  @override
  String get websites_export => '导出';

  @override
  String get websites_submit => '提交';

  @override
  String get websites_applyCertificate => '申请证书';

  @override
  String get websites_basicInfo => '基本信息';

  @override
  String get websites_primaryDomainExample => '例如 example.com';

  @override
  String get websites_otherDomains => '其他域名';

  @override
  String get websites_otherDomainsPlaceholder => '多个域名用换行分隔';

  @override
  String get websites_validationMethod => '验证方式';

  @override
  String get websites_dnsAccountValidation => 'DNS 账号验证';

  @override
  String get websites_manualDnsValidation => '手动 DNS 验证';

  @override
  String get websites_httpValidation => 'HTTP 验证';

  @override
  String get websites_selfSigned => '自签名';

  @override
  String get websites_dnsAccount => 'DNS 账号';

  @override
  String get websites_dnsAccountNameRequired => '请输入账号名称';

  @override
  String get websites_authFieldsRequired => '请填写所有授权字段';

  @override
  String get websites_editDnsAccount => '编辑 DNS 账号';

  @override
  String get websites_createDnsAccount => '创建 DNS 账号';

  @override
  String get websites_createAcmeAccount => '创建 ACME 账号';

  @override
  String get websites_email => '邮箱';

  @override
  String get websites_certificateExpiryEmailHint => '用于接收证书到期提醒';

  @override
  String get websites_accountType => '账号类型';

  @override
  String get websites_accountList => '账号列表';

  @override
  String get websites_noDnsAccounts => '暂无 DNS 账号';

  @override
  String get websites_addDnsProviderAccount => '添加新的 DNS 服务商账号';

  @override
  String get websites_clickAgainToConfirmDelete => '再次点击确认删除';

  @override
  String get websites_selectOperation => '请选择操作';

  @override
  String get websites_noAcmeAccounts => '暂无 ACME 账号';

  @override
  String get websites_deleteAcmeAccount => '删除 ACME 账号';

  @override
  String get websites_deleteAcmeAccountConfirm => '确定要删除此 ACME 账号吗？';

  @override
  String get websites_addAcmeAccount => '添加新的 ACME 账号';

  @override
  String get websites_customAcmeDirectory => '自定义 ACME 目录';

  @override
  String get websites_optionalUseDefault => '可选，留空使用默认';

  @override
  String get websites_useEab => '使用 EAB';

  @override
  String get websites_eabKeyIdPlaceholder => '外部账号绑定 Key ID';

  @override
  String get websites_eabHmacKeyPlaceholder => '外部账号绑定 HMAC Key';

  @override
  String get websites_useProxy => '使用代理';

  @override
  String get websites_accountName => '账号名称';

  @override
  String get websites_accountNameExample => '例如：aliyun-prod';

  @override
  String get websites_cloudProviderType => '云厂商类型';

  @override
  String get websites_authorizationInfo => '授权信息';

  @override
  String websites_enterField(String field) {
    return '请输入 $field';
  }

  @override
  String get websites_dnsProviderAliYun => '阿里云';

  @override
  String get websites_dnsProviderAliEsa => 'AliESA';

  @override
  String get websites_dnsProviderAwsRoute53 => 'AWS Route53';

  @override
  String get websites_dnsProviderTencentCloud => '腾讯云';

  @override
  String get websites_dnsProviderHuaweiCloud => '华为云';

  @override
  String get websites_dnsProviderVolcengine => '火山引擎';

  @override
  String get websites_dnsProviderBaiduCloud => '百度云';

  @override
  String get websites_dnsProviderRainYun => '雨云';

  @override
  String get websites_dnsProviderWestCn => '西部数码';

  @override
  String get websites_dnsProviderCloudflare => 'Cloudflare';

  @override
  String get websites_dnsProviderGoDaddy => 'GoDaddy';

  @override
  String get websites_dnsProviderVercel => 'Vercel';

  @override
  String get websites_dnsProviderCloudDns => 'CloudDNS';

  @override
  String get websites_dnsProviderNameSilo => 'NameSilo';

  @override
  String get websites_dnsProviderNameCheap => 'NameCheap';

  @override
  String get websites_dnsProviderNameCom => 'Name.com';

  @override
  String get websites_dnsProviderDynu => 'Dynu';

  @override
  String get websites_dnsProviderRegRu => 'reg.ru';

  @override
  String get websites_dnsProviderFreeMyIp => 'FreeMyIP';

  @override
  String get websites_dnsProviderClouDns => 'ClouDNS';

  @override
  String get websites_dnsProviderSpaceship => 'Spaceship';

  @override
  String get websites_dnsProviderOvh => 'OVH';

  @override
  String get websites_dnsProviderAcmeDns => 'Acme DNS';

  @override
  String get websites_dnsProviderPorkBun => 'PorkBun';

  @override
  String get websites_dnsProviderDnsPodDeprecated => 'DNSPod (已废弃)';

  @override
  String get websites_dnsProviderTechnitium => 'Technitium';

  @override
  String get websites_advancedOptions => '高级选项';

  @override
  String get websites_keyAlgorithm => '密钥算法';

  @override
  String get websites_autoRenew => '自动续签';

  @override
  String get websites_skipDnsValidation => '跳过 DNS 验证';

  @override
  String get websites_disableCname => '禁用 CNAME';

  @override
  String get websites_pushToLocalDir => '推送到本地目录';

  @override
  String get websites_certificateDirectory => '证书目录';

  @override
  String get websites_absolutePathExample => '绝对路径，例如 /opt/ssl';

  @override
  String get websites_chooseCertificateDirectory => '选择证书目录';

  @override
  String get websites_runScriptAfterApply => '申请后执行脚本';

  @override
  String get websites_dnsServers => 'DNS 服务器';

  @override
  String get websites_preferredDns => '首选 DNS';

  @override
  String get websites_optionalDnsExample => '可选，例如 8.8.8.8';

  @override
  String get websites_alternateDns => '备选 DNS';

  @override
  String get websites_executeScript => '执行脚本';

  @override
  String get websites_scriptContent => '脚本内容';

  @override
  String get websites_editScriptHint => '点击编辑脚本';

  @override
  String get containers_editContainer => '编辑容器';

  @override
  String get containers_submit => '提交';

  @override
  String get containers_loadConfigFailed => '加载容器配置失败';

  @override
  String containers_updatingContainer(String name) {
    return '正在更新容器 $name';
  }

  @override
  String containers_updateRequestFailed(String error) {
    return '更新请求失败: $error';
  }

  @override
  String get containers_appStoreWarning => '检测到该容器来源于应用商店，应用操作可能会导致当前编辑失效';

  @override
  String get containers_basicInfo => '基本信息';

  @override
  String get containers_containerName => '容器名称';

  @override
  String get containers_required => '必填';

  @override
  String get containers_ttySubtitle => '分配一个伪终端 (-t)';

  @override
  String get containers_stdin => '标准输入';

  @override
  String get containers_stdinSubtitle => '保持标准输入打开 (-i)';

  @override
  String get containers_privilegedMode => '特权模式';

  @override
  String get containers_privilegedSubtitle => '授予容器完整的宿主机 root 权限';

  @override
  String get containers_autoRemove => '自动删除';

  @override
  String get containers_autoRemoveSubtitle => '容器退出后自动删除 (--rm)';

  @override
  String get containers_imageName => '镜像名称';

  @override
  String get containers_portMappings => '端口映射';

  @override
  String get containers_publishAllPorts => '公开所有端口';

  @override
  String get containers_publishAllPortsSubtitle => '随机映射容器内所有公开端口到宿主机';

  @override
  String get containers_hostIpOptional => '宿主机 IP (可选)';

  @override
  String get containers_hostPort => '宿主机端口';

  @override
  String get containers_containerPort => '容器端口';

  @override
  String get containers_addPortMapping => '添加端口映射';

  @override
  String get containers_networkSettings => '网络设置';

  @override
  String get containers_hostname => '主机名';

  @override
  String get containers_hostnamePlaceholder => '容器主机名';

  @override
  String get containers_domainName => '域名';

  @override
  String get containers_domainNamePlaceholder => '容器域名';

  @override
  String get containers_dnsServers => 'DNS 服务器';

  @override
  String get containers_dnsAddress => 'DNS 地址';

  @override
  String get containers_addDns => '添加 DNS';

  @override
  String containers_networkValue(String name) {
    return '网络: $name';
  }

  @override
  String get containers_noMoreNetworks => '没有更多可用网络';

  @override
  String get containers_selectNetwork => '选择网络';

  @override
  String get containers_addNetwork => '添加网络';

  @override
  String get containers_networkNameRequired => '网络名称不能为空';

  @override
  String get containers_networkCreated => '网络已创建';

  @override
  String get containers_createNetwork => '创建网络';

  @override
  String get containers_networkNameRequiredPlaceholder => '网络名称 (必填)';

  @override
  String get containers_driverType => '驱动类型';

  @override
  String get containers_parentNic => '父网卡';

  @override
  String get containers_selectParentNic => '选择父网卡';

  @override
  String get containers_ipv4Config => 'IPv4 配置';

  @override
  String get containers_enableIpv4 => '启用 IPv4';

  @override
  String get containers_subnetExample => '子网，例如 172.30.0.0/16';

  @override
  String get containers_gatewayExample => '网关，例如 172.30.0.1';

  @override
  String get containers_ipRangeOptional => 'IP 范围 (可选)';

  @override
  String get containers_auxAddress => '辅助地址';

  @override
  String get containers_name => '名称';

  @override
  String get containers_ipAddress => 'IP 地址';

  @override
  String get containers_addAuxAddress => '添加辅助地址';

  @override
  String get containers_ipv6Config => 'IPv6 配置';

  @override
  String get containers_enableIpv6 => '启用 IPv6';

  @override
  String get containers_subnetV6Example => '子网，例如 fd00::/64';

  @override
  String get containers_gateway => '网关';

  @override
  String get containers_advancedOptions => '高级选项';

  @override
  String get containers_labelsPlaceholder => '标签 (每行一个，格式: key=value)';

  @override
  String get containers_driverOptionsPlaceholder => '驱动选项 (每行一个，格式: key=value)';

  @override
  String get containers_ipv4Address => 'IPv4 地址';

  @override
  String get containers_ipv6Address => 'IPv6 地址';

  @override
  String get containers_macAddress => 'MAC 地址';

  @override
  String get containers_mountedVolumes => '挂载卷';

  @override
  String get containers_hostDirOrVolume => '宿主机目录 / 卷名';

  @override
  String get containers_containerDir => '容器内目录';

  @override
  String get containers_readWrite => '读写';

  @override
  String get containers_readOnly => '只读';

  @override
  String get containers_customPath => '自定义路径';

  @override
  String get containers_addMount => '添加挂载';

  @override
  String get containers_defaultPropagation => '默认传播';

  @override
  String get containers_propagationType => '传播类型';

  @override
  String get containers_propagationMessage => '选择宿主机与容器之间的挂载传播行为';

  @override
  String get containers_propagationPrivate => '私有';

  @override
  String get containers_propagationPrivateDesc => '挂载不传播，容器内外的挂载互不影响';

  @override
  String get containers_propagationRprivate => '私有递归';

  @override
  String get containers_propagationRprivateDesc => '私有模式且递归到子挂载点';

  @override
  String get containers_propagationShared => '共享';

  @override
  String get containers_propagationSharedDesc => '挂载在主机和容器间双向同步';

  @override
  String get containers_propagationRshared => '共享递归';

  @override
  String get containers_propagationRsharedDesc => '共享模式且递归到子挂载点';

  @override
  String get containers_propagationSlave => '从属';

  @override
  String get containers_propagationSlaveDesc => '主机挂载同步到容器，但容器挂载不影响主机';

  @override
  String get containers_propagationRslave => '从属递归';

  @override
  String get containers_propagationRslaveDesc => '从属模式且递归到子挂载点';

  @override
  String get containers_hostsMapping => 'Hosts 映射';

  @override
  String get containers_addHost => '添加 Host';

  @override
  String get containers_commandSettings => '命令设置';

  @override
  String get containers_workingDir => '工作目录';

  @override
  String get containers_user => '用户';

  @override
  String get containers_command => '命令';

  @override
  String get containers_entrypoint => '入口';

  @override
  String get containers_resourceLimits => '资源限制';

  @override
  String get containers_cpuShares => 'CPU 权重';

  @override
  String get containers_cpuSharesSubtitle => '默认 1024，增大可获得更多 CPU 时间';

  @override
  String get containers_cpuLimit => 'CPU 限制';

  @override
  String get containers_unlimitedZero => '0 为不限制';

  @override
  String containers_cpuCoresMax(String max) {
    return '核 (最大 $max)';
  }

  @override
  String get containers_memoryLimit => '内存限制';

  @override
  String containers_memoryMbMax(String max) {
    return 'MB (最大 $max)';
  }

  @override
  String get containers_labels => '标签';

  @override
  String get containers_envVars => '环境变量';

  @override
  String containers_addItem(String title) {
    return '添加 $title';
  }

  @override
  String get containers_restartPolicy => '重启策略';

  @override
  String get containers_restartAlways => '一直重启';

  @override
  String get containers_restartNo => '不重启';

  @override
  String get containers_restartOnFailure => '失败后重启';

  @override
  String get containers_restartUnlessStopped => '除非手动停止';

  @override
  String get containers_start => '启动';

  @override
  String get containers_stop => '停止';

  @override
  String get containers_restart => '重启';

  @override
  String containers_dockerActionSucceeded(String action) {
    return 'Docker $action 成功';
  }

  @override
  String containers_dockerActionFailed(String action) {
    return 'Docker $action 失败';
  }

  @override
  String get containers_stopDockerConfirm =>
      '停止 Docker 服务后，所有正在运行的容器将会中断。是否继续？';

  @override
  String get containers_restartDockerConfirm =>
      '重启 Docker 服务期间，正在运行的容器会短暂中断。是否继续？';

  @override
  String get containers_configUpdatedRestarting => '配置已更新，Docker 正在重启';

  @override
  String get containers_configFileMissing => '未找到配置文件';

  @override
  String get containers_configFileMissingContent =>
      '当前 Docker 环境尚未创建 daemon.json 文件，无法进行直接编辑。';

  @override
  String get containers_dockerFullConfig => 'Docker 全量配置';

  @override
  String get containers_daemonSavedRestarting => 'daemon.json 已保存，Docker 正在重启';

  @override
  String get containers_readDaemonFailed => '读取 daemon.json 失败';

  @override
  String get containers_loading => '加载中...';

  @override
  String containers_versionValue(String version) {
    return '版本 $version';
  }

  @override
  String get containers_serviceRunning => '服务已运行';

  @override
  String get containers_running => '运行中';

  @override
  String containers_allCount(int count) {
    return '全部($count)';
  }

  @override
  String containers_filterCount(String label, int count) {
    return '$label($count)';
  }

  @override
  String get containers_stateExited => '停止';

  @override
  String get containers_statePaused => '暂停';

  @override
  String get containers_stateCreated => '创建';

  @override
  String get containers_stateRestarting => '重启';

  @override
  String get containers_stateRemoving => '移除';

  @override
  String get containers_stateDead => '异常';

  @override
  String get containers_stopped => '已停止';

  @override
  String get containers_serviceOperations => '服务操作';

  @override
  String get containers_startDockerService => '启动 Docker 服务';

  @override
  String get containers_stopDockerService => '停止 Docker 服务';

  @override
  String get containers_restartDockerService => '重启 Docker 服务';

  @override
  String get containers_basicConfig => '基础配置';

  @override
  String get containers_imageAccelerator => '镜像加速器';

  @override
  String get containers_insecureRegistries => '不安全仓库';

  @override
  String get containers_notConfigured => '未配置';

  @override
  String containers_itemCount(int count) {
    return '$count 个';
  }

  @override
  String get containers_enabled => '已开启';

  @override
  String get containers_disabled => '未开启';

  @override
  String get containers_ipv6ConfigUpdatedRestarting => 'IPv6 配置已更新，Docker 正在重启';

  @override
  String get containers_logRotation => '日志切割';

  @override
  String get containers_logConfigUpdatedRestarting => '日志配置已更新，Docker 正在重启';

  @override
  String get containers_switchOptions => '开关选项';

  @override
  String get containers_swarmUnavailable => 'Swarm 模式下不可用';

  @override
  String get containers_enableLiveRestore => '启用 Live Restore';

  @override
  String get containers_disableLiveRestore => '禁用 Live Restore';

  @override
  String get containers_enableLiveRestoreContent =>
      '启用后，Docker 守护进程停止或崩溃时，正在运行的容器不会中断，守护进程重启后会重新接管这些容器。\n\n此操作会重启 Docker 服务，是否继续？';

  @override
  String get containers_disableLiveRestoreContent =>
      '禁用后，Docker 守护进程停止时，所有正在运行的容器也会随之停止。\n\n此操作会重启 Docker 服务，是否继续？';

  @override
  String get containers_advancedConfig => '高级配置';

  @override
  String get containers_sockPathUpdated => 'Sock Path 已更新';

  @override
  String get containers_allConfig => '全量配置';

  @override
  String get containers_editDaemonJson => '编辑 daemon.json';

  @override
  String get containers_editDaemonJsonSubtitle => '直接编辑 Docker 守护进程配置文件';

  @override
  String get containers_loadingDockerSettings => '正在加载 Docker 设置';

  @override
  String get containers_dockerNotDetected => '未检测到 Docker 容器服务\n容器管理功能不可用';

  @override
  String get containers_dockerNotRunning => 'Docker 容器服务未运行\n请配置 Docker 服务';

  @override
  String get containers_serviceUnavailable => '服务不可用';

  @override
  String get containers_configureDockerService => '配置 Docker 服务';

  @override
  String get containers_resourceCount => '资源数量';

  @override
  String get containers_containers => '容器';

  @override
  String get containers_compose => '编排';

  @override
  String containers_composeRunningStatus(int running, int total) {
    return '$running/$total 运行';
  }

  @override
  String get containers_containerOperations => '容器操作';

  @override
  String get containers_startComposeSubtitle => '启动此编排下的所有容器';

  @override
  String get containers_stopComposeSubtitle => '停止此编排下的所有容器';

  @override
  String get containers_restartComposeSubtitle => '重启此编排下的所有容器';

  @override
  String get containers_composeManagement => '编排管理';

  @override
  String get containers_editComposeSubtitle => '修改 Docker Compose 配置文件';

  @override
  String get containers_logs => '日志';

  @override
  String containers_logSheetTitle(String name) {
    return '$name 日志';
  }

  @override
  String get containers_all => '所有';

  @override
  String get containers_lastDay => '最近一天';

  @override
  String containers_lastHours(int hours) {
    return '最近 $hours 小时';
  }

  @override
  String containers_lastMinutes(int minutes) {
    return '最近 $minutes 分钟';
  }

  @override
  String containers_loadLogsFailed(String error) {
    return '加载日志失败：$error';
  }

  @override
  String get containers_noLogs => '暂无日志';

  @override
  String get containers_clearLogs => '清空日志';

  @override
  String get containers_clearLogsConfirm => '清空日志需要重启容器，该操作无法回滚，是否继续？';

  @override
  String get containers_clear => '清空';

  @override
  String get containers_logsCleared => '已清空日志';

  @override
  String get containers_clearLogsFailed => '清空日志失败';

  @override
  String get containers_noExportableLogs => '没有可导出的日志';

  @override
  String get containers_filter => '过滤';

  @override
  String get containers_lineCount => '条数';

  @override
  String get containers_time => '时间';

  @override
  String get containers_follow => '追踪';

  @override
  String get containers_composeLogsSubtitle => '查看所有容器的合并运行日志';

  @override
  String get containers_terminal => '终端';

  @override
  String get containers_composeTerminalSubtitle => '进入主容器的交互式终端';

  @override
  String get containers_deleteComposeSubtitle => '移除编排及相关容器（保留数据）';

  @override
  String containers_composeOperationConfirm(String operation, String name) {
    return '确定要对编排 $name 执行 $operation 操作吗？';
  }

  @override
  String containers_operationSubmitted(String operation) {
    return '$operation 操作已提交';
  }

  @override
  String containers_operationNamedFailed(String operation) {
    return '$operation 操作失败';
  }

  @override
  String get containers_composeDeleted => '编排已删除';

  @override
  String get containers_deleteComposeFailed => '删除编排失败';

  @override
  String get containers_composeTemplates => '编排模板';

  @override
  String get containers_images => '镜像';

  @override
  String get containers_imageRepos => '镜像仓库';

  @override
  String get containers_networks => '网络';

  @override
  String containers_runningCount(int count) {
    return '运行 $count';
  }

  @override
  String get containers_diskUsage => '磁盘占用';

  @override
  String get containers_localVolumes => '本地存储卷';

  @override
  String get containers_buildCache => '构建缓存';

  @override
  String get containers_dockerConfig => 'Docker 配置';

  @override
  String get containers_experimentalFeatures => '实验特性';

  @override
  String get containers_logSize => '日志大小';

  @override
  String get containers_logFileCount => '日志文件数';

  @override
  String get containers_maintenance => '运维维护';

  @override
  String get containers_runTerminal => '运行终端';

  @override
  String get containers_runTerminalSubtitle => '进入容器内部执行命令';

  @override
  String get containers_viewLogs => '查看日志';

  @override
  String get containers_viewLogsSubtitle => '实时查看容器运行日志';

  @override
  String get containers_realtimeMonitor => '实时监控';

  @override
  String get containers_realtimeMonitorSubtitle => '查看 CPU、内存、网络等指标';

  @override
  String get containers_lifecycle => '生命周期';

  @override
  String get containers_restoreContainer => '恢复容器';

  @override
  String get containers_startContainer => '启动容器';

  @override
  String get containers_restoreContainerSubtitle => '从暂停状态恢复运行';

  @override
  String get containers_startContainerSubtitle => '启动当前已停止的容器';

  @override
  String get containers_stopContainer => '停止容器';

  @override
  String get containers_stopContainerSubtitle => '安全停止容器内运行的进程';

  @override
  String get containers_restartContainer => '重启容器';

  @override
  String get containers_restartContainerSubtitle => '停止并重新启动容器';

  @override
  String get containers_pause => '暂停';

  @override
  String get containers_pauseContainer => '暂停容器';

  @override
  String get containers_pauseContainerSubtitle => '暂停容器内的所有进程';

  @override
  String get containers_forceStop => '强行停止';

  @override
  String get containers_forceStopContainer => '强行停止容器';

  @override
  String get containers_forceStopContainerSubtitle => '立即停止容器运行';

  @override
  String get containers_configAndUpdates => '配置与更新';

  @override
  String get containers_editConfig => '编辑配置';

  @override
  String get containers_editConfigSubtitle => '修改端口、环境、卷映射等';

  @override
  String get containers_upgradeContainer => '升级容器';

  @override
  String get containers_upgradeContainerSubtitle => '拉取新镜像并重新创建容器';

  @override
  String get containers_dataAndImages => '数据与镜像';

  @override
  String get containers_containerBackup => '容器备份';

  @override
  String get containers_containerBackupSubtitle => '将容器数据备份到本地';

  @override
  String containers_backupSheetTitle(String name) {
    return '$name 备份';
  }

  @override
  String get containers_loadBackupsFailed => '加载备份失败';

  @override
  String get containers_runBackup => '运行容器备份';

  @override
  String get containers_createBackupFailed => '创建备份失败';

  @override
  String get containers_noRemark => '无备注';

  @override
  String get containers_runDirectory => '运行目录';

  @override
  String get containers_restore => '恢复';

  @override
  String get containers_restoreBackupTask => '恢复容器备份';

  @override
  String get containers_restoreBackupFailed => '恢复备份失败';

  @override
  String get containers_deleteBackup => '删除备份';

  @override
  String containers_deleteBackupConfirm(String fileName) {
    return '确定要删除备份文件 $fileName 吗？该操作不可撤销。';
  }

  @override
  String get containers_backupDeleted => '已删除备份';

  @override
  String get containers_deleteBackupFailed => '删除备份失败';

  @override
  String get containers_startBackup => '开始备份';

  @override
  String get containers_compressionPasswordOptional => '压缩密码（可选）';

  @override
  String get containers_descriptionOptional => '描述（可选）';

  @override
  String get containers_stopBeforeBackup => '备份前停止容器';

  @override
  String get containers_stopBeforeBackupHint => '启用后备份前将停止容器，完成后自动恢复，以确保数据一致性。';

  @override
  String get containers_restoreBackup => '恢复备份';

  @override
  String get containers_startRestore => '开始恢复';

  @override
  String get containers_restorePasswordHint => '如果备份未设置压缩密码，请留空。';

  @override
  String get containers_restorePasswordOptional => '恢复密码（可选）';

  @override
  String get containers_timeout => '超时时间';

  @override
  String get containers_minutes => '分钟';

  @override
  String get containers_restoreTimeoutHint => '默认 30 分钟，-1 为不限制。';

  @override
  String get containers_commitImage => '制作镜像';

  @override
  String get containers_commitImageSubtitle => '将当前容器提交为新镜像';

  @override
  String get containers_dangerZone => '危险区域';

  @override
  String get containers_deleteContainer => '删除容器';

  @override
  String get containers_deleteContainerSubtitle => '彻底移除此容器及相关配置';

  @override
  String containers_operationConfirm(String operation, String name) {
    return '确定要对容器 $name 执行$operation操作吗？';
  }

  @override
  String get containers_operationFailed => '操作失败';

  @override
  String get containers_pruneContainers => '清理容器';

  @override
  String get containers_pruneContainersConfirm =>
      '清理容器 将删除所有处于停止状态的容器。\n\n若容器来自于应用商店，在执行清理操作后，您需要前往 [应用商店] 的 [已安装] 列表，点击 [重建] 按钮进行重新安装。\n\n该操作无法回滚，是否继续？';

  @override
  String get containers_pruneFailed => '清理失败';

  @override
  String get containers_addedFavorite => '已加入收藏';

  @override
  String get containers_removedFavorite => '已取消收藏';

  @override
  String get containers_operationGeneric => '操作';

  @override
  String containers_commitImageTask(String name) {
    return '制作镜像: $name';
  }

  @override
  String containers_upgradeContainerTask(String name) {
    return '升级容器: $name';
  }

  @override
  String get containers_nameRequired => '名称不能为空';

  @override
  String get containers_repoAddressRequired => '仓库地址不能为空';

  @override
  String get containers_repoAddressNoProtocol => '仓库地址不能包含协议前缀';

  @override
  String get containers_httpProtocolWarning => 'HTTP 协议警告';

  @override
  String get containers_httpProtocolWarningContent =>
      '当前使用 HTTP 协议，数据传输未加密，存在安全风险。是否继续？';

  @override
  String get containers_repoUpdated => '仓库已更新';

  @override
  String get containers_repoCreated => '仓库已创建';

  @override
  String get containers_updateFailed => '更新失败';

  @override
  String get containers_createFailed => '创建失败';

  @override
  String get containers_editRepo => '编辑仓库';

  @override
  String get containers_addRepo => '添加仓库';

  @override
  String get containers_add => '添加';

  @override
  String get containers_repoNameRequiredPlaceholder => '仓库名称 (必填)';

  @override
  String get containers_repoAddressPlaceholder =>
      '仓库地址，例如 registry.example.com:5000';

  @override
  String get containers_protocol => '协议';

  @override
  String get containers_authSettings => '认证设置';

  @override
  String get containers_enableAuth => '启用认证';

  @override
  String get containers_enableAuthSubtitle => '使用用户名和密码访问仓库';

  @override
  String get containers_username => '用户名';

  @override
  String get containers_password => '密码';

  @override
  String get containers_composeContentRequired => '请输入 Docker Compose 内容';

  @override
  String get containers_composeValidationFailed => '校验失败，请检查配置';

  @override
  String containers_creatingComposeTask(String name) {
    return '正在创建编排 $name';
  }

  @override
  String containers_updatingComposeTask(String name) {
    return '正在更新编排 $name';
  }

  @override
  String get containers_retryFailed => '重试失败';

  @override
  String get containers_newCompose => '新建编排';

  @override
  String containers_editComposeTitle(String name) {
    return '编辑编排 $name';
  }

  @override
  String get containers_folderNameRequiredPlaceholder => '文件夹名称 (必填)';

  @override
  String get containers_savePathLabel => '保存路径：';

  @override
  String get containers_composeConfig => 'Compose 配置';

  @override
  String get containers_extraEnvVars => '额外环境变量';

  @override
  String get containers_createOptions => '创建选项';

  @override
  String get containers_updateOptions => '更新选项';

  @override
  String get containers_forcePullImage => '强制拉取镜像';

  @override
  String get containers_forcePullImageSubtitle => '忽略服务器已存在的镜像，重新从远程仓库拉取一次';

  @override
  String get containers_tapAddEnvVar => '点击添加额外环境变量';

  @override
  String get containers_addEnvVarItem => '添加环境变量项';

  @override
  String get containers_loadComposeConfigFailed => '加载编排配置失败';

  @override
  String get containers_defaultDriver => '默认驱动';

  @override
  String get containers_systemNetworkCannotDelete => '系统网络不可删除';

  @override
  String get containers_deleteNetworkSubtitle => '永久删除此网络';

  @override
  String get containers_inspectOverview => 'Inspect 概览';

  @override
  String get containers_networkId => '网络 ID';

  @override
  String get containers_driver => '驱动';

  @override
  String get containers_subnet => '子网';

  @override
  String get containers_createdAt => '创建时间';

  @override
  String get containers_custom => '自定义';

  @override
  String get containers_readingNetworkDetails => '正在读取网络详情';

  @override
  String get containers_readFailed => '读取失败';

  @override
  String get containers_parseFailed => '解析失败';

  @override
  String get containers_pruneBuildCache => '清理构建缓存';

  @override
  String get containers_pruneBuildCacheConfirm => '该操作将清理所有构建缓存，释放磁盘空间。是否继续？';

  @override
  String containers_imageCount(int count) {
    return '$count 个镜像';
  }

  @override
  String get containers_batchDeleteImages => '批量删除镜像';

  @override
  String get containers_deleteImage => '删除镜像';

  @override
  String containers_deleteImageConfirm(String name) {
    return '确定要删除 $name 吗？';
  }

  @override
  String get containers_deleteFailed => '删除失败';

  @override
  String get containers_pullImage => '拉取镜像';

  @override
  String get containers_pullFailed => '拉取失败';

  @override
  String get containers_selectImageFile => '选择镜像文件';

  @override
  String get containers_import => '导入';

  @override
  String get containers_importImage => '导入镜像';

  @override
  String get containers_importFailed => '导入失败';

  @override
  String containers_buildImageTask(String name) {
    return '构建镜像 $name';
  }

  @override
  String get containers_buildFailed => '构建失败';

  @override
  String get containers_updateImage => '更新镜像';

  @override
  String get containers_imageUsed => '使用中';

  @override
  String get containers_imageUnused => '未使用';

  @override
  String get containers_commonActions => '常用操作';

  @override
  String get containers_push => '推送';

  @override
  String get containers_pushImageSubtitle => '将镜像推送到远程仓库';

  @override
  String get containers_export => '导出';

  @override
  String get containers_exportImageSubtitle => '将镜像导出为 tar 文件';

  @override
  String get containers_updateImageSubtitle => '重新拉取此镜像最新版本';

  @override
  String containers_updateImageConfirm(String tags) {
    return '将重新拉取以下标签:\n$tags';
  }

  @override
  String get containers_pull => '拉取';

  @override
  String get containers_tags => '标签';

  @override
  String get containers_tagsSubtitle => '修改或添加镜像标签';

  @override
  String get containers_removeLocalImageSubtitle => '从本地移除此镜像';

  @override
  String get containers_pruneImages => '清理镜像';

  @override
  String get containers_prune => '清理';

  @override
  String get containers_noImagesToPrune => '当前范围内没有可清理的镜像';

  @override
  String get containers_selectAtLeastOneImage => '请至少选择一个镜像';

  @override
  String get containers_pruneImagesFailed => '清理失败';

  @override
  String get containers_danglingImages => '悬空镜像';

  @override
  String get containers_unusedImages => '未使用镜像';

  @override
  String containers_prunableImageCount(int count) {
    return '共 $count 个可清理镜像';
  }

  @override
  String get containers_selectAll => '全选';

  @override
  String get containers_loadImageListFailed => '加载镜像列表失败';

  @override
  String get containers_selectDockerfile => '选择 Dockerfile';

  @override
  String get containers_imageNameRequired => '镜像名称不能为空';

  @override
  String get containers_dockerfileContentRequired => '请输入 Dockerfile 内容';

  @override
  String get containers_dockerfilePathRequired => '请选择 Dockerfile 路径';

  @override
  String get containers_buildImage => '构建镜像';

  @override
  String get containers_build => '构建';

  @override
  String get containers_imageNamePlaceholder => '镜像名称 (必填，例如: myapp:latest)';

  @override
  String get containers_manualInput => '手动输入';

  @override
  String get containers_serverPath => '服务器路径';

  @override
  String get containers_dockerfilePathPlaceholder => '请选择或输入 Dockerfile 路径';

  @override
  String get containers_additionalOptionsOptional => '附加选项 (可选)';

  @override
  String get containers_tagsMultilinePlaceholder => 'Tags (多行输入，每行一个)';

  @override
  String get containers_argsMultilinePlaceholder =>
      'Args (多行输入，例如: HTTP_PROXY=http://x.x.x.x)';

  @override
  String get containers_containerList => '容器列表';

  @override
  String get containers_searchContainers => '搜索容器...';

  @override
  String get containers_more => '更多';

  @override
  String get containers_sortByCpu => '按 CPU 占用排序';

  @override
  String get containers_sortByMemory => '按内存占用排序';

  @override
  String get containers_restoreDefaultSort => '恢复默认排序';

  @override
  String get containers_loadContainersFailed => '加载容器失败';

  @override
  String get containers_containerCompose => '容器编排';

  @override
  String get containers_searchCompose => '搜索编排...';

  @override
  String get containers_createCompose => '创建编排';

  @override
  String get containers_refreshList => '刷新列表';

  @override
  String get containers_noComposeFound => '未搜索到编排';

  @override
  String get containers_noCompose => '暂无编排';

  @override
  String get containers_tryAnotherKeyword => '换个关键词试试吧';

  @override
  String get containers_noComposeSubtitle => '您还没有创建任何 Docker Compose 编排';

  @override
  String get containers_loadComposeListFailed => '加载编排列表失败';

  @override
  String get containers_selectExportDirectory => '选择导出目录';

  @override
  String get containers_imageNoAvailableTag => '镜像没有可用标签';

  @override
  String get containers_selectExportDirectoryRequired => '请选择导出目录';

  @override
  String get containers_enterFileName => '请输入文件名';

  @override
  String get containers_exportImage => '导出镜像';

  @override
  String get containers_exportFailed => '导出失败';

  @override
  String get containers_localTag => '本地标签';

  @override
  String get containers_saveDirectory => '保存目录';

  @override
  String get containers_selectServerDirectory => '请选择服务器目录';

  @override
  String get containers_fileName => '文件名';

  @override
  String get containers_imageExportFilePlaceholder => '例如: my-backup (不含 .tar)';

  @override
  String get containers_pushNameRequired => '请输入推送名称';

  @override
  String get containers_pushImage => '推送镜像';

  @override
  String get containers_pushFailed => '推送失败';

  @override
  String get containers_noRepoConfigured => '暂无仓库配置';

  @override
  String get containers_pushName => '推送名称';

  @override
  String get containers_pushNamePlaceholder => '例如: myimage:latest';

  @override
  String get containers_addAtLeastOneTag => '请至少添加一个标签';

  @override
  String get containers_editTagsFailed => '修改标签失败';

  @override
  String get containers_editTags => '修改标签';

  @override
  String get containers_imageId => '镜像 ID';

  @override
  String get containers_tagList => '标签列表';

  @override
  String get containers_addTag => '添加标签';

  @override
  String get containers_tagEditHint => '提示: 提交后会与现有标签对比，新增或移除对应的 Docker 标签。';

  @override
  String get containers_tagPlaceholder => '例如: nginx:latest';

  @override
  String get containers_enterNewImageName => '请输入新镜像名称';

  @override
  String get containers_imageNameInvalid => '镜像名称格式不正确';

  @override
  String get containers_imageNameInvalidDescription =>
      '支持英文字母、数字、:@/.-_，且不能以特殊字符开头';

  @override
  String get containers_submitFailed => '提交失败';

  @override
  String get containers_newImageName => '新镜像名称';

  @override
  String get containers_newImageNamePlaceholder => '例如: my-nginx:v1.0';

  @override
  String get containers_commitInfo => '提交信息';

  @override
  String get containers_optionalDescription => '选填，描述内容';

  @override
  String get containers_author => '作者';

  @override
  String get containers_optionalAuthor => '选填，作者信息';

  @override
  String get containers_pauseDuringCommit => '制作过程中暂停容器';

  @override
  String get containers_pauseDuringCommitSubtitle => '启用后可确保数据一致性';

  @override
  String get containers_targetImageRequired => '请输入目标镜像';

  @override
  String get containers_submitUpgradeFailed => '提交升级失败';

  @override
  String get containers_targetImage => '目标镜像';

  @override
  String get containers_upgradeDataLossWarning => '升级操作需要重建容器，任何未持久化的数据将会丢失。';

  @override
  String containers_intervalSeconds(int seconds) {
    return '$seconds 秒';
  }

  @override
  String get containers_cpuUsage => 'CPU 使用率';

  @override
  String get containers_memoryUsage => '内存占用';

  @override
  String get containers_networkTraffic => '网络流量 (RX / TX)';

  @override
  String get containers_diskIo => '磁盘 I/O (Read / Write)';

  @override
  String get containers_searchNetworks => '搜索网络...';

  @override
  String get containers_systemNetwork => '系统网络';

  @override
  String get containers_networkOperations => '网络操作';

  @override
  String get containers_viewDetails => '查看详情';

  @override
  String get containers_viewNetworkDetailsSubtitle => '查看网络配置详情';

  @override
  String get containers_pruneUnusedNetworks => '清理未使用网络';

  @override
  String get containers_pruneUnusedNetworksSubtitle => '清理所有未使用的网络';

  @override
  String get containers_getDetailsFailed => '获取详情失败';

  @override
  String get containers_noNetworkFound => '未搜索到网络';

  @override
  String get containers_noNetwork => '暂无网络';

  @override
  String get containers_noNetworkSubtitle => '当前没有 Docker 网络';

  @override
  String get containers_loadNetworkListFailed => '加载网络列表失败';

  @override
  String get containers_deleteNetwork => '删除网络';

  @override
  String containers_deleteNetworkConfirm(String name) {
    return '确定要删除网络 \"$name\" 吗？';
  }

  @override
  String containers_deleteNetworksConfirm(int count) {
    return '确定要删除选中的 $count 个网络吗？';
  }

  @override
  String get containers_deleteSuccess => '删除成功';

  @override
  String get containers_pruneUnusedNetworksConfirm => '将清理所有未使用的网络，是否继续？';

  @override
  String get containers_pruneNetworks => '清理网络';

  @override
  String get containers_pruneNetworksFailed => '清理失败';

  @override
  String get containers_statusNormal => '正常';

  @override
  String get containers_statusAbnormal => '异常';

  @override
  String get containers_repoOperations => '仓库操作';

  @override
  String get containers_editRepoSubtitle => '修改仓库地址和认证信息';

  @override
  String get containers_sync => '同步';

  @override
  String get containers_syncRepoSubtitle => '检测仓库连接状态';

  @override
  String get containers_deleteRepo => '删除仓库';

  @override
  String get containers_deleteRepoSubtitle => '永久删除此仓库';

  @override
  String get containers_deleteRepoConfirm => '确定要删除此镜像仓库吗？';

  @override
  String get containers_syncSuccess => '同步成功';

  @override
  String get containers_syncFailed => '同步失败';

  @override
  String get containers_searchRepos => '搜索仓库...';

  @override
  String get containers_noRepoFound => '未搜索到仓库';

  @override
  String get containers_noRepo => '暂无仓库';

  @override
  String get containers_noRepoSubtitle => '您还没有添加任何镜像仓库';

  @override
  String get containers_loadRepoListFailed => '加载仓库列表失败';

  @override
  String get containers_auth => '认证';

  @override
  String get containers_searchTemplates => '搜索模板...';

  @override
  String get containers_createTemplate => '创建模板';

  @override
  String get containers_editTemplate => '编辑模板';

  @override
  String get containers_importTemplate => '导入模板';

  @override
  String get containers_exportAll => '导出全部';

  @override
  String get containers_noTemplatesToExport => '没有可导出的模板';

  @override
  String get containers_noTemplateFound => '未搜索到模板';

  @override
  String get containers_noTemplate => '暂无模板';

  @override
  String get containers_noTemplateSubtitle => '您还没有创建任何编排模板';

  @override
  String get containers_loadTemplateListFailed => '加载模板列表失败';

  @override
  String get containers_templateUpdated => '模板已更新';

  @override
  String get containers_templateCreated => '模板已创建';

  @override
  String get containers_templateNameRequiredPlaceholder => '模板名称 (必填)';

  @override
  String get containers_templateDescriptionOptional => '模板描述 (可选)';

  @override
  String get containers_composeContent => 'Compose 内容';

  @override
  String get containers_template => '模板';

  @override
  String get containers_templateOperations => '模板操作';

  @override
  String get containers_editTemplateSubtitle => '修改模板名称、描述和内容';

  @override
  String get containers_viewContent => '查看内容';

  @override
  String get containers_viewYamlSubtitle => '查看 YAML 配置内容';

  @override
  String get containers_deleteTemplateSubtitle => '永久删除此模板';

  @override
  String get containers_cannotReadFile => '无法读取文件';

  @override
  String get containers_readFileFailed => '读取文件失败';

  @override
  String get containers_jsonRootArrayRequired => 'JSON 格式错误：根节点必须为数组';

  @override
  String get containers_noValidTemplateData => '未找到有效的模板数据';

  @override
  String containers_importTemplatesSuccess(int count) {
    return '成功导入 $count 个模板';
  }

  @override
  String get containers_batchDeleteTemplates => '批量删除模板';

  @override
  String get containers_deleteTemplate => '删除模板';

  @override
  String get containers_deleteTemplateConfirm => '确定要删除此模板吗？';

  @override
  String containers_deleteTemplatesConfirm(int count) {
    return '确定要删除 $count 个模板吗？';
  }

  @override
  String get containers_logRotationParams => '切割参数';

  @override
  String get containers_logSizeLimit => '日志大小上限';

  @override
  String get containers_logSizeExample => '例如 10m, 100m, 1g';

  @override
  String get containers_maxLogFiles => '最大日志文件数';

  @override
  String get containers_maxLogFilesExample => '例如 3, 5, 10';

  @override
  String get containers_dockerRestartApplyConfig => '修改后 Docker 服务将自动重启以应用新配置。';

  @override
  String containers_currentValue(String value) {
    return '当前: $value';
  }

  @override
  String get containers_cgroupFsDriverDesc => '传统 cgroup 驱动';

  @override
  String get containers_cgroupSystemdDriverDesc => 'systemd 集成驱动';

  @override
  String get containers_inputAddress => '输入地址';

  @override
  String get containers_noData => '暂无数据';

  @override
  String get containers_pullFromRepo => '从镜像仓库拉取';

  @override
  String get containers_selectRepo => '选择仓库';

  @override
  String get containers_pullNow => '立即拉取';

  @override
  String get containers_searchImages => '搜索镜像名称...';

  @override
  String get containers_noImages => '没有镜像';

  @override
  String get containers_noMatchingImages => '未找到匹配镜像';

  @override
  String get containers_imagesEmptySubtitle => '您可以在此查看和管理本地 Docker 镜像';

  @override
  String get containers_trySearchKeyword => '尝试换个关键词搜索吧';

  @override
  String get containers_loadImagesFailed => '加载镜像失败';

  @override
  String get containers_memory => '内存';

  @override
  String get containers_workDir => '工作目录';

  @override
  String get containers_appStoreSource => '应用商店';

  @override
  String get containers_localSource => '本地';

  @override
  String get containers_deleteCompose => '删除编排';

  @override
  String get containers_confirmDelete => '确认删除';

  @override
  String containers_deleteComposeConfirm(String name) {
    return '确定要删除容器编排 $name 吗？';
  }

  @override
  String get containers_deleteFiles => '删除文件';

  @override
  String get containers_deleteFilesSubtitle =>
      '删除容器编排的所有文件，包括配置文件和持久化文件，请谨慎操作！';

  @override
  String get containers_forceDelete => '强制删除';

  @override
  String get containers_forceDeleteSubtitle => '强制删除，会忽略删除过程中产生的错误并最终删除元数据';

  @override
  String get containers_openTerminalFailed => '无法打开终端';

  @override
  String get containers_composeNoAvailableContainer => '该编排下暂无可用容器';

  @override
  String get containers_selectContainer => '选择容器';

  @override
  String get containers_selectContainerMessage => '请选择要进入终端的容器';

  @override
  String get containers_getContainerIdFailed => '获取 container id 失败';

  @override
  String get containers_loadOverviewFailed => '加载容器概览失败';

  @override
  String get containers_loadMoreBackupsFailed => '加载更多备份失败';

  @override
  String get databases_management => '数据库管理';

  @override
  String get databases_changePassword => '改密';

  @override
  String get databases_changePasswordSubtitle => '修改数据库密码';

  @override
  String get databases_access => '权限';

  @override
  String get databases_accessSubtitle => '管理数据库访问权限';

  @override
  String get databases_backupList => '备份列表';

  @override
  String get databases_backupListSubtitle => '查看和管理数据库备份';

  @override
  String get databases_importBackup => '导入备份';

  @override
  String get databases_importBackupSubtitle => '从备份文件恢复数据库';

  @override
  String get databases_dangerZone => '危险区域';

  @override
  String get databases_deleteSubtitle => '彻底删除此数据库';

  @override
  String get databases_connectionInfo => '连接信息';

  @override
  String databases_loadFailedWithError(Object error) {
    return '加载失败：$error';
  }

  @override
  String get databases_enableRemoteAccess => '开启远程访问';

  @override
  String get databases_disableRemoteAccess => '关闭远程访问';

  @override
  String get databases_enableRemoteAccessContent =>
      '开启后，将允许 root 用户从任意主机连接此数据库。建议仅在必要时开启。';

  @override
  String get databases_disableRemoteAccessContent => '关闭后，root 用户将仅允许从本地连接。';

  @override
  String get databases_enable => '开启';

  @override
  String get databases_disable => '关闭';

  @override
  String get databases_remoteAccessEnabled => '远程访问已开启';

  @override
  String get databases_remoteAccessDisabled => '远程访问已关闭';

  @override
  String get databases_operationFailed => '操作失败';

  @override
  String get databases_containerConnection => '容器内部连接';

  @override
  String get databases_externalConnection => '外部/远程连接';

  @override
  String get databases_address => '地址';

  @override
  String get databases_port => '端口';

  @override
  String get databases_accessPermissions => '访问权限';

  @override
  String get databases_adminCredentials => '管理员凭据';

  @override
  String get databases_username => '用户名';

  @override
  String get databases_password => '密码';

  @override
  String get databases_remoteAccess => '远程访问';

  @override
  String get databases_enabled => '已开启';

  @override
  String get databases_disabled => '已关闭';

  @override
  String get databases_connectionAddress => '连接地址';

  @override
  String get databases_authentication => '身份验证';

  @override
  String get databases_instanceNotRunning => '实例未运行';

  @override
  String databases_instanceStatusMessage(String status) {
    return '当前数据库实例状态: $status\n请先启动实例后再管理数据库';
  }

  @override
  String get databases_checkFailed => '检查失败';

  @override
  String get databases_deleted => '数据库已删除';

  @override
  String get databases_deleteFailed => '删除失败';

  @override
  String get databases_deleteDatabase => '删除数据库';

  @override
  String get databases_deleteBlocked => '以下资源正在使用该数据库，请先解除关联后再删除。';

  @override
  String databases_deleteWarning(String name) {
    return '此操作将永久删除数据库「$name」及其所有数据，不可恢复。';
  }

  @override
  String databases_deleteConfirmInput(String name) {
    return '请输入库名「$name」以确认删除';
  }

  @override
  String get databases_forceDelete => '强制删除';

  @override
  String get databases_forceDeleteSubtitle => '即使数据库侧删除失败也继续移除面板记录';

  @override
  String get databases_deleteBackups => '同时删除备份';

  @override
  String get databases_deleteBackupsSubtitle => '删除该库的所有备份文件和备份记录';

  @override
  String get databases_confirmDelete => '确认删除';

  @override
  String get databases_enterNewPassword => '请输入新密码';

  @override
  String get databases_passwordNoSpaces => '密码不能包含空格';

  @override
  String get databases_passwordMinLength => '密码长度不能少于 6 位';

  @override
  String get databases_confirmPasswordChange => '确认改密';

  @override
  String databases_passwordChangeUsedWarning(String resources) {
    return '该数据库有网站或应用正在使用：\n$resources\n\n修改密码可能影响关联服务，是否继续？';
  }

  @override
  String get databases_passwordChanged => '密码修改成功';

  @override
  String get databases_passwordChangeFailed => '改密失败';

  @override
  String get databases_newPassword => '新密码';

  @override
  String get databases_passwordChangeHint => '密码不能包含空格，修改后需同步更新关联应用配置';

  @override
  String get databases_confirmChange => '确认修改';

  @override
  String databases_backupSheetTitle(String name) {
    return '$name 备份';
  }

  @override
  String get databases_loadBackupsFailed => '加载备份失败';

  @override
  String get databases_runBackup => '运行备份';

  @override
  String get databases_createBackupFailed => '创建备份失败';

  @override
  String get databases_noRemark => '无备注';

  @override
  String get databases_download => '下载';

  @override
  String get databases_restore => '恢复';

  @override
  String get databases_directory => '目录';

  @override
  String get databases_backupDirectoryEmpty => '备份目录为空';

  @override
  String get databases_restoreBackup => '恢复备份';

  @override
  String get databases_restoreBackupFailed => '恢复备份失败';

  @override
  String get databases_deleteBackup => '删除备份';

  @override
  String databases_deleteBackupConfirm(String fileName) {
    return '确定要删除备份文件 $fileName 吗？该操作不可撤销。';
  }

  @override
  String get databases_deletedBackup => '已删除备份';

  @override
  String get databases_deleteBackupFailed => '删除备份失败';

  @override
  String get databases_compressionPassword => '压缩密码';

  @override
  String get databases_optional => '可选';

  @override
  String get databases_remarkDescription => '备注描述';

  @override
  String get databases_backupArgs => '备份参数';

  @override
  String get databases_startBackup => '开始备份';

  @override
  String get databases_restorePasswordHint => '如果备份未设置压缩密码，请留空。';

  @override
  String get databases_restorePassword => '恢复密码';

  @override
  String get databases_startRestore => '开始恢复';

  @override
  String get databases_uploadFromLocal => '从本地上传';

  @override
  String get databases_chooseFromServer => '从服务器选择';

  @override
  String get databases_uploadFailed => '上传失败';

  @override
  String get databases_selectBackupFile => '选择备份文件';

  @override
  String get databases_supportedBackupFormats =>
      '支持格式：.sql、.sql.gz、.tar.gz、.zip';

  @override
  String get databases_noBackupFiles => '暂无备份文件';

  @override
  String get databases_addBackupFileHint => '点击右上角 + 添加备份文件';

  @override
  String get databases_restoreFailed => '恢复失败';

  @override
  String get databases_deleteFile => '删除文件';

  @override
  String databases_deleteFileConfirm(String fileName) {
    return '确定要删除 $fileName 吗？';
  }

  @override
  String get databases_serverFile => '服务器文件';

  @override
  String get databases_restorePasswordOptional => '恢复密码（可选）';

  @override
  String get databases_unbound => '已解绑';

  @override
  String get databases_unbindFailed => '解绑失败';

  @override
  String get databases_unbindRemoteInstance => '解绑远程实例';

  @override
  String databases_unbindWarning(String name) {
    return '此操作将移除远程连接「$name」，面板将不再管理该实例。';
  }

  @override
  String databases_unbindConfirmInput(String name) {
    return '请输入名称「$name」以确认解绑';
  }

  @override
  String get databases_forceUnbind => '强制解绑';

  @override
  String get databases_forceUnbindSubtitle => '即使远程实例侧操作失败也继续移除面板记录';

  @override
  String get databases_deleteInstanceBackupsSubtitle => '删除该实例的所有备份文件和备份记录';

  @override
  String get databases_confirmUnbind => '确认解绑';

  @override
  String get databases_remote => '远程';

  @override
  String get databases_local => '本地';

  @override
  String databases_createdAt(String time) {
    return '创建于 $time';
  }

  @override
  String get databases_none => '无';

  @override
  String get databases_emptyTitle => '暂无数据库';

  @override
  String get databases_emptySubtitle => '此实例中还没有数据库\n点击右上角菜单新建';

  @override
  String get databases_createDatabase => '新建数据库';

  @override
  String get databases_databaseName => '数据库名';

  @override
  String get databases_enterDatabaseName => '请输入数据库名称';

  @override
  String get databases_databaseNameNoSpaces => '数据库名称不能包含空格';

  @override
  String get databases_databaseNameAllowedChars => '数据库名称只能包含字母、数字和下划线';

  @override
  String get databases_enterUsername => '请输入用户名';

  @override
  String get databases_localRootUsernameForbidden => '本地数据库不能使用 root 作为用户名';

  @override
  String get databases_enterPassword => '请输入密码';

  @override
  String get databases_enterIpOrCidr => '请输入 IP 地址或网段';

  @override
  String get databases_ipNoSpaces => 'IP 不能包含空格';

  @override
  String get databases_created => '数据库创建成功';

  @override
  String get databases_createFailed => '创建失败';

  @override
  String get databases_basicInfo => '基本信息';

  @override
  String get databases_charset => '字符集';

  @override
  String get databases_collation => '排序规则';

  @override
  String get databases_default => '默认';

  @override
  String get databases_collationHint => '留空则使用字符集的默认排序规则';

  @override
  String get databases_grantScope => '授权范围';

  @override
  String get databases_anyHost => '任意主机 (%)';

  @override
  String get databases_localhostOnly => '仅本机 (localhost)';

  @override
  String get databases_specifiedIp => '指定 IP';

  @override
  String get databases_ipAddress => 'IP 地址';

  @override
  String get databases_ipExample => '例如：192.168.1.0/24';

  @override
  String get databases_descriptionOptional => '描述（可选）';

  @override
  String get databases_description => '描述';

  @override
  String get databases_optionalRemark => '可选备注';

  @override
  String get databases_encoding => '编码';

  @override
  String get databases_superUser => '超级用户';

  @override
  String get databases_superUserHint => '开启后该用户将拥有 PostgreSQL 超级用户权限';

  @override
  String get databases_currentPermission => '当前权限';

  @override
  String get databases_unset => '未设置';

  @override
  String databases_specificIpValue(String ip) {
    return '指定 IP ($ip)';
  }

  @override
  String get databases_anyHostShort => '任意主机';

  @override
  String get databases_localhostOnlyShort => '仅本机';

  @override
  String get databases_accessChanged => '权限修改成功';

  @override
  String get databases_accessChangeFailed => '修改权限失败';

  @override
  String get databases_ipCidrHint =>
      '支持单个 IP 或 CIDR 网段，如 192.168.1.100 或 10.0.0.0/8';

  @override
  String get databases_multipleIpHint =>
      '多个 IP 以逗号分隔，例：172.16.10.111,172.16.10.112';

  @override
  String get databases_portRange => '端口范围 1-65535';

  @override
  String get databases_portUnchanged => '端口未变更';

  @override
  String databases_portChanged(int port) {
    return '端口已修改为 $port';
  }

  @override
  String get databases_changeFailed => '修改失败';

  @override
  String get databases_portSettings => '端口设置';

  @override
  String get databases_portChangeHint => '修改端口后，数据库服务将自动重启。请确保新端口未被占用。';

  @override
  String get databases_invalidSlowLogThreshold => '请输入有效的阈值（秒）';

  @override
  String get databases_noChanges => '没有变更';

  @override
  String get databases_slowLogSaved => '慢日志配置已保存';

  @override
  String get databases_saveFailed => '保存失败';

  @override
  String get databases_noSlowQueryRecords => '暂无慢查询记录';

  @override
  String get databases_slowQueryLog => '慢查询日志';

  @override
  String get databases_readFailed => '读取失败';

  @override
  String get databases_slowLog => '慢日志';

  @override
  String get databases_slowLogHint =>
      '启用后，执行时间超过阈值的 SQL 语句将被记录到慢查询日志中。阈值越小，记录越多，可能影响性能。';

  @override
  String get databases_logRecords => '日志记录';

  @override
  String get databases_viewRecords => '查看记录';

  @override
  String get databases_enableSlowQueryLog => '启用慢查询日志';

  @override
  String get databases_thresholdSeconds => '阈值（秒）';

  @override
  String get databases_thresholdHint => '超过此时间的查询将被记录';

  @override
  String get databases_loadMoreBackupsFailed => '加载更多备份失败';

  @override
  String get databases_downloadPathUnavailable => '无法获取服务器下载路径';

  @override
  String get databases_downloadedFileEmpty => '文件下载失败或为空';

  @override
  String get databases_downloadShareFailed => '下载分享失败';

  @override
  String get databases_fileCopiedToImportDir => '文件已复制到导入目录';

  @override
  String get databases_copyFileFailed => '复制文件失败';

  @override
  String get databases_fileUploaded => '文件上传成功';

  @override
  String get databases_uploadFileFailed => '上传文件失败';

  @override
  String get databases_fileDeleted => '已删除文件';

  @override
  String get databases_deleteFileFailed => '删除文件失败';

  @override
  String get databases_stateNotReady => '状态未就绪';

  @override
  String get databases_notRunning => '数据库未运行';

  @override
  String get databases_connectionManagement => '连接管理';

  @override
  String get databases_editConnection => '编辑连接';

  @override
  String get databases_editConnectionSubtitle => '修改远程连接配置';

  @override
  String get databases_operations => '操作';

  @override
  String get databases_unbind => '解绑';

  @override
  String get databases_unbindRemoteDatabase => '解绑远程数据库';

  @override
  String get databases_config => '配置';

  @override
  String get databases_configFile => '配置文件';

  @override
  String get databases_configFileSubtitle => '查看并修改配置文件';

  @override
  String get databases_performance => '性能';

  @override
  String get databases_performanceTuning => '性能调整';

  @override
  String get databases_performanceParamsSaved => '性能参数已保存';

  @override
  String databases_versionValue(String version) {
    return '版本 $version';
  }

  @override
  String get databases_installPath => '安装路径';

  @override
  String get databases_container => '容器';

  @override
  String get databases_basicParams => '基础参数';

  @override
  String get databases_startTime => '启动时间';

  @override
  String get databases_totalConnections => '总连接数';

  @override
  String get databases_sent => '发送';

  @override
  String get databases_received => '接收';

  @override
  String get databases_queriesPerSecond => '每秒查询';

  @override
  String get databases_transactionsPerSecond => '每秒事务';

  @override
  String get databases_performanceParams => '性能参数';

  @override
  String get databases_threadCacheHitRate => '线程缓存命中率';

  @override
  String get databases_indexHitRate => '索引命中率';

  @override
  String get databases_innodbIndexHitRate => 'Innodb 索引命中率';

  @override
  String get databases_queryCacheHitRate => '查询缓存命中率';

  @override
  String get databases_tmpDiskTables => '创建临时表到磁盘';

  @override
  String get databases_openTables => '已打开的表';

  @override
  String get databases_noIndexUsage => '没有使用索引的量';

  @override
  String get databases_noIndexJoin => '没有索引的 JOIN 量';

  @override
  String get databases_sortMergePasses => '排序后的合并次数';

  @override
  String get databases_tableLocks => '锁表次数';

  @override
  String get databases_qpsHighHint => '若值过大，增加 max_connections';

  @override
  String get databases_threadCacheLowHint => '若过低,增加 thread_cache_size';

  @override
  String get databases_keyBufferLowHint => '若过低,增加 key_buffer_size';

  @override
  String get databases_innodbBufferLowHint => '若过低,增加 innodb_buffer_pool_size';

  @override
  String get databases_queryCacheLowHint => '若过低,增加 query_cache_size';

  @override
  String get databases_tmpDiskTablesHighHint => '若过大,尝试增加 tmp_table_size';

  @override
  String get databases_tableOpenCacheHint => 'table_open_cache 配置值应大于等于此值';

  @override
  String get databases_indexCheckHint => '若不为0，请检查数据表的索引是否合理';

  @override
  String get databases_sortBufferHighHint => '若值过大，增加sort_buffer_size';

  @override
  String get databases_tableLocksHighHint => '若值过大，请考虑增加您的数据库性能';

  @override
  String get databases_runningStatus => '运行状态';

  @override
  String get databases_runningDays => '运行天数';

  @override
  String databases_daysValue(String days) {
    return '$days 天';
  }

  @override
  String get databases_listeningPort => '监听端口';

  @override
  String get databases_connectedClients => '连接客户端';

  @override
  String get databases_memoryRss => '内存 (RSS)';

  @override
  String get databases_memoryUsed => '内存使用';

  @override
  String get databases_memoryPeak => '内存峰值';

  @override
  String get databases_fragmentationRatio => '碎片率';

  @override
  String get databases_totalCommands => '总命令数';

  @override
  String get databases_opsPerSecond => '每秒操作';

  @override
  String get databases_hits => '命中次数';

  @override
  String get databases_misses => '未命中次数';

  @override
  String get databases_hitRate => '命中率';

  @override
  String get databases_latestForkTime => '最近 fork 耗时';

  @override
  String get databases_memoryRssHint => '向操作系统申请的内存大小';

  @override
  String get databases_memoryUsedHint => '当前 Redis 使用的内存大小';

  @override
  String get databases_memoryPeakHint => 'Redis 的内存消耗峰值';

  @override
  String get databases_fragmentationRatioHint => '若过大，尝试增加 tmp_table_size';

  @override
  String get databases_totalConnectionsHint => '运行以来连接过的客户端的总数量';

  @override
  String get databases_totalCommandsHint => '运行以来执行过的命令的总数量';

  @override
  String get databases_opsPerSecondHint => '服务器每秒钟执行的命令数量';

  @override
  String get databases_hitsHint => '查找数据库键成功的次数';

  @override
  String get databases_missesHint => '查找数据库键失败的次数';

  @override
  String get databases_hitRateHint => '查找数据库键命中率';

  @override
  String get databases_latestForkTimeHint => '最近一次 fork() 操作耗费的微秒数';

  @override
  String get databases_perfGroupConnection => '连接';

  @override
  String get databases_perfGroupBuffer => '缓冲区';

  @override
  String get databases_perfGroupQuery => '查询';

  @override
  String get databases_perfGroupOther => '其他';

  @override
  String get databases_perfGroupMemory => '内存';

  @override
  String get databases_perfMaxConnections => '最大连接数';

  @override
  String get databases_perfThreadCacheSize => '线程池大小';

  @override
  String get databases_perfThreadStackSize => '连接数, 每个线程的堆栈大小';

  @override
  String get databases_perfJoinBufferSize => '连接数, 关联表缓存大小';

  @override
  String get databases_perfSortBufferSize => '连接数, 每个线程排序的缓冲大小';

  @override
  String get databases_perfReadBufferSize => '连接数, 读入缓冲区大小';

  @override
  String get databases_perfReadRndBufferSize => '连接数, 随机读取缓冲区大小';

  @override
  String get databases_perfTmpTableSize => '临时表缓存大小';

  @override
  String get databases_perfMaxHeapTableSize => '内存表上限';

  @override
  String get databases_perfInnodbBufferPoolSize => 'Innodb 缓冲区大小';

  @override
  String get databases_perfInnodbLogBufferSize => 'Innodb 日志缓冲区大小';

  @override
  String get databases_perfKeyBufferSize => '用于索引的缓冲区大小';

  @override
  String get databases_perfTableOpenCache => '表缓存';

  @override
  String get databases_perfQueryCacheSize => '查询缓存大小';

  @override
  String get databases_perfQueryCacheType => '查询缓存类型';

  @override
  String get databases_perfBinlogCacheSize => '连接数, 二进制日志缓存大小(4096的倍数)';

  @override
  String get databases_perfRedisTimeoutDesc => '客户端空闲超时（秒），0 表示不超时';

  @override
  String get databases_perfRedisMaxclientsDesc => '最大同时连接客户端数';

  @override
  String get databases_perfRedisMaxmemoryDesc => '最大内存限制（字节），0 表示不限制';

  @override
  String databases_globalVariablesTuning(String name) {
    return '$name 全局变量调优';
  }

  @override
  String get databases_slowLogSubtitle => '慢查询记录与阈值配置';

  @override
  String get databases_network => '网络';

  @override
  String get databases_databasePort => '数据库端口';

  @override
  String databases_currentListeningPort(Object port) {
    return '当前监听端口: $port';
  }

  @override
  String get databases_maintenance => '运维';

  @override
  String get databases_containerLogs => '容器日志';

  @override
  String get databases_containerLogsSubtitle => '实时查看数据库运行日志';

  @override
  String get databases_containerNameUnavailable => '容器名称不可用';

  @override
  String get databases_configSaved => '配置已保存';

  @override
  String get databases_redisConfigFileSubtitle => '查看并修改 redis.conf';

  @override
  String get databases_persistence => '持久化';

  @override
  String get databases_persistenceConfig => '持久化配置';

  @override
  String get databases_persistenceConfigSubtitle => 'RDB 快照与 AOF 日志设置';

  @override
  String get databases_aofConfigSaved => 'AOF 配置已保存';

  @override
  String get databases_rdbConfigSaved => 'RDB 配置已保存';

  @override
  String get databases_secondsRange => '秒数范围 0-100000';

  @override
  String get databases_countRange => '次数范围 0-100000';

  @override
  String get databases_aofPersistence => 'AOF 持久化';

  @override
  String get databases_enableAof => '启用 AOF';

  @override
  String get databases_fsyncPolicy => 'fsync 策略';

  @override
  String get databases_aofHint => 'Append Only File 通过记录每次写操作来实现持久化，数据安全性更高。';

  @override
  String get databases_rdbSnapshot => 'RDB 快照';

  @override
  String get databases_noRdbRules => '暂无规则，RDB 持久化已禁用';

  @override
  String get databases_addSnapshotRule => '添加快照规则';

  @override
  String get databases_rdbHint => '满足任一条件即触发 RDB 快照。例如：3600 秒内至少 1 次变更。';

  @override
  String get databases_secondsPlaceholder => '秒数';

  @override
  String get databases_withinSeconds => '秒内';

  @override
  String get databases_countPlaceholder => '次数';

  @override
  String get databases_changeTimes => '次变更';

  @override
  String get databases_backup => '备份';

  @override
  String get databases_redisBackupListSubtitle => '查看和管理 Redis 备份';

  @override
  String get databases_remoteMysqlInstance => '远程 MySQL 实例';

  @override
  String get databases_remoteMariadbInstance => '远程 MariaDB 实例';

  @override
  String get databases_remotePostgresqlInstance => '远程 PostgreSQL 实例';

  @override
  String get databases_instances => '数据库实例';

  @override
  String get databases_noAvailableDatabases => '暂无可用数据库';

  @override
  String get databases_emptyInstallPrefix => '当前服务器尚未安装数据库实例\n请前往';

  @override
  String get databases_emptyInstallMiddle => '安装，或';

  @override
  String get databases_onlyRemoteDatabases => '仅发现远程数据库';

  @override
  String get databases_noLocalRemoteComingSoon => '暂无本地数据库实例\n远程数据库管理即将推出';

  @override
  String get databases_manage => '管理';

  @override
  String get databases_new => '新建';

  @override
  String get databases_syncFromServer => '从服务器同步';

  @override
  String get databases_viewConnectionInfo => '查看连接信息';

  @override
  String databases_syncFromServerConfirm(String name) {
    return '将从 $name 实例同步数据库列表到面板。已删除的记录可能被恢复，新增的库会被导入。是否继续？';
  }

  @override
  String get databases_sync => '同步';

  @override
  String get databases_syncCompleted => '同步完成';

  @override
  String get databases_syncFailed => '同步失败';

  @override
  String get databases_enterName => '请输入名称';

  @override
  String get databases_nameNoSpaces => '名称不能包含空格';

  @override
  String get databases_nameAllowedChars => '名称只能包含字母、数字、下划线、短横线和点';

  @override
  String get databases_enterAddress => '请输入地址';

  @override
  String get databases_enterPort => '请输入端口';

  @override
  String get databases_ipOrDomain => 'IP 或域名';

  @override
  String get databases_timeoutRange => '超时范围 1–600 秒';

  @override
  String get databases_sslClientKeyRequired => 'SSL 开启时请填写客户端私钥';

  @override
  String get databases_sslClientCertRequired => 'SSL 开启时请填写客户端证书';

  @override
  String get databases_sslCaCertRequired => '已勾选「有 CA」时请填写 CA 证书';

  @override
  String get databases_connectionFailed => '连接失败';

  @override
  String get databases_connectionTimeoutOrError => '连接超时或错误';

  @override
  String get databases_remoteDatabaseCreated => '远程数据库创建成功';

  @override
  String get databases_loadConnectionInfoFailed => '加载连接信息失败';

  @override
  String get databases_connectionUpdated => '连接已更新';

  @override
  String get databases_updateFailed => '更新失败';

  @override
  String get databases_editRemoteConnection => '编辑远程连接';

  @override
  String get databases_connectionSucceeded => '连接成功';

  @override
  String get databases_testConnection => '测试连接';

  @override
  String get databases_addRemoteMysql => '添加远程 MySQL';

  @override
  String get databases_addRemoteMariadb => '添加远程 MariaDB';

  @override
  String get databases_addRemotePostgresql => '添加远程 PostgreSQL';

  @override
  String get databases_addRemoteRedis => '添加远程 Redis';

  @override
  String get databases_addRemoteInstance => '添加远程实例';

  @override
  String get databases_name => '名称';

  @override
  String get databases_remoteNameExample => '例如 my-remote-db';

  @override
  String get databases_version => '版本';

  @override
  String get databases_initialDatabase => '初始数据库';

  @override
  String get databases_initialDatabasePlaceholder => '连接使用的数据库名';

  @override
  String get databases_databaseUsernamePlaceholder => '数据库用户名';

  @override
  String get databases_passwordOptional => '密码（可选）';

  @override
  String get databases_noPasswordPlaceholder => '无密码可留空';

  @override
  String get databases_skipCertVerify => '跳过证书校验';

  @override
  String get databases_hasCaCert => '有 CA 证书';

  @override
  String get databases_clientPrivateKey => '客户端私钥';

  @override
  String get databases_clientCertificate => '客户端证书';

  @override
  String get databases_caCertificate => 'CA 证书';

  @override
  String get databases_timeoutSeconds => '超时（秒）';

  @override
  String get databases_remarkInfo => '备注信息';

  @override
  String get supervisor_title => '进程守护';

  @override
  String get supervisor_menuTitle => '进程守护';

  @override
  String get supervisor_menuSubtitle => '管理 Supervisor 服务、守护进程配置与日志';

  @override
  String get supervisor_serviceStart => '启动 Supervisor';

  @override
  String get supervisor_serviceStop => '停止 Supervisor';

  @override
  String get supervisor_serviceRestart => '重启 Supervisor';

  @override
  String get supervisor_initSupervisor => '初始化 Supervisor';

  @override
  String get supervisor_settings => '设置';

  @override
  String supervisor_serviceOperateConfirm(String operation) {
    return '确认对 Supervisor 服务执行“$operation”？';
  }

  @override
  String supervisor_processOperateConfirm(String operation, String name) {
    return '确认对 $name 执行“$operation”？';
  }

  @override
  String get supervisor_operationSuccess => '操作成功';

  @override
  String get supervisor_operationFailed => '操作失败';

  @override
  String get supervisor_refreshFailed => '刷新失败';

  @override
  String get supervisor_notReady => 'Supervisor 尚未就绪';

  @override
  String get supervisor_processConfigSubtitle => 'Supervisor 进程配置';

  @override
  String get supervisor_mainConfig => 'Supervisor 主配置';

  @override
  String get supervisor_mainLog => 'Supervisor 主日志';

  @override
  String get supervisor_configSource => '主配置源码';

  @override
  String get supervisor_configSourceSubtitle => '读取并保存 supervisord 主配置';

  @override
  String get supervisor_mainLogSubtitle => '按行读取 supervisord logfile';

  @override
  String get supervisor_baseInit => '基础 / 重新初始化';

  @override
  String get supervisor_baseInitSubtitle => '主配置路径与 systemctl 服务名';

  @override
  String get supervisor_processStartSubtitle => '启动该进程组';

  @override
  String get supervisor_processStopSubtitle => '停止该进程组';

  @override
  String get supervisor_processRestartSubtitle => '重新启动该进程组';

  @override
  String get supervisor_configAndLogs => '配置与日志';

  @override
  String get supervisor_editSubtitle => '修改命令、目录、用户和启动策略';

  @override
  String get supervisor_sourceFile => '源文件';

  @override
  String get supervisor_sourceFileSubtitle => '查看或修改该进程的 ini 片段';

  @override
  String get supervisor_runLogSubtitle => '查看标准输出日志';

  @override
  String get supervisor_errorLogSubtitle => '查看标准错误日志';

  @override
  String get supervisor_workDir => '工作目录';

  @override
  String get supervisor_dangerZone => '危险操作';

  @override
  String get supervisor_deleteSubtitle => '删除该进程配置并更新 Supervisor';

  @override
  String get supervisor_notInstalledTitle => '未检测到 supervisord';

  @override
  String get supervisor_notInstalledSubtitle =>
      '请先在服务器上安装 Supervisor，并确认 systemd 服务存在。';

  @override
  String get supervisor_ctlMissingTitle => '未检测到 supervisorctl';

  @override
  String get supervisor_ctlMissingSubtitle => '进程列表和进程操作依赖 supervisorctl。';

  @override
  String get supervisor_needInitTitle => '需要初始化';

  @override
  String get supervisor_needInitSubtitle =>
      '初始化会改写主配置 [include] 的 files 参数，并重启 Supervisor 服务。';

  @override
  String get supervisor_emptyTitle => '暂无守护进程';

  @override
  String get supervisor_emptySubtitle =>
      '创建进程后会生成对应的 ini 配置和 stdout/stderr 日志路径。';

  @override
  String get supervisor_serviceStoppedWarn =>
      'Supervisor 服务未启动，进程状态可能不可用。可在右上角菜单中启动服务。';

  @override
  String get supervisor_chooseWorkDir => '选择工作目录';

  @override
  String get supervisor_requiredFields => '请填写必填项';

  @override
  String get supervisor_nameRule => '名称支持英文、数字、- 和 _，且不能以特殊字符开头';

  @override
  String get supervisor_numprocsRule => '进程数需要在 1 到 9999 之间';

  @override
  String get supervisor_updateSuccess => '更新成功';

  @override
  String get supervisor_createSuccess => '创建成功';

  @override
  String get supervisor_saveFailed => '保存失败';

  @override
  String get supervisor_createProcess => '创建守护进程';

  @override
  String get supervisor_editProcess => '编辑守护进程';

  @override
  String get supervisor_name => '名称';

  @override
  String get supervisor_user => '执行用户';

  @override
  String get supervisor_command => '启动命令';

  @override
  String get supervisor_numprocs => '进程数';

  @override
  String get supervisor_environment => '环境变量';

  @override
  String get supervisor_autoRestart => '自动重启';

  @override
  String get supervisor_autoRestartSubtitle => '进程异常退出后由 Supervisor 自动拉起';

  @override
  String get supervisor_autoStart => '自动启动';

  @override
  String get supervisor_autoStartSubtitle => 'Supervisor 启动后自动启动该进程';

  @override
  String get supervisor_configPathAndServiceRequired => '请填写主配置路径和服务名';

  @override
  String get supervisor_initSuccess => '初始化成功';

  @override
  String get supervisor_initFailed => '初始化失败';

  @override
  String get supervisor_initTitle => '初始化 Supervisor';

  @override
  String get supervisor_initWarning =>
      '初始化会修改主配置文件 [include] 的 files 参数，并重启对应 systemd 服务。';

  @override
  String get supervisor_primaryConfig => '主配置文件';

  @override
  String get supervisor_serviceName => '服务名称';

  @override
  String get supervisor_clearLog => '清空日志';

  @override
  String get supervisor_clearLogConfirm => '确认清空当前日志文件？';

  @override
  String get supervisor_logCleared => '日志已清空';

  @override
  String get supervisor_clearFailed => '清空失败';

  @override
  String get supervisor_clear => '清空';

  @override
  String get supervisor_lineCount => '条数';

  @override
  String get supervisor_follow => '追踪';

  @override
  String get supervisor_runLog => '运行日志';

  @override
  String get supervisor_errorLog => '错误日志';

  @override
  String get supervisor_readLogFailed => '读取日志失败';

  @override
  String get supervisor_emptyLogTitle => '暂无日志';

  @override
  String get supervisor_emptyLogSubtitle => '日志文件为空或尚未生成。';

  @override
  String supervisor_processCountShort(String count) {
    return '$count 个进程';
  }

  @override
  String supervisor_moreChildren(int count) {
    return '还有 $count 个子进程';
  }

  @override
  String get supervisor_statusStarting => '启动中';

  @override
  String get supervisor_statusRunning => '运行中';

  @override
  String get supervisor_statusWarning => '部分运行';

  @override
  String get supervisor_statusStopped => '已停止';

  @override
  String get supervisor_start => '启动';

  @override
  String get supervisor_stop => '停止';

  @override
  String get supervisor_restart => '重启';
}
