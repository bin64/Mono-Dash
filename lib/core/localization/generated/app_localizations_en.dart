// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_title => 'Mono Dash';

  @override
  String get common_ok => 'OK';

  @override
  String get common_cancel => 'Cancel';

  @override
  String get common_close => 'Close';

  @override
  String get common_done => 'Done';

  @override
  String get common_delete => 'Delete';

  @override
  String get common_refresh => 'Refresh';

  @override
  String get common_loading => 'Loading...';

  @override
  String get common_systemDefault => 'Follow System';

  @override
  String get common_confirm => 'Confirm';

  @override
  String get common_save => 'Save';

  @override
  String get common_saved => 'Saved';

  @override
  String get common_share => 'Share';

  @override
  String get common_create => 'Create';

  @override
  String get common_edit => 'Edit';

  @override
  String get common_view => 'View';

  @override
  String get common_update => 'Update';

  @override
  String get common_use => 'Use';

  @override
  String get common_retry => 'Retry';

  @override
  String get common_back => 'Back';

  @override
  String get common_menu => 'Menu';

  @override
  String get common_select => 'Select';

  @override
  String get common_search => 'Search';

  @override
  String common_selectCount(int count) {
    return 'Select ($count)';
  }

  @override
  String get common_count => 'Count';

  @override
  String get common_description => 'Description';

  @override
  String get common_yes => 'Yes';

  @override
  String get common_no => 'No';

  @override
  String get common_unknown => 'Unknown';

  @override
  String get format_relativeUnknown => 'Unknown';

  @override
  String get format_relativeSoon => 'Soon';

  @override
  String get format_relativeJustNow => 'Just now';

  @override
  String format_relativeMinutesLater(int n) {
    return '$n min later';
  }

  @override
  String format_relativeHoursLater(int n) {
    return '$n h later';
  }

  @override
  String format_relativeDaysLater(int n) {
    return '$n d later';
  }

  @override
  String format_relativeMinutesAgo(int n) {
    return '$n min ago';
  }

  @override
  String format_relativeHoursAgo(int n) {
    return '$n h ago';
  }

  @override
  String format_relativeDaysAgo(int n) {
    return '$n d ago';
  }

  @override
  String format_relativeSecondsAgo(int n) {
    return '$n sec ago';
  }

  @override
  String format_relativeMonthsAgo(int n) {
    return '$n mo ago';
  }

  @override
  String format_relativeYearsAgo(int n) {
    return '$n yr ago';
  }

  @override
  String get format_timeAgoPrefixBackup => 'Backed up ';

  @override
  String get common_gotIt => 'Got it';

  @override
  String get common_noSelection => 'Not Selected';

  @override
  String get common_noOptions => 'No Options';

  @override
  String common_selectedCount(int count) {
    return '$count selected';
  }

  @override
  String get common_copiedToClipboard => 'Copied to clipboard';

  @override
  String get common_errorInfoCopied => 'Error details copied';

  @override
  String get common_networkRequestFailed =>
      'Network request failed. Please try again later.';

  @override
  String get common_requestFailed => 'Request failed. Please try again later.';

  @override
  String get common_serverNotFound => 'Server not found';

  @override
  String common_statusCode(int statusCode) {
    return 'Status code: $statusCode';
  }

  @override
  String get common_todoDescription => 'Feature logic will be connected later';

  @override
  String get common_continueEditing => 'Continue Editing';

  @override
  String get common_discard => 'Discard';

  @override
  String get common_discardChangesTitle => 'Discard changes?';

  @override
  String get common_unsavedChangesContent =>
      'Your changes have not been saved. Are you sure you want to leave?';

  @override
  String get common_loadingFailed => 'Load failed';

  @override
  String get common_saveFailedCopyDetails =>
      'Save failed (tap to copy details)';

  @override
  String get common_noBackups => 'No backups';

  @override
  String common_reclaimable(String size) {
    return 'Reclaimable $size';
  }

  @override
  String get filePicker_selectPath => 'Select Path';

  @override
  String get filePicker_directoryLoadFailed => 'Failed to load directory';

  @override
  String get filePicker_directoryEmpty => 'Directory is empty';

  @override
  String get filePicker_folder => 'Folder';

  @override
  String get filePicker_file => 'File';

  @override
  String get taskLog_emptyTitle => 'No logs';

  @override
  String get taskLog_fileNotFoundTitle => 'Log file not found';

  @override
  String get taskLog_noRecordTitle => 'No records for this task';

  @override
  String get taskLog_noRecordDescription =>
      'This task may not have generated logs yet, or the log file may have been cleaned up.';

  @override
  String get taskLog_readFailedTitle => 'Failed to read task logs';

  @override
  String get taskLog_noExportableLogs => 'No logs to export';

  @override
  String get taskLog_sharePluginMissing => 'Share plugin is not registered';

  @override
  String get taskLog_sharePluginMissingDescription =>
      'Fully stop the app and run it again. Native plugins added later are not registered by hot reload or hot restart.';

  @override
  String get taskLog_exportFailed => 'Export failed';

  @override
  String get terminal_connectTitle => 'Connect Terminal';

  @override
  String terminal_containerSubtitle(String containerId) {
    return 'Container: $containerId';
  }

  @override
  String get terminal_connectAction => 'Connect';

  @override
  String get terminal_execUser => 'User';

  @override
  String get terminal_execUserPlaceholder => 'Optional, defaults to root';

  @override
  String get terminal_execCommand => 'Command';

  @override
  String get terminal_custom => 'Custom';

  @override
  String get terminal_execCommandPlaceholder => 'Enter command';

  @override
  String get terminal_serverInfoFailed => 'Failed to get server information';

  @override
  String terminal_connectionErrorWithDetail(String error) {
    return 'Connection error: $error';
  }

  @override
  String get terminal_connectionError => 'Connection Error';

  @override
  String get terminal_disconnectedOutput => 'Disconnected';

  @override
  String get terminal_disconnected => 'Disconnected';

  @override
  String terminal_initializationFailed(String error) {
    return 'Initialization failed: $error';
  }

  @override
  String get terminal_hostTitle => 'Terminal - Host';

  @override
  String terminal_databaseTitle(String name) {
    return 'Terminal - $name';
  }

  @override
  String terminal_containerTitle(String containerId) {
    return 'Terminal - $containerId';
  }

  @override
  String get terminal_connecting => 'Connecting';

  @override
  String get terminal_copySelection => 'Copy Selection';

  @override
  String get terminal_pasteToTerminal => 'Paste to Terminal';

  @override
  String get nav_servers => 'Servers';

  @override
  String get nav_settings => 'Settings';

  @override
  String get nav_overview => 'Overview';

  @override
  String get nav_websites => 'Websites';

  @override
  String get nav_files => 'Files';

  @override
  String get nav_containers => 'Docker';

  @override
  String get nav_more => 'More';

  @override
  String get nav_processes => 'Processes';

  @override
  String get nav_network => 'Network';

  @override
  String get nav_portRules => 'Port Rules';

  @override
  String get nav_ipRules => 'IP Rules';

  @override
  String get nav_installed => 'Installed';

  @override
  String get nav_all => 'All';

  @override
  String get nav_updates => 'Updates';

  @override
  String get nav_list => 'List';

  @override
  String get nav_status => 'Status';

  @override
  String get nav_terminal => 'Terminal';

  @override
  String get nav_configuration => 'Config';

  @override
  String get nav_sessions => 'Sessions';

  @override
  String get nav_logs => 'Logs';

  @override
  String get serverDetail_title => 'Panel Details';

  @override
  String get dashboard_loadFailed => 'Failed to load overview';

  @override
  String get dashboard_serverFallback => 'Server';

  @override
  String get dashboard_hostDetailsTitle => 'Host Details';

  @override
  String get dashboard_system => 'System';

  @override
  String get dashboard_kernel => 'Kernel';

  @override
  String get dashboard_cpuCores => 'Cores';

  @override
  String dashboard_cpuCoreSummary(int physical, int logical) {
    return '$physical physical / $logical logical';
  }

  @override
  String get dashboard_uptime => 'Uptime';

  @override
  String get dashboard_load => 'Load';

  @override
  String get dashboard_processes => 'Processes';

  @override
  String get dashboard_arch => 'Arch';

  @override
  String get dashboard_resourceUsageTitle => 'Resource Usage';

  @override
  String get dashboard_memory => 'Memory';

  @override
  String get dashboard_disk => 'Disk';

  @override
  String get dashboard_networkTrafficTitle => 'Network Traffic';

  @override
  String get dashboard_trafficUp => 'Upload Traffic';

  @override
  String get dashboard_trafficDown => 'Download Traffic';

  @override
  String get dashboard_realtimeSpeedTitle => 'Realtime Speed';

  @override
  String get dashboard_download => 'Download';

  @override
  String get dashboard_upload => 'Upload';

  @override
  String get dashboard_diskPartitionsTitle => 'Disk Partitions';

  @override
  String get dashboard_diskIoTitle => 'Disk IO';

  @override
  String get dashboard_read => 'Read';

  @override
  String get dashboard_write => 'Write';

  @override
  String get dashboard_latency => 'Latency';

  @override
  String get dashboard_loading => 'Loading...';

  @override
  String dashboard_utilization(String percent) {
    return 'Usage $percent';
  }

  @override
  String dashboard_vram(String used, String total) {
    return 'VRAM $used/$total';
  }

  @override
  String dashboard_temperature(String temperature) {
    return 'Temp $temperature°C';
  }

  @override
  String dashboard_uptimeMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String dashboard_uptimeHoursMinutes(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String dashboard_uptimeDaysHours(int days, int hours) {
    return '$days d $hours h';
  }

  @override
  String get files_title => 'Files';

  @override
  String get files_searchPlaceholder => 'Search files...';

  @override
  String get files_directoryEmptyTitle => 'Directory is empty';

  @override
  String get files_noSearchResultsTitle => 'No matching files';

  @override
  String get files_directoryEmptySubtitle => 'There is nothing in this folder';

  @override
  String get files_noSearchResultsSubtitle => 'Try a different keyword';

  @override
  String get files_loadFailed => 'Failed to load files';

  @override
  String get files_loadMoreFailed => 'Failed to load more';

  @override
  String get files_loadDirectoryFailed => 'Failed to load directory';

  @override
  String get files_refreshFailed => 'Refresh failed';

  @override
  String get files_searchFailed => 'Search failed';

  @override
  String get files_displayOptionsTitle => 'Display Options';

  @override
  String get files_sortByTitle => 'Sort By';

  @override
  String get files_sortName => 'Name';

  @override
  String get files_sortSize => 'Size';

  @override
  String get files_sortModifiedTime => 'Modified Time';

  @override
  String get files_sortOrderTitle => 'Sort Order';

  @override
  String get files_sortAscending => 'Ascending';

  @override
  String get files_sortDescending => 'Descending';

  @override
  String get files_rootDirectory => 'Root';

  @override
  String files_selectedCount(int count) {
    return '$count items selected';
  }

  @override
  String get files_chooseAction => 'Choose an action below';

  @override
  String get files_expandActionMenu => 'Tap to expand action menu';

  @override
  String get files_selectAll => 'Select All';

  @override
  String get files_clearSelection => 'Clear Selection';

  @override
  String get files_actionMove => 'Move';

  @override
  String get files_actionCopy => 'Copy';

  @override
  String get files_actionDownload => 'Download';

  @override
  String get files_actionBatchDownload => 'Batch Download';

  @override
  String get files_actionPackageDownload => 'Package Download';

  @override
  String get files_actionPermissions => 'Permissions';

  @override
  String get files_actionCompress => 'Compress';

  @override
  String get files_actionDelete => 'Delete';

  @override
  String get files_actionOpen => 'Open';

  @override
  String get files_actionPreviewImage => 'Preview Image';

  @override
  String get files_actionEdit => 'Edit';

  @override
  String get files_actionRename => 'Rename';

  @override
  String get files_actionCopyPath => 'Copy Path';

  @override
  String get files_pathCopied => 'Path copied';

  @override
  String get files_actionOrganize => 'Manage & Organize';

  @override
  String get files_actionDecompress => 'Decompress';

  @override
  String get files_actionAddFavorite => 'Add Favorite';

  @override
  String get files_actionRemoveFavorite => 'Remove Favorite';

  @override
  String get files_actionManageShare => 'Manage Share';

  @override
  String get files_actionCreateShare => 'Create Share Link';

  @override
  String get files_actionCancelShare => 'Cancel Share';

  @override
  String get files_shareCancelled => 'Share cancelled';

  @override
  String files_cancelShareFailed(String error) {
    return 'Failed to cancel share: $error';
  }

  @override
  String get files_actionDownloadToLocal => 'Download Locally';

  @override
  String get files_actionViewDetails => 'View Details';

  @override
  String get files_copyToTitle => 'Copy To';

  @override
  String get files_moveToTitle => 'Move To';

  @override
  String get files_moveCopySamePathError =>
      'Target path cannot be the same as the current path';

  @override
  String get files_moveCopyCheckConflictFailed => 'Failed to check conflicts';

  @override
  String get files_copySuccess => 'Copied';

  @override
  String get files_moveSuccess => 'Moved';

  @override
  String get files_operationFailed => 'Operation failed';

  @override
  String get files_moveCopySkippedAll => 'Skipped all duplicates';

  @override
  String get files_moveCopyConflictTitle => 'Name Conflict';

  @override
  String get files_moveCopyConflictDescription =>
      'Selected files or folders have the same name. Choose how to continue.';

  @override
  String get files_moveCopyOverwrite => 'Overwrite';

  @override
  String get files_moveCopySkipAll => 'Skip All';

  @override
  String get files_moveCopyOverwriteAll => 'Overwrite All';

  @override
  String files_deleteBatchTitle(int count) {
    return 'Delete $count selected items?';
  }

  @override
  String get files_deleteSingleTitle => 'Delete this item?';

  @override
  String get files_deleteToRecycleBinHint =>
      'Files will be moved to the server recycle bin and can be restored later.';

  @override
  String get files_deletePermanentHint =>
      'This cannot be undone. Files will be permanently removed from the server.';

  @override
  String get files_deleteFailed => 'Delete failed';

  @override
  String get files_deleteSuccess => 'Deleted';

  @override
  String files_batchDeleteSuccess(int count) {
    return 'Batch delete complete ($count)';
  }

  @override
  String get files_batchDeletePartialTitle => 'Some items failed to delete';

  @override
  String files_batchDeletePartialDescription(int successCount, int failCount) {
    return '$successCount succeeded, $failCount failed';
  }

  @override
  String get files_favoriteAdded => 'Added to favorites';

  @override
  String get files_favoriteRemoved => 'Removed from favorites';

  @override
  String get files_favoriteFailed => 'Favorite operation failed';

  @override
  String get files_renameSuccess => 'Renamed';

  @override
  String get files_renameFailed => 'Rename failed';

  @override
  String get files_editorSaveSuccess => 'Saved';

  @override
  String get files_editorSaveFailed => 'Save failed';

  @override
  String files_editorLoadFailed(String error) {
    return 'Load failed: $error';
  }

  @override
  String get files_editorFindReplace => 'Find & Replace';

  @override
  String get files_editorCloseSearch => 'Close Search';

  @override
  String get files_editorEnableEditing => 'Enable Editing';

  @override
  String get files_editorReadOnlyMode => 'Read-only Mode';

  @override
  String get files_editorFindPlaceholder => 'Find';

  @override
  String get files_editorPreviousMatch => 'Previous';

  @override
  String get files_editorNextMatch => 'Next';

  @override
  String get files_editorReplaceWithPlaceholder => 'Replace with';

  @override
  String get files_editorReplace => 'Replace';

  @override
  String get files_editorReplaceAll => 'All';

  @override
  String get files_deleteForceTitle => 'Delete Permanently';

  @override
  String get files_deleteForceSubtitle =>
      'Bypass the recycle bin. Files cannot be restored.';

  @override
  String get files_detailsTitle => 'File Properties';

  @override
  String get files_detailsCalculateSizeFailed => 'Failed to calculate size';

  @override
  String get files_detailsBasicInfo => 'Basic Info';

  @override
  String get files_detailsPath => 'Path';

  @override
  String get files_detailsLinkTarget => 'Link Target';

  @override
  String get files_detailsType => 'Type';

  @override
  String get files_detailsDirectoryType => 'Directory';

  @override
  String get files_detailsFileType => 'File';

  @override
  String get files_detailsSize => 'Size';

  @override
  String get files_detailsCalculate => 'Calculate';

  @override
  String get files_detailsTapToCalculate => 'Tap to calculate';

  @override
  String get files_detailsModifiedTime => 'Modified Time';

  @override
  String get files_detailsShareCode => 'Share Code';

  @override
  String get files_detailsPermissionsOwner => 'Permissions & Owner';

  @override
  String get files_detailsPermissionMode => 'Permission Mode';

  @override
  String get files_detailsOwner => 'Owner';

  @override
  String get files_detailsGroup => 'Group';

  @override
  String get files_detailsLoadFailed => 'Failed to load properties';

  @override
  String get files_createFileTitle => 'New File';

  @override
  String get files_createDirectoryTitle => 'New Folder';

  @override
  String get files_createNameRequired => 'Name cannot be empty';

  @override
  String get files_permissionModeInvalid => 'Permission mode format is invalid';

  @override
  String get files_permissionLoadUserGroupsFailed =>
      'Failed to load users and groups';

  @override
  String get files_permissionUpdateSuccess => 'Permissions updated';

  @override
  String get files_permissionSubmitFailed => 'Submit failed';

  @override
  String get files_permissionBatchTitle => 'Edit Permissions';

  @override
  String get files_permissionSingleTitle => 'Edit Permissions';

  @override
  String get files_permissionModeValue => 'Permission Mode';

  @override
  String get files_permissionModePlaceholder => 'e.g. 0644';

  @override
  String get files_permissionApplyToSubfiles =>
      'Also update child file attributes';

  @override
  String get files_createSuccess => 'Created';

  @override
  String get files_createFailed => 'Create failed';

  @override
  String get files_nameLabel => 'Name';

  @override
  String get files_createFileNamePlaceholder => 'Enter file name';

  @override
  String get files_createDirectoryNamePlaceholder => 'Enter folder name';

  @override
  String get files_permissionSettings => 'Permissions';

  @override
  String get files_permissionRead => 'Read';

  @override
  String get files_permissionWrite => 'Write';

  @override
  String get files_permissionExecute => 'Execute';

  @override
  String get files_permissionOwner => 'Owner';

  @override
  String get files_permissionGroup => 'Group';

  @override
  String get files_permissionPublic => 'Public';

  @override
  String get files_linkSettings => 'Link Settings';

  @override
  String get files_linkType => 'Link Type';

  @override
  String get files_softLink => 'Soft Link';

  @override
  String get files_hardLink => 'Hard Link';

  @override
  String get files_linkTargetPlaceholder => 'Select target path';

  @override
  String get files_selectLinkTarget => 'Select Link Target';

  @override
  String get files_fileName => 'File Name';

  @override
  String get files_compressTitle => 'Compress Files';

  @override
  String get files_compressAction => 'Compress';

  @override
  String get files_compressFormat => 'Archive Format';

  @override
  String get files_compressPath => 'Archive Path';

  @override
  String get files_compressNameRequired => 'Enter a file name';

  @override
  String get files_compressPathRequired => 'Enter an archive path';

  @override
  String get files_compressStarted => 'Compression task started';

  @override
  String get files_compressFailed => 'Compression failed';

  @override
  String get files_overwriteExistingFile => 'Overwrite existing files';

  @override
  String get files_fileNamePlaceholder => 'Enter file name';

  @override
  String get files_targetDirectoryPlaceholder => 'Enter target directory';

  @override
  String get files_selectCompressPath => 'Select Archive Path';

  @override
  String get files_decompressTitle => 'Decompress File';

  @override
  String get files_decompressAction => 'Decompress';

  @override
  String get files_decompressPath => 'Decompress Path';

  @override
  String get files_decompressPathRequired => 'Enter a decompression path';

  @override
  String get files_decompressStarted => 'Decompression task started';

  @override
  String get files_decompressFailed => 'Decompression failed';

  @override
  String get files_decompressHint =>
      'Tip: larger archives may take a while. Decompression runs in the background.';

  @override
  String get files_decompressTargetPlaceholder =>
      'Enter decompression target directory';

  @override
  String get files_selectDecompressPath => 'Select Decompression Path';

  @override
  String get files_imageLoadFailed => 'Unable to load image';

  @override
  String get files_imageNoData => 'No data';

  @override
  String get files_shareUnsupportedTitle => 'Unsupported Version';

  @override
  String get files_shareUnsupportedContent =>
      'This 1Panel version does not support file sharing. Update the panel and try again.';

  @override
  String get files_shareFailedTitle => 'Share Failed';

  @override
  String get files_shareConfigErrorTitle => 'Configuration Error';

  @override
  String get files_shareConfigErrorContent =>
      'Unable to get the server address. Check the connection status.';

  @override
  String get files_shareGenericErrorTitle => 'Error';

  @override
  String files_shareClipboardLink(String link) {
    return 'Share link: $link';
  }

  @override
  String files_shareClipboardLinkPassword(String link, String password) {
    return 'Share link: $link, password: $password';
  }

  @override
  String get files_shareTitle => 'Share File';

  @override
  String get files_shareExpireLabel => 'Expires';

  @override
  String get files_sharePasswordOptional => 'Access Password (optional)';

  @override
  String get files_sharePasswordPlaceholder =>
      '4-256 characters. Leave empty for none.';

  @override
  String files_shareFilePath(String path) {
    return 'File path: $path';
  }

  @override
  String get files_shareReady => 'Share link ready';

  @override
  String get files_shareDetailsTitle => 'Share Details';

  @override
  String get files_shareFullPath => 'Full Path';

  @override
  String get files_shareCode => 'Share Code';

  @override
  String get files_shareAccessPassword => 'Access Password';

  @override
  String get files_shareCopyLink => 'Copy Share Link';

  @override
  String get files_shareUpdateSettings => 'Update Share Settings';

  @override
  String get files_shareExpirePermanent => 'Never expires';

  @override
  String files_shareExpireMinutes(int minutes) {
    return '$minutes min';
  }

  @override
  String files_shareExpireHours(int hours) {
    return '$hours h';
  }

  @override
  String files_shareExpireDays(int days) {
    return '$days d';
  }

  @override
  String get files_shareListUnsupportedContent =>
      'This 1Panel version does not support managing file shares. Update the panel and try again.';

  @override
  String get files_shareListEmpty => 'No active shares';

  @override
  String files_shareExpireUntil(String date) {
    return 'Expires at $date';
  }

  @override
  String get files_shareCancelConfirmHint =>
      'Tap the icon on the right to confirm cancellation';

  @override
  String get files_shareLinkCopied => 'Share link copied';

  @override
  String get files_recycleUnsupportedContent =>
      'This 1Panel version does not support the file recycle bin. Update the panel and try again.';

  @override
  String get files_recycleTitle => 'Recycle Bin';

  @override
  String get files_recycleEnabled => 'Recycle bin enabled';

  @override
  String get files_recycleDisabled => 'Recycle bin disabled';

  @override
  String get files_recycleClearTitle => 'Empty Recycle Bin';

  @override
  String get files_recycleClearContent =>
      'Permanently delete all items in the recycle bin? This cannot be undone.';

  @override
  String get files_recycleClearAction => 'Empty';

  @override
  String get files_recycleEmpty => 'Recycle bin is empty';

  @override
  String get files_recycleConfirmRestore => 'Tap again to confirm restore';

  @override
  String get files_recycleConfirmDelete => 'Tap again to permanently delete';

  @override
  String get files_recycleSelectAction => 'Choose an action';

  @override
  String files_recycleRestored(String name) {
    return 'Restored: $name';
  }

  @override
  String get files_recycleRestoreFailed => 'Restore failed';

  @override
  String files_recycleDeleted(String name) {
    return 'Permanently deleted: $name';
  }

  @override
  String get files_recycleClearStarted =>
      'Recycle bin clearing started in the background';

  @override
  String get files_recycleClearFailed => 'Clear failed';

  @override
  String get files_recycleSettingFailed => 'Setting failed';

  @override
  String get files_shareCancelSuccess => 'Share cancelled';

  @override
  String get files_shareCancelFailed => 'Failed to cancel share';

  @override
  String get download_taskMissing => 'Task not found';

  @override
  String get download_batchTitle => 'Batch Download';

  @override
  String get download_fileTitle => 'Download File';

  @override
  String download_taskCount(int count) {
    return '$count tasks';
  }

  @override
  String get download_completedHint =>
      'Download completed. View it in Download Manager.';

  @override
  String get download_finishedHint => 'Task ended';

  @override
  String get download_backgroundHint =>
      'Downloads continue in the background after closing this sheet';

  @override
  String get download_managerEntryTitle => 'Manage Downloads';

  @override
  String get download_managerEntrySubtitle =>
      'View progress, share, and delete downloaded files';

  @override
  String download_pendingMetadata(String ext, String size) {
    return 'Waiting  •  $ext  •  $size';
  }

  @override
  String download_packagingMetadata(String ext) {
    return 'Packaging on server...  •  $ext';
  }

  @override
  String get download_failed => 'Download failed';

  @override
  String get download_packagingTimeoutFailed =>
      'Server packaging timed out or failed';

  @override
  String get download_interrupted => 'Error';

  @override
  String get download_cancelled => 'Cancelled';

  @override
  String download_completedMetadata(String ext, String size) {
    return 'Downloaded locally  •  $ext  •  $size';
  }

  @override
  String get download_managerTitle => 'Download Manager';

  @override
  String get download_actionsMenu => 'Actions';

  @override
  String get download_clearCompletedRecords => 'Clear Completed Records';

  @override
  String get download_deleteAllFiles => 'Delete All Files';

  @override
  String get download_activeSection => 'Downloading';

  @override
  String get download_completedSection => 'Completed';

  @override
  String get download_emptyTasks => 'No download tasks';

  @override
  String get download_deleteAllTitle => 'Delete All Downloads';

  @override
  String get download_deleteAllContent =>
      'All downloaded files will be deleted from this device, and active tasks will be cancelled. This cannot be undone.';

  @override
  String get download_deleteAllAction => 'Delete All';

  @override
  String get download_waiting => 'Waiting...';

  @override
  String get download_deleteTitle => 'Delete Download';

  @override
  String get download_deleteFileContent =>
      'The file will be deleted from this device';

  @override
  String get download_deleteRecordContent =>
      'This download record will be removed';

  @override
  String get remoteDownload_title => 'Remote Download';

  @override
  String get remoteDownload_subtitle =>
      'Download asynchronously in the background on the 1Panel server';

  @override
  String get remoteDownload_startAction => 'Start Download';

  @override
  String get remoteDownload_urlPlaceholder => 'Remote file URL (HTTP/HTTPS)';

  @override
  String get remoteDownload_namePlaceholder => 'Save file name (required)';

  @override
  String get remoteDownload_pathPlaceholder => 'Save directory';

  @override
  String get remoteDownload_ignoreCertificateTitle =>
      'Ignore Untrusted Certificates';

  @override
  String get remoteDownload_ignoreCertificateSubtitle =>
      'Enable for self-signed or expired certificate sites';

  @override
  String get remoteDownload_description =>
      'After creation, 1Panel will process the download asynchronously in the background. You can view progress in the server task center or the progress center below.';

  @override
  String get remoteDownload_createFailedTitle =>
      'Failed to Create Download Task';

  @override
  String get remoteDownload_selectSaveDirectory => 'Select Save Directory';

  @override
  String get remoteDownload_progressCenterTitle => 'Download Progress Center';

  @override
  String get remoteDownload_emptyTitle => 'No remote download tasks';

  @override
  String get remoteDownload_emptySubtitle =>
      'No background downloads are running';

  @override
  String get remoteDownload_completedName => 'Completed';

  @override
  String get remoteDownload_resolvingName => 'Resolving...';

  @override
  String get upload_title => 'Upload Files';

  @override
  String upload_targetPath(String path) {
    return 'Upload to $path';
  }

  @override
  String get upload_startAction => 'Start Upload';

  @override
  String get upload_overwriteHint =>
      'Files with the same name will be overwritten automatically';

  @override
  String get upload_fromAlbum => 'Upload from Photos';

  @override
  String get upload_fromFiles => 'Choose from Files';

  @override
  String get upload_addFiles => 'Add Files';

  @override
  String upload_uploadingProgress(String percent) {
    return 'Uploading... ($percent%)';
  }

  @override
  String upload_partialFailedCount(int count) {
    return 'Some uploads failed ($count errors)';
  }

  @override
  String get upload_allComplete => 'All uploads complete';

  @override
  String get upload_emptyPending => 'No files waiting to upload';

  @override
  String get upload_summaryCompleteTitle => 'Upload Complete';

  @override
  String get upload_summaryPartialFailedTitle => 'Some Uploads Failed';

  @override
  String upload_summarySuccessCount(int count) {
    return '$count files uploaded';
  }

  @override
  String upload_summaryMixedCount(int successCount, int failCount) {
    return '$successCount succeeded, $failCount failed';
  }

  @override
  String get upload_failed => 'Upload failed';

  @override
  String get upload_cancelled => 'Cancelled';

  @override
  String get process_title => 'Processes';

  @override
  String get process_serverMissing => 'Server not found';

  @override
  String get process_stopTitle => 'Stop Process';

  @override
  String process_stopContent(int pid) {
    return 'Stop PID $pid?';
  }

  @override
  String get process_stopAction => 'Stop';

  @override
  String get process_stopRequested => 'Stop request sent';

  @override
  String get process_stopFailed => 'Failed to stop process';

  @override
  String get process_searchNamePlaceholder => 'Search process name';

  @override
  String get process_searchNameOrPortPlaceholder =>
      'Search process name or port';

  @override
  String get process_connectionFailed => 'Connection failed';

  @override
  String get process_noResults => 'No matching results';

  @override
  String get process_noData => 'No data';

  @override
  String get process_noResultsSubtitle => 'Try a different search keyword';

  @override
  String get process_waitingData => 'Waiting for data';

  @override
  String get process_connecting => 'Connecting to process service';

  @override
  String get process_readingDetail => 'Reading process details';

  @override
  String get process_readFailed => 'Read failed';

  @override
  String get process_basicInfo => 'Basic Info';

  @override
  String get process_user => 'User';

  @override
  String get process_status => 'Status';

  @override
  String get process_startTime => 'Start Time';

  @override
  String process_threads(int count) {
    return '$count threads';
  }

  @override
  String get process_threadCount => 'Threads';

  @override
  String process_connections(int count) {
    return '$count connections';
  }

  @override
  String get process_connectionCount => 'Connections';

  @override
  String get process_commandLine => 'Command Line';

  @override
  String get process_cpuDisk => 'CPU / Disk';

  @override
  String get process_memory => 'Memory';

  @override
  String get process_diskRead => 'Disk Read';

  @override
  String get process_diskWrite => 'Disk Write';

  @override
  String get process_memoryDetails => 'Memory Details';

  @override
  String get process_openFiles => 'Open Files';

  @override
  String get process_networkConnections => 'Network Connections';

  @override
  String get process_environmentVariables => 'Environment Variables';

  @override
  String get process_sort => 'Sort';

  @override
  String get process_sortCpu => 'CPU Usage';

  @override
  String get process_sortMemory => 'Memory';

  @override
  String get process_sortConnections => 'Connections';

  @override
  String get toolbox_title => 'Toolbox';

  @override
  String get toolbox_loadingStatus => 'Reading toolbox status';

  @override
  String get toolbox_quickSettings => 'Quick Settings';

  @override
  String get toolbox_hostname => 'Hostname';

  @override
  String get toolbox_systemUser => 'System User';

  @override
  String get toolbox_timeZone => 'Time Zone';

  @override
  String get toolbox_localTime => 'Local Time';

  @override
  String get toolbox_cacheClean => 'Cache Cleanup';

  @override
  String get toolbox_cleanSource => 'Source';

  @override
  String get toolbox_cleanSourceValue => '1Panel toolbox scan API';

  @override
  String get toolbox_cleanAction => 'Action';

  @override
  String get toolbox_cleanActionValue =>
      'Scan cleanable items without deleting them';

  @override
  String get toolbox_scan => 'Scan';

  @override
  String get toolbox_scanFailed => 'Scan failed';

  @override
  String get toolbox_installed => 'Installed';

  @override
  String get toolbox_running => 'Running';

  @override
  String get toolbox_enabled => 'Enabled';

  @override
  String get toolbox_version => 'Version';

  @override
  String get toolbox_port => 'Port';

  @override
  String get toolbox_virusScan => 'Virus Scan';

  @override
  String get toolbox_clamAvRunning => 'ClamAV Running';

  @override
  String get toolbox_freshClamRunning => 'FreshClam Running';

  @override
  String get toolbox_virusDatabase => 'Virus Database';

  @override
  String get toolbox_noCleanItems => 'No cleanable items';

  @override
  String get toolbox_cleanGroupSystem => 'System Cache';

  @override
  String get toolbox_cleanGroupBackup => 'Backup Cache';

  @override
  String get toolbox_cleanGroupUpload => 'Upload Cache';

  @override
  String get toolbox_cleanGroupDownload => 'Download Cache';

  @override
  String get toolbox_cleanGroupSystemLog => 'System Logs';

  @override
  String get toolbox_cleanGroupContainer => 'Container Cache';

  @override
  String get disk_title => 'Disk Management';

  @override
  String get disk_loadingInfo => 'Reading disk information';

  @override
  String get disk_overview => 'Disk Overview';

  @override
  String disk_totalCapacity(String capacity) {
    return 'Total capacity $capacity';
  }

  @override
  String get disk_unpartitioned => 'Unpartitioned Disks';

  @override
  String get disk_unmountTitle => 'Unmount Disk';

  @override
  String disk_unmountContent(String mountPoint) {
    return 'Unmount $mountPoint? This action is not provided for system disks.';
  }

  @override
  String get disk_unmountAction => 'Unmount';

  @override
  String get disk_unmountRequested => 'Unmount request sent';

  @override
  String get disk_unmountFailed => 'Unmount failed';

  @override
  String get disk_mounted => 'Mounted';

  @override
  String get disk_unmounted => 'Unmounted';

  @override
  String disk_size(String value) {
    return 'Size $value';
  }

  @override
  String disk_used(String value) {
    return 'Used $value';
  }

  @override
  String disk_available(String value) {
    return 'Available $value';
  }

  @override
  String disk_mountPoint(String value) {
    return 'Mount $value';
  }

  @override
  String disk_filesystem(String value) {
    return 'Filesystem $value';
  }

  @override
  String purchases_serverLimitReached(int freeServerLimit, int serverCount) {
    return 'The free version can add up to $freeServerLimit panel(s). You already have $serverCount.';
  }

  @override
  String get purchases_offlineUnlocked =>
      'Unlocked offline using this device\'s purchase receipt';

  @override
  String get purchases_apiKeyMissing =>
      'RevenueCat API Key is not configured for this build';

  @override
  String get purchases_serviceUnavailableOfflineUnlocked =>
      'Purchase service is temporarily unavailable. Unlocked offline using this device\'s purchase receipt.';

  @override
  String get purchases_serviceUnavailableNetwork =>
      'Purchase service is temporarily unavailable. Allow this app to use the network, then try again.';

  @override
  String get purchases_noPackageAvailable =>
      'No purchasable package is available in the current RevenueCat Offering';

  @override
  String get purchases_packageLoadFailed =>
      'Purchase packages cannot be loaded right now. Please try again later.';

  @override
  String get purchases_serviceNotInitialized =>
      'Purchase service has not been initialized';

  @override
  String get log_hubTitle => 'Log Audit';

  @override
  String get log_panelLogs => 'Panel Logs';

  @override
  String get log_operationLog => 'Operation Logs';

  @override
  String get log_loginLog => 'Login Logs';

  @override
  String get log_systemLog => 'System Logs';

  @override
  String get log_taskLog => 'Task Logs';

  @override
  String get log_sshLoginLog => 'SSH Login Logs';

  @override
  String get log_actions => 'Actions';

  @override
  String get log_clearLogs => 'Clear Logs';

  @override
  String get log_searchOperationPlaceholder => 'Search operation logs...';

  @override
  String get log_searchIpPlaceholder => 'Search IP address...';

  @override
  String get log_searchSshPlaceholder => 'Search address or user...';

  @override
  String get log_noTaskLogs => 'No task logs';

  @override
  String get log_noTaskLogsSubtitle =>
      'Background task execution records will appear here';

  @override
  String get log_noOperationLogs => 'No operation logs';

  @override
  String get log_noOperationLogsSubtitle =>
      'Operation logs from the panel will appear here';

  @override
  String get log_noLoginLogs => 'No login logs';

  @override
  String get log_noLoginLogsSubtitle =>
      'Panel login activity will be recorded here';

  @override
  String get log_noSshLoginLogs => 'No SSH login logs';

  @override
  String get log_noSshLoginLogsSubtitle => 'SSH login records will appear here';

  @override
  String get log_noSystemLogContent => 'No log content';

  @override
  String get log_noSystemLogContentSubtitle => 'The selected log file is empty';

  @override
  String get log_selectLogFile => 'Select Log File';

  @override
  String get log_clearLoginTitle => 'Clear Login Logs';

  @override
  String get log_clearLoginContent =>
      'Clear all login logs? This action cannot be undone.';

  @override
  String get log_clearOperationTitle => 'Clear Operation Logs';

  @override
  String get log_clearOperationContent =>
      'Clear all operation logs? This action cannot be undone.';

  @override
  String get log_success => 'Success';

  @override
  String get log_failed => 'Failed';

  @override
  String get log_executing => 'Executing';

  @override
  String log_port(String port) {
    return 'Port $port';
  }

  @override
  String get log_readFailed => 'Failed to read log';

  @override
  String get log_operationCleared => 'Operation logs cleared';

  @override
  String get log_loginCleared => 'Login logs cleared';

  @override
  String get log_clearFailed => 'Clear failed';

  @override
  String get more_appsServices => 'Apps & Services';

  @override
  String get more_appStoreTitle => 'App Store';

  @override
  String get more_appStoreSubtitle =>
      'Manage installed apps, upgrades, and app settings';

  @override
  String get more_terminalTitle => 'Terminal';

  @override
  String get more_terminalSubtitle =>
      'Connect to the server and run terminal commands';

  @override
  String get more_webServices => 'Website Services';

  @override
  String get more_sslTitle => 'Certificate Management';

  @override
  String get more_sslSubtitle =>
      'Manage SSL certificates, ACME accounts, and self-signed CAs';

  @override
  String get more_runtimeTitle => 'Runtimes';

  @override
  String get more_runtimeSubtitle =>
      'Manage PHP, Node.js, Java, and other runtimes';

  @override
  String get more_databaseTitle => 'Databases';

  @override
  String get more_databaseSubtitle =>
      'Manage MySQL, PostgreSQL, Redis, and other databases';

  @override
  String get more_operations => 'Operations';

  @override
  String get more_cronjobTitle => 'Cron Jobs';

  @override
  String get more_cronjobSubtitle =>
      'Manage scheduled tasks, shell scripts, and automation';

  @override
  String get more_panelSettingsTitle => 'Panel Settings';

  @override
  String get more_panelSettingsSubtitle =>
      'Configure panel security, notifications, backups, and snapshots';

  @override
  String get more_logAuditSubtitle =>
      'Panel logs, login logs, and website runtime logs';

  @override
  String get more_system => 'System';

  @override
  String get more_firewallTitle => 'Firewall';

  @override
  String get more_firewallSubtitle =>
      'Manage system ports and allow/block lists';

  @override
  String get more_processSubtitle => 'View and manage running system processes';

  @override
  String get more_sshTitle => 'SSH Management';

  @override
  String get more_sshSubtitle =>
      'Manage SSH keys and remote connection settings';

  @override
  String get servers_apiKeyReadFailed => 'Failed to read API Key';

  @override
  String get servers_hostRequired => 'Enter the host address';

  @override
  String get servers_hostApiKeyRequired => 'Enter the host address and API Key';

  @override
  String get servers_saved => 'Saved';

  @override
  String get servers_added => 'Added successfully';

  @override
  String get servers_connectionFailed => 'Connection failed';

  @override
  String servers_connectionFailedDescription(String error) {
    return 'Check the configuration or API Key.\nError: $error';
  }

  @override
  String get servers_stop => 'Stop';

  @override
  String get servers_connecting => 'Connecting';

  @override
  String get servers_editPanel => 'Edit Panel';

  @override
  String get servers_addPanel => 'Add Panel';

  @override
  String get servers_connectionSettings => 'Connection Settings';

  @override
  String get servers_name => 'Name';

  @override
  String get servers_namePlaceholder => 'Optional, for example: My Server';

  @override
  String get servers_host => 'Host Address';

  @override
  String get servers_hostPlaceholder => 'Required, for example: 1.2.3.4';

  @override
  String get servers_port => 'Port';

  @override
  String get servers_securityAuth => 'Security Authentication';

  @override
  String get servers_apiKeyHint =>
      'You can generate an API Key in 1Panel under Panel Settings > Panel API. Check the IP allowlist: only IPs in the allowlist can access the panel API.';

  @override
  String get servers_reading => 'Reading...';

  @override
  String get servers_required => 'Required';

  @override
  String get servers_sortHint => 'Drag cards to reorder';

  @override
  String get servers_empty =>
      'No panels added\nTap the button in the top-right corner to start';

  @override
  String servers_loadFailed(String error) {
    return 'Load failed: $error';
  }

  @override
  String get servers_deleteTitle => 'Delete Server';

  @override
  String servers_deleteContent(String name) {
    return 'Delete \"$name\"?';
  }

  @override
  String get servers_online => 'Online';

  @override
  String get servers_memory => 'Memory';

  @override
  String get servers_disk => 'Disk';

  @override
  String get servers_websites => 'Websites';

  @override
  String get servers_databases => 'Databases';

  @override
  String get servers_apps => 'Apps';

  @override
  String get servers_tasks => 'Tasks';

  @override
  String get servers_sort => 'Sort';

  @override
  String get servers_edit => 'Edit';

  @override
  String get premium_heroSubtitle =>
      'One purchase, lifetime access to all features';

  @override
  String get premium_unlimitedTitle => 'Unlimited Panel Management';

  @override
  String get premium_unlimitedDescription =>
      'Remove the 1-panel limit and add any number of 1Panel instances.';

  @override
  String premium_currentServerCount(int serverCount) {
    return ' (you currently have $serverCount panels)';
  }

  @override
  String get premium_moreFeaturesTitle => 'More Advanced Features';

  @override
  String get premium_desktopWidgetsFeature => 'Desktop widgets';

  @override
  String get premium_desktopWidgetsFreeHint => ' (now free)';

  @override
  String get premium_moreFeaturesDescription =>
      ', multi-device sync, and more advanced features are in development.';

  @override
  String get premium_supportTitle => 'Support Open Source';

  @override
  String get premium_supportDescription =>
      'Mono Dash is open source on GitHub. Your support helps keep the project maintained and new features moving forward.';

  @override
  String get premium_loading => 'Loading...';

  @override
  String premium_unlockNow(String price) {
    return 'Unlock Now $price';
  }

  @override
  String get premium_oneTime => 'One-time payment, lifetime access';

  @override
  String get premium_restore => 'Restore Purchases';

  @override
  String get premium_unlockedTitle => 'Premium Unlocked';

  @override
  String premium_unlockedDescription(int serverCount) {
    return 'Thanks for your support. You currently have $serverCount panels.';
  }

  @override
  String get premium_terms => 'Terms of Use';

  @override
  String get premium_privacy => 'Privacy Policy';

  @override
  String get premium_legalAgreement =>
      'By purchasing, you agree to the terms and privacy policy above.';

  @override
  String get premium_unlockedToast => 'Unlimited panels unlocked';

  @override
  String get premium_purchaseIncomplete => 'Purchase was not completed';

  @override
  String get premium_purchaseFailed => 'Purchase failed';

  @override
  String get premium_restoredToast => 'Purchases restored';

  @override
  String get premium_restoreNotFound => 'No restorable purchase found';

  @override
  String get premium_restoreFailed => 'Restore failed';

  @override
  String get serverDetail_searchFilesPlaceholder => 'Search files...';

  @override
  String get serverDetail_searchWebsitesPlaceholder => 'Search websites...';

  @override
  String get serverDetail_includeSubdirectories => 'Include subdirectories';

  @override
  String get serverDetail_currentDirectoryOnly => 'Current directory only';

  @override
  String get serverDetail_menu => 'Menu';

  @override
  String get serverDetail_new => 'New';

  @override
  String get serverDetail_selectMultiple => 'Select Multiple';

  @override
  String get serverDetail_exitSelection => 'Exit Selection';

  @override
  String get serverDetail_uploadFromPhotos => 'From Photos';

  @override
  String get serverDetail_uploadFromFiles => 'From Files';

  @override
  String get serverDetail_uploadFromRemote => 'From Remote';

  @override
  String get serverDetail_shareManagement => 'Share Management';

  @override
  String get serverDetail_viewSettings => 'View Settings';

  @override
  String get serverDetail_listView => 'List View';

  @override
  String get serverDetail_iconView => 'Icon View';

  @override
  String get serverDetail_hideHiddenFiles => 'Hide Hidden';

  @override
  String get serverDetail_showAllFiles => 'Show Hidden';

  @override
  String get serverDetail_sortSettings => 'Sort Settings';

  @override
  String get serverDetail_openTerminal => 'Open Terminal';

  @override
  String get serverDetail_openRestyInstallMissing =>
      'OpenResty install information was not found';

  @override
  String serverDetail_openRestyConfirmContent(String action) {
    return '$action OpenResty service?';
  }

  @override
  String serverDetail_openRestySuccess(String action) {
    return 'OpenResty $action succeeded';
  }

  @override
  String serverDetail_operationFailed(String action) {
    return '$action failed';
  }

  @override
  String get serverDetail_openRestyConfigTitle => 'OpenResty Configuration';

  @override
  String get serverDetail_openRestyConfigSubtitle =>
      'OpenResty main configuration';

  @override
  String get serverDetail_createStaticWebsite => 'Static Website';

  @override
  String get serverDetail_createRuntimeWebsite => 'Runtime';

  @override
  String get serverDetail_createReverseProxy => 'Reverse Proxy';

  @override
  String get serverDetail_createTcpUdpProxy => 'TCP/UDP Proxy';

  @override
  String get serverDetail_manageGroups => 'Manage Groups';

  @override
  String get serverDetail_runtimeStatus => 'Runtime Status';

  @override
  String get serverDetail_logs => 'Logs';

  @override
  String get serverDetail_configEdit => 'Edit Configuration';

  @override
  String get serverDetail_performanceTuning => 'Performance Tuning';

  @override
  String get serverDetail_service => 'Service';

  @override
  String get serverDetail_start => 'Start';

  @override
  String get serverDetail_stop => 'Stop';

  @override
  String get serverDetail_restart => 'Restart';

  @override
  String get serverDetail_reload => 'Reload';

  @override
  String get serverDetail_pullImage => 'Pull Image';

  @override
  String get serverDetail_importImage => 'Import Image';

  @override
  String get serverDetail_buildImage => 'Build Image';

  @override
  String get serverDetail_pruneBuildCache => 'Prune Build Cache';

  @override
  String get serverDetail_pruneImages => 'Prune Images';

  @override
  String get settings_title => 'Settings';

  @override
  String get settings_premium_title => 'Purchases';

  @override
  String get settings_premium_unlimitedTitle => 'Mono Dash Unlimited';

  @override
  String get settings_premium_unlimitedUnlocked => 'Unlimited panels unlocked';

  @override
  String get settings_premium_unlimitedLocked =>
      'Unlock unlimited panels and more features';

  @override
  String get settings_appearance_title => 'Appearance';

  @override
  String get settings_appearance_modeTitle => 'Appearance Mode';

  @override
  String get settings_appearance_modeLight => 'Light';

  @override
  String get settings_appearance_modeDark => 'Dark';

  @override
  String get settings_appearance_appIconTitle => 'App Icon';

  @override
  String get settings_appearance_cardStyleTitle => 'Card Style';

  @override
  String get settings_language_title => 'Language';

  @override
  String get settings_language_subtitle => 'Choose the app display language';

  @override
  String get settings_language_sectionTitle => 'Display Language';

  @override
  String get settings_language_systemSubtitle =>
      'Use the device language when supported';

  @override
  String get settings_language_zh => 'Simplified Chinese';

  @override
  String get settings_language_en => 'English';

  @override
  String get settings_network_title => 'Network & Security';

  @override
  String get settings_network_allowInsecureTitle =>
      'Allow Insecure Connections';

  @override
  String get settings_network_allowInsecureSubtitle =>
      'Accept self-signed or untrusted certificates';

  @override
  String get settings_network_requestTimeoutTitle => 'Request Timeout';

  @override
  String settings_network_requestTimeoutSubtitle(int seconds) {
    return '$seconds s';
  }

  @override
  String get settings_sync_title => 'Sync';

  @override
  String get settings_sync_iCloudTitle => 'iCloud Sync';

  @override
  String get settings_sync_disabledSubtitle =>
      'Sync servers and API keys, off by default';

  @override
  String get settings_sync_enabledWaitingSubtitle =>
      'Enabled, waiting for the first sync';

  @override
  String get settings_sync_unavailableSubtitle =>
      'iCloud is unavailable. Check system iCloud and iCloud Keychain settings.';

  @override
  String settings_sync_lastSucceeded(String time) {
    return 'Last synced: $time';
  }

  @override
  String get settings_sync_syncNowTitle => 'Sync Now';

  @override
  String get settings_sync_syncNowSubtitle =>
      'Pull from iCloud and merge server info';

  @override
  String settings_sync_lastAttempted(String time) {
    return 'Last attempt: $time';
  }

  @override
  String get settings_sync_enabledToast => 'iCloud Sync is enabled';

  @override
  String get settings_sync_disabledToast => 'iCloud Sync is disabled';

  @override
  String get settings_sync_successToast => 'Sync completed';

  @override
  String get settings_sync_failedToast => 'Sync failed';

  @override
  String get settings_sync_webDavConfigTitle => 'WebDAV Config';

  @override
  String get settings_sync_webDavConfigMissing =>
      'WebDAV URL is not configured';

  @override
  String get settings_sync_webDavTitle => 'WebDAV Sync';

  @override
  String get settings_sync_webDavDisabledSubtitle =>
      'Sync server info. API keys are not uploaded by default';

  @override
  String get settings_sync_webDavSyncNowSubtitle =>
      'Pull from WebDAV and merge server info';

  @override
  String get settings_sync_webDavEnabledToast => 'WebDAV Sync is enabled';

  @override
  String get settings_sync_webDavDisabledToast => 'WebDAV Sync is disabled';

  @override
  String get settings_sync_webDavDescription =>
      'WebDAV stores the server list in a remote JSON file. API keys are not uploaded by default. If you enable the API key option below, API keys will be synced in that file, so only use trusted WebDAV storage.';

  @override
  String get settings_sync_webDavUrlLabel => 'WebDAV URL';

  @override
  String get settings_sync_webDavUrlPlaceholder =>
      'https://example.com/dav/mono-dash/';

  @override
  String get settings_sync_webDavUsernameLabel => 'Username';

  @override
  String get settings_sync_webDavUsernamePlaceholder => 'Optional';

  @override
  String get settings_sync_webDavPasswordLabel => 'Password';

  @override
  String get settings_sync_webDavPasswordPlaceholder => 'Optional';

  @override
  String get settings_sync_webDavUrlInvalid =>
      'Enter a valid http or https URL';

  @override
  String get settings_sync_webDavSyncApiKeysTitle => 'Sync API Keys';

  @override
  String get settings_sync_webDavSyncApiKeysSubtitle =>
      'When enabled, API keys are written to the WebDAV sync file';

  @override
  String settings_sync_webDavErrorReadFailed(String status) {
    return 'Could not read the WebDAV sync file (HTTP $status)';
  }

  @override
  String settings_sync_webDavErrorWriteFailed(String status) {
    return 'Could not write the WebDAV sync file (HTTP $status)';
  }

  @override
  String settings_sync_webDavErrorDirectoryFailed(String status) {
    return 'Could not create the WebDAV directory (HTTP $status)';
  }

  @override
  String get settings_network_customHeadersTitle => 'Custom Headers';

  @override
  String get settings_network_customHeadersEmpty => 'Not set';

  @override
  String settings_network_customHeadersCount(int count) {
    return '$count set';
  }

  @override
  String get ssh_title => 'SSH Management';

  @override
  String get ssh_manage => 'Manage';

  @override
  String get ssh_refreshConfig => 'Refresh Config';

  @override
  String get ssh_fullConfig => 'Full Config';

  @override
  String get ssh_publicKeyManagement => 'Public Key Management';

  @override
  String get ssh_authorizedKeys => 'Authorized Keys';

  @override
  String get ssh_logSearchPlaceholder => 'Search address or user...';

  @override
  String get ssh_searchLogs => 'Search Logs';

  @override
  String get ssh_exportLogs => 'Export Logs';

  @override
  String get ssh_refreshList => 'Refresh List';

  @override
  String get ssh_downloadEmpty => 'File download failed or was empty';

  @override
  String get ssh_loginLogTitle => 'SSH Login Logs';

  @override
  String get ssh_exportFailed => 'Export failed';

  @override
  String get ssh_serviceStatus => 'Service Status';

  @override
  String get ssh_runningStatus => 'Running Status';

  @override
  String get ssh_serviceRunningMessage => 'SSH service is running normally';

  @override
  String get ssh_running => 'Running';

  @override
  String get ssh_stopped => 'Stopped';

  @override
  String get ssh_port => 'Port';

  @override
  String get ssh_notConfigured => 'Not Configured';

  @override
  String get ssh_listenAddress => 'Listen Address';

  @override
  String get ssh_currentUser => 'Current User';

  @override
  String get ssh_autoStart => 'Start on Boot';

  @override
  String get ssh_startService => 'Start Service';

  @override
  String get ssh_stopService => 'Stop Service';

  @override
  String get ssh_restartService => 'Restart Service';

  @override
  String get ssh_start => 'Start';

  @override
  String get ssh_stop => 'Stop';

  @override
  String get ssh_restart => 'Restart';

  @override
  String get ssh_authConfig => 'Authentication';

  @override
  String get ssh_passwordLogin => 'Password Login';

  @override
  String get ssh_keyLogin => 'Key Login';

  @override
  String get ssh_useDns => 'DNS Lookup (UseDNS)';

  @override
  String ssh_confirmOperationTitle(String label) {
    return '$label SSH';
  }

  @override
  String ssh_confirmOperationContent(String operation) {
    return 'Run $operation?';
  }

  @override
  String get ssh_configFileTitle => 'SSH Config File';

  @override
  String get ssh_fullConfigWarning =>
      'Full config edits sshd_config directly. SSH service will restart automatically after changes.';

  @override
  String get ssh_configFile => 'Config File';

  @override
  String ssh_priority(int priority) {
    return 'Priority $priority';
  }

  @override
  String get ssh_editConfigFile => 'Edit Config File';

  @override
  String get ssh_rootLoginPolicy => 'Root Login Policy';

  @override
  String get ssh_rootLoginAllow => 'Allow Root Login';

  @override
  String get ssh_rootLoginDeny => 'Deny Root Login';

  @override
  String get ssh_rootLoginProhibitPassword => 'Disable Password Login';

  @override
  String get ssh_rootLoginForcedCommandsOnly => 'Forced Commands Only';

  @override
  String get ssh_disconnectTitle => 'Disconnect';

  @override
  String ssh_disconnectContent(int pid) {
    return 'Disconnect SSH session PID $pid?';
  }

  @override
  String get ssh_disconnectAction => 'Disconnect';

  @override
  String get ssh_disconnected => 'Disconnected';

  @override
  String get ssh_disconnectFailed => 'Disconnect failed';

  @override
  String get ssh_connectingSessions => 'Connecting to session service';

  @override
  String get ssh_connectionFailed => 'Connection failed';

  @override
  String get ssh_noActiveSessions => 'No Active Sessions';

  @override
  String get ssh_sessionsEmptySubtitle => 'SSH sessions will appear here';

  @override
  String get ssh_forceDisconnect => 'Force Disconnect';

  @override
  String get ssh_updating => 'Updating';

  @override
  String get ssh_enabled => 'Enabled';

  @override
  String get ssh_disabled => 'Disabled';

  @override
  String get ssh_editPort => 'Edit Port';

  @override
  String get ssh_portPlaceholder => '22 or 22,2222';

  @override
  String get ssh_portHint =>
      'Separate multiple ports with commas, such as 22,2222';

  @override
  String get ssh_portRequired => 'Port cannot be empty';

  @override
  String get ssh_portInvalidFormat => 'Invalid port format';

  @override
  String get ssh_portInvalidRange => 'Port must be an integer from 1 to 65535';

  @override
  String get ssh_portDuplicate => 'Port cannot be duplicated';

  @override
  String get ssh_editListenAddress => 'Edit Listen Address';

  @override
  String get ssh_ipv4Address => 'IPv4 Address';

  @override
  String get ssh_ipv6Address => 'IPv6 Address';

  @override
  String get ssh_bindAllHint =>
      'Bind all listens on all network interfaces (0.0.0.0 / ::)';

  @override
  String get ssh_bindAll => 'Bind All';

  @override
  String get ssh_certManageTitle => 'SSH Key Management';

  @override
  String get ssh_certEmptyTitle => 'No Keys';

  @override
  String get ssh_certEmptySubtitle => 'Tap + in the top right to create a key';

  @override
  String get ssh_certSyncTitle => 'Sync Keys';

  @override
  String get ssh_certSyncContent =>
      'Scan keys from disk and sync them to the database?';

  @override
  String get ssh_certSyncAction => 'Sync';

  @override
  String get ssh_encryptionMode => 'Encryption Mode';

  @override
  String get ssh_passphrase => 'Passphrase';

  @override
  String get ssh_publicKey => 'Public Key';

  @override
  String get ssh_privateKey => 'Private Key';

  @override
  String get ssh_unsynced => 'Not Synced';

  @override
  String get ssh_editKey => 'Edit Key';

  @override
  String get ssh_createKey => 'Create Key';

  @override
  String get ssh_name => 'Name';

  @override
  String get ssh_createMode => 'Create Mode';

  @override
  String get ssh_passphraseOptional => 'Passphrase (Optional)';

  @override
  String get ssh_passphrasePlaceholder => 'Leave empty for no passphrase';

  @override
  String get ssh_pastePublicKey => 'Paste public key content';

  @override
  String get ssh_pastePrivateKey => 'Paste private key content';

  @override
  String get ssh_descriptionOptional => 'Description (Optional)';

  @override
  String get ssh_remarksPlaceholder => 'Remarks';

  @override
  String get ssh_selectEncryptionMode => 'Select Encryption Mode';

  @override
  String get ssh_generateAutomatically => 'Generate Automatically';

  @override
  String get ssh_manualInput => 'Manual Input';

  @override
  String get ssh_enterName => 'Enter a name';

  @override
  String get ssh_certCreated => 'Key created';

  @override
  String get ssh_createFailed => 'Create failed';

  @override
  String get ssh_certUpdated => 'Key updated';

  @override
  String get ssh_updateFailed => 'Update failed';

  @override
  String get ssh_certDeleted => 'Key deleted';

  @override
  String get ssh_deleteFailed => 'Delete failed';

  @override
  String get ssh_syncCompleted => 'Sync completed';

  @override
  String get ssh_syncFailed => 'Sync failed';

  @override
  String get ssh_operationCompleted => 'Operation completed';

  @override
  String get ssh_operationFailed => 'Operation failed';

  @override
  String get ssh_configUpdated => 'Configuration updated';

  @override
  String get runtime_title => 'Runtimes';

  @override
  String get runtime_all => 'All';

  @override
  String get runtime_action => 'Actions';

  @override
  String get runtime_new => 'New';

  @override
  String get runtime_searchPlaceholder => 'Search runtimes...';

  @override
  String get runtime_containerNameMissing => 'Runtime container name not found';

  @override
  String runtime_buildLogTitle(String name) {
    return '$name Build Logs';
  }

  @override
  String get runtime_emptyTitle => 'No Runtimes';

  @override
  String get runtime_noSearchResults => 'No runtimes found';

  @override
  String runtime_emptyTypeTitle(String type) {
    return 'No $type runtimes yet';
  }

  @override
  String get runtime_emptySubtitle =>
      'Tap New in the top right to create a runtime';

  @override
  String get runtime_noSearchResultsSubtitle => 'Try a different keyword';

  @override
  String runtime_emptyTypeSubtitle(String type) {
    return 'Create a $type runtime from the top right';
  }

  @override
  String runtime_editTitle(String type) {
    return 'Edit $type Runtime';
  }

  @override
  String runtime_createTitle(String type) {
    return 'Create $type Runtime';
  }

  @override
  String get runtime_serviceManagement => 'Service Management';

  @override
  String get runtime_start => 'Start';

  @override
  String get runtime_stop => 'Stop';

  @override
  String get runtime_restart => 'Restart';

  @override
  String get runtime_startDescription => 'Start runtime';

  @override
  String get runtime_stopDescription => 'Stop runtime';

  @override
  String get runtime_restartDescription => 'Restart runtime';

  @override
  String get runtime_appTools => 'App Tools';

  @override
  String get runtime_projectDirectory => 'Project Directory';

  @override
  String get runtime_configDirectory => 'Config Directory';

  @override
  String get runtime_terminal => 'Terminal';

  @override
  String get runtime_terminalDescription => 'Run commands inside the container';

  @override
  String get runtime_editDescription => 'Modify runtime configuration';

  @override
  String get runtime_logs => 'Logs';

  @override
  String get runtime_runLogs => 'Runtime Logs';

  @override
  String get runtime_runLogsDescription => 'View container runtime logs';

  @override
  String get runtime_buildLogs => 'Build Logs';

  @override
  String get runtime_buildLogsDescription => 'View build process logs';

  @override
  String get runtime_dangerZone => 'Danger Zone';

  @override
  String get runtime_deleteDescription => 'Delete this runtime';

  @override
  String get runtime_deleteTitle => 'Delete Runtime';

  @override
  String runtime_deleteConfirm(String name) {
    return 'Delete runtime \"$name\"?';
  }

  @override
  String runtime_operateTitle(String action) {
    return '$action Runtime';
  }

  @override
  String runtime_operateContent(String action) {
    return '$action this runtime?';
  }

  @override
  String runtime_operationSucceeded(String action) {
    return '$action succeeded';
  }

  @override
  String runtime_operationFailed(String action) {
    return '$action failed';
  }

  @override
  String get runtime_deleteSucceeded => 'Deleted';

  @override
  String get runtime_deleteFailed => 'Delete failed';

  @override
  String get runtime_nameRequired => 'Enter a name';

  @override
  String get runtime_appLoadFailed => 'Failed to load app';

  @override
  String get runtime_versionRequired => 'Select a version';

  @override
  String get runtime_configLoading =>
      'App configuration is loading. Please wait.';

  @override
  String get runtime_containerNameInvalid => 'Invalid container name';

  @override
  String get runtime_codeDirRequired => 'Enter a code directory';

  @override
  String get runtime_hostPortInvalid => 'Invalid host port';

  @override
  String get runtime_containerPortInvalid => 'Invalid container port';

  @override
  String runtime_hostPortDuplicate(int port) {
    return 'Host port $port is duplicated';
  }

  @override
  String runtime_containerPortDuplicate(int port) {
    return 'Container port $port is duplicated';
  }

  @override
  String get runtime_saveFailed => 'Save failed';

  @override
  String get runtime_createFailed => 'Create failed';

  @override
  String get runtime_appSelection => 'App Selection';

  @override
  String get runtime_basicConfig => 'Basic Config';

  @override
  String get runtime_name => 'Name';

  @override
  String get runtime_containerName => 'Container Name';

  @override
  String get runtime_containerNamePlaceholder =>
      'Leave empty to match the name';

  @override
  String get runtime_projectConfig => 'Project Config';

  @override
  String get runtime_codeDirectory => 'Code Directory';

  @override
  String get runtime_chooseCodeDirectory => 'Choose Code Directory';

  @override
  String get runtime_startCommand => 'Start Command';

  @override
  String runtime_startCommandExample(String command) {
    return 'Example: $command';
  }

  @override
  String get runtime_portMappings => 'Port Mappings';

  @override
  String get runtime_portPublicHint =>
      'Tap the lock icon to allow external port access';

  @override
  String get runtime_environmentVariables => 'Environment Variables';

  @override
  String get runtime_mounts => 'Mounts';

  @override
  String get runtime_hostMappings => 'Host Mappings';

  @override
  String get runtime_other => 'Other';

  @override
  String get runtime_remark => 'Remark';

  @override
  String get runtime_optional => 'Optional';

  @override
  String get runtime_version => 'Version';

  @override
  String get runtime_loadingApps => 'Loading apps...';

  @override
  String get runtime_loading => 'Loading...';

  @override
  String get runtime_noVersions => 'No versions available';

  @override
  String get runtime_noPortMappings => 'No port mappings added';

  @override
  String get runtime_hostPort => 'Host Port';

  @override
  String get runtime_containerPort => 'Container Port';

  @override
  String get runtime_noEnvironmentVariables => 'No environment variables added';

  @override
  String get runtime_envKey => 'Key';

  @override
  String get runtime_envValue => 'Value';

  @override
  String get runtime_noMounts => 'No mounts added';

  @override
  String get runtime_hostPath => 'Host Path';

  @override
  String get runtime_chooseMountPath => 'Choose Mount Path';

  @override
  String get runtime_containerPath => 'Container Path';

  @override
  String get runtime_noHostMappings => 'No host mappings added';

  @override
  String get runtime_hostname => 'Hostname';

  @override
  String get runtime_ipAddress => 'IP Address';

  @override
  String get runtime_aptMirrorSource => 'APT Mirror Source';

  @override
  String get runtime_phpConfig => 'PHP Config';

  @override
  String get runtime_phpVersion => 'PHP Version';

  @override
  String get runtime_phpFpmPort => 'PHP-FPM Port';

  @override
  String get runtime_extensionPreset => 'Extension Preset';

  @override
  String get runtime_mirrorSource => 'Mirror Source';

  @override
  String get runtime_phpExtensions => 'PHP Extensions';

  @override
  String get runtime_addMore => 'Add more';

  @override
  String get runtime_packageConfig => 'Package Config';

  @override
  String get runtime_packageManager => 'Package Manager';

  @override
  String get runtime_startCommandSection => 'Start Command';

  @override
  String get runtime_runScript => 'Run Script';

  @override
  String get runtime_selectBuiltinScript => 'Select Built-in Script';

  @override
  String get runtime_customCommand => 'Custom Command';

  @override
  String get runtime_customScriptHint =>
      'Enter a custom start command in Project Config above';

  @override
  String get runtime_loadingScripts => 'Loading scripts...';

  @override
  String get runtime_noScripts => 'No project scripts found';

  @override
  String get runtime_npmMirrorSource => 'NPM Mirror Source';

  @override
  String get firewall_title => 'Firewall';

  @override
  String get firewall_loadStatusFailed => 'Failed to load firewall status';

  @override
  String get firewall_serviceMissingTitle =>
      'Firewalld / Ufw service not found';

  @override
  String get firewall_serviceMissingSubtitle =>
      'Install it before using this feature.';

  @override
  String get firewall_refreshStatus => 'Refresh Status';

  @override
  String get firewall_searchPortRules => 'Search Port Rules';

  @override
  String get firewall_searchIpRules => 'Search IP Rules';

  @override
  String get firewall_serviceMenu => 'Firewall Service';

  @override
  String get firewall_newPortRule => 'New Port Rule';

  @override
  String get firewall_editPortRule => 'Edit Port Rule';

  @override
  String get firewall_newIpRule => 'New IP Rule';

  @override
  String get firewall_editIpRule => 'Edit IP Rule';

  @override
  String get firewall_exitMultiSelect => 'Exit Multi-select';

  @override
  String get firewall_selectRules => 'Select Rules';

  @override
  String get firewall_importing => 'Importing';

  @override
  String get firewall_importRules => 'Import Rules';

  @override
  String get firewall_filterStrategy => 'Filter Strategy';

  @override
  String get firewall_allStrategies => 'All Strategies';

  @override
  String get firewall_refreshRules => 'Refresh Rules';

  @override
  String get firewall_startService => 'Start Service';

  @override
  String get firewall_stopService => 'Stop Service';

  @override
  String get firewall_restartService => 'Restart Service';

  @override
  String get firewall_startTitle => 'Start Firewall';

  @override
  String get firewall_stopTitle => 'Stop Firewall';

  @override
  String get firewall_restartTitle => 'Restart Firewall';

  @override
  String get firewall_startContent => 'Start the firewall service?';

  @override
  String get firewall_stopContent =>
      'Rules will be unavailable after stopping. Continue?';

  @override
  String get firewall_restartContent => 'Restart the firewall service?';

  @override
  String get firewall_enableBanPing => 'Enable Ping Block';

  @override
  String get firewall_disableBanPing => 'Disable Ping Block';

  @override
  String get firewall_enableBanPingContent =>
      'External ping requests will be blocked. Continue?';

  @override
  String get firewall_disableBanPingContent =>
      'External clients will be able to ping this host. Continue?';

  @override
  String get firewall_initBasicChain => 'Initialize 1PANEL_BASIC';

  @override
  String get firewall_initIptables => 'Initialize iptables';

  @override
  String get firewall_initBasicChainContent =>
      'Initialize the 1PANEL_BASIC base chain?';

  @override
  String get firewall_bindBasicChain => 'Bind 1PANEL_BASIC';

  @override
  String get firewall_unbindBasicChain => 'Unbind 1PANEL_BASIC';

  @override
  String get firewall_bindIptablesTitle => 'Bind iptables Base Chain';

  @override
  String get firewall_unbindIptablesTitle => 'Unbind iptables Base Chain';

  @override
  String get firewall_bindBasicChainContent =>
      'Bind the 1PANEL_BASIC base chain?';

  @override
  String get firewall_unbindBasicChainContent =>
      'Port and IP rules will be unavailable after unbinding. Continue?';

  @override
  String get firewall_operationSucceeded => 'Operation succeeded';

  @override
  String get firewall_operationFailed => 'Operation failed';

  @override
  String get firewall_ruleInfo => 'Rule Info';

  @override
  String get firewall_port => 'Port';

  @override
  String get firewall_portPlaceholder => '80, 8080-8090, or 80,443';

  @override
  String get firewall_protocol => 'Protocol';

  @override
  String get firewall_strategy => 'Strategy';

  @override
  String get firewall_editPortHint =>
      'Editing a rule does not change the port.';

  @override
  String get firewall_createPortHint =>
      'Supports a single port, port range, or comma-separated port list.';

  @override
  String get firewall_source => 'Source';

  @override
  String get firewall_range => 'Range';

  @override
  String get firewall_address => 'Address';

  @override
  String get firewall_addressPlaceholder =>
      'Separate multiple addresses with commas. CIDR is supported.';

  @override
  String get firewall_descriptionOptional => 'Description (Optional)';

  @override
  String get firewall_descriptionPlaceholder => 'Optional note';

  @override
  String get firewall_acceptLabel => 'Accept (Allow)';

  @override
  String get firewall_dropLabel => 'Drop (Deny)';

  @override
  String get firewall_allAddresses => 'All Addresses';

  @override
  String get firewall_specificAddress => 'Specific Address';

  @override
  String get firewall_portRequired => 'Enter a port';

  @override
  String get firewall_sourceAddressRequired => 'Enter a source address';

  @override
  String get firewall_ruleUpdated => 'Rule updated';

  @override
  String get firewall_ruleAdded => 'Rule added';

  @override
  String get firewall_portListRangeMixed =>
      'Port lists and ranges cannot be mixed';

  @override
  String get firewall_portInvalidFormat => 'Invalid port format';

  @override
  String get firewall_portRangeInvalidFormat => 'Invalid port range format';

  @override
  String get firewall_portRangeInvalid =>
      'Port range must be within 1-65535 and start cannot be greater than end';

  @override
  String get firewall_portInvalidRange => 'Port must be within 1-65535';

  @override
  String get firewall_addressInvalidFormat => 'Invalid address format';

  @override
  String firewall_addressInvalidValue(String address) {
    return 'Invalid address format: $address';
  }

  @override
  String get firewall_ipAddress => 'IP Address';

  @override
  String get firewall_ipAddressPlaceholder => '192.168.1.100 or 10.0.0.0/8';

  @override
  String get firewall_editIpHint =>
      'Editing a rule does not change the IP address.';

  @override
  String get firewall_createIpHint => 'Supports a single IP or CIDR range.';

  @override
  String get firewall_ipRequired => 'Enter an IP address';

  @override
  String firewall_selectedRules(int count) {
    return '$count rules selected';
  }

  @override
  String get firewall_chooseAction => 'Choose an action below';

  @override
  String get firewall_expandActionMenu => 'Tap to open action menu';

  @override
  String get firewall_selectAll => 'Select All';

  @override
  String get firewall_clearSelectAll => 'Clear All';

  @override
  String get firewall_exporting => 'Exporting';

  @override
  String get firewall_export => 'Export';

  @override
  String get firewall_importPortRules => 'Import Port Rules';

  @override
  String firewall_importCount(int count) {
    return 'Import $count';
  }

  @override
  String get firewall_importSucceeded => 'Import succeeded';

  @override
  String firewall_importedCount(int count) {
    return '$count rules imported';
  }

  @override
  String get firewall_importPartiallySucceeded => 'Import partially succeeded';

  @override
  String firewall_importPartialDescription(int success, int failed) {
    return 'Succeeded $success, failed $failed';
  }

  @override
  String get firewall_importStatusNew => 'New';

  @override
  String get firewall_importStatusConflict => 'Conflict';

  @override
  String get firewall_importStatusDuplicate => 'Duplicate';

  @override
  String get firewall_importStatusInvalid => 'Invalid';

  @override
  String firewall_importPortTitle(String port, String protocol) {
    return 'Port $port ($protocol)';
  }

  @override
  String firewall_importConflictSubtitle(String existing, String incoming) {
    return 'Existing strategy $existing, import strategy $incoming';
  }

  @override
  String get firewall_importInvalidSubtitle => 'This item will not be imported';

  @override
  String firewall_importCandidateSubtitle(String address, String strategy) {
    return '$address · $strategy';
  }

  @override
  String get firewall_ruleManagement => 'Rule Management';

  @override
  String get firewall_editRule => 'Edit Rule';

  @override
  String get firewall_editPortRuleDescription =>
      'Modify protocol, strategy, source, and description';

  @override
  String get firewall_editIpRuleDescription =>
      'Modify strategy and description';

  @override
  String get firewall_changeToDrop => 'Change to Drop';

  @override
  String get firewall_changeToAccept => 'Change to Accept';

  @override
  String get firewall_denyThisPort => 'Deny access to this port';

  @override
  String get firewall_allowThisPort => 'Allow access to this port';

  @override
  String get firewall_denyThisAddress => 'Deny access from this address';

  @override
  String get firewall_allowThisAddress => 'Allow access from this address';

  @override
  String get firewall_occupiedProcess => 'Occupied Process';

  @override
  String get firewall_processDetails => 'View listening process details';

  @override
  String get firewall_deleteRule => 'Delete Rule';

  @override
  String get firewall_removeThisRule => 'Remove this rule from the firewall';

  @override
  String get firewall_protocolLabel => 'Protocol';

  @override
  String get firewall_sourceLabel => 'Source';

  @override
  String get firewall_occupiedLabel => 'Occupied';

  @override
  String get firewall_descriptionLabel => 'Description';

  @override
  String get firewall_occupied => 'Occupied';

  @override
  String get firewall_notDetected => 'Firewall not detected';

  @override
  String get firewall_notInitialized => 'Firewall not initialized';

  @override
  String get firewall_notStarted => 'Firewall not started';

  @override
  String get firewall_basicChainUnbound => 'iptables base chain is not bound';

  @override
  String get firewall_portRulesNeedActive =>
      'Port rule operations require the firewall to be running.';

  @override
  String get firewall_iptablesUnboundSubtitle =>
      'Current iptables is not bound to 1PANEL_BASIC, so port rules are unavailable.';

  @override
  String get firewall_initializeFirst =>
      'Initialize the firewall in 1Panel first.';

  @override
  String get firewall_noPortRules => 'No Port Rules';

  @override
  String get firewall_noPortRulesSubtitle =>
      'Create a rule or import existing rule JSON.';

  @override
  String get firewall_noIpRules => 'No IP Rules';

  @override
  String get firewall_noIpRulesSubtitle =>
      'Create IP rules from the top-right menu.';

  @override
  String get firewall_enableAction => 'Enable';

  @override
  String get firewall_disableAction => 'Disable';

  @override
  String get firewall_createRule => 'Create Rule';

  @override
  String get firewall_switchStrategyTitle => 'Switch Strategy';

  @override
  String firewall_switchPortStrategyContent(String port, String strategy) {
    return 'Change port $port strategy to $strategy?';
  }

  @override
  String firewall_switchIpStrategyContent(String address, String strategy) {
    return 'Change $address strategy to $strategy?';
  }

  @override
  String get firewall_switchAction => 'Switch';

  @override
  String get firewall_strategyUpdated => 'Strategy updated';

  @override
  String get firewall_strategyUpdateFailed => 'Strategy update failed';

  @override
  String get firewall_deletePortRule => 'Delete Port Rule';

  @override
  String firewall_deletePortRuleContent(String port, String protocol) {
    return 'Delete port $port ($protocol)?';
  }

  @override
  String get firewall_deleteIpRule => 'Delete IP Rule';

  @override
  String firewall_deleteIpRuleContent(String address) {
    return 'Delete $address?';
  }

  @override
  String get firewall_ruleDeleted => 'Rule deleted';

  @override
  String get firewall_deleteFailed => 'Delete failed';

  @override
  String get firewall_batchDeleteTitle => 'Batch Delete';

  @override
  String firewall_batchDeleteContent(int count) {
    return 'Delete the selected $count port rules? The batch API will do its best and the list will refresh after completion.';
  }

  @override
  String get firewall_batchDeleteSubmitted => 'Batch delete submitted';

  @override
  String get firewall_batchDeleteFailed => 'Batch delete failed';

  @override
  String get firewall_selectRulesToExport => 'Select rules to export first';

  @override
  String get firewall_exportFailed => 'Export failed';

  @override
  String get firewall_importFailed => 'Import failed';

  @override
  String get firewall_jsonRootMustBeArray => 'JSON root must be an array.';

  @override
  String get firewall_importItemNotObject => 'Import item is not an object';

  @override
  String get firewall_missingPortProtocolStrategy =>
      'Missing port/protocol/strategy';

  @override
  String firewall_unsupportedProtocol(String protocol) {
    return 'Unsupported protocol: $protocol';
  }

  @override
  String firewall_unsupportedStrategy(String strategy) {
    return 'Unsupported strategy: $strategy';
  }

  @override
  String firewall_portTitle(String port) {
    return 'Port $port';
  }

  @override
  String get settings_general_title => 'General';

  @override
  String get settings_security_title => 'Security';

  @override
  String get settings_appLock_title => 'Launch Protection';

  @override
  String get settings_appLock_subtitleOn => 'Password or biometrics required';

  @override
  String get settings_appLock_subtitleOff =>
      'Require PIN or biometrics when opening the app';

  @override
  String get settings_appLock_pageTitle => 'Launch Protection';

  @override
  String get settings_appLock_description =>
      'Require a password or biometric verification before opening Mono Dash.';

  @override
  String get settings_appLock_passwordLabel => 'PIN';

  @override
  String get settings_appLock_passwordSwitchTitle => 'PIN';

  @override
  String get settings_appLock_confirmPasswordLabel => 'Confirm PIN';

  @override
  String get settings_appLock_currentPasswordLabel => 'Current PIN';

  @override
  String get settings_appLock_newPasswordLabel => 'New PIN';

  @override
  String get settings_appLock_passwordRequired => 'Enter your PIN';

  @override
  String get settings_appLock_passwordTooShort => 'Use a 6-digit PIN';

  @override
  String get settings_appLock_passwordDigitsOnly => 'Use digits only';

  @override
  String get settings_appLock_createPinTitle => 'Create a PIN';

  @override
  String get settings_appLock_createPinSubtitle =>
      'Enter 6 digits. This PIN is used when biometrics are unavailable.';

  @override
  String get settings_appLock_confirmPinTitle => 'Confirm your PIN';

  @override
  String get settings_appLock_confirmPinSubtitle =>
      'Enter the PIN again to enable launch protection.';

  @override
  String get settings_appLock_currentPinTitle => 'Enter current PIN';

  @override
  String get settings_appLock_currentPinSubtitle =>
      'Verify the existing PIN before changing it.';

  @override
  String get settings_appLock_newPinTitle => 'Enter new PIN';

  @override
  String get settings_appLock_newPinSubtitle => 'Choose 6 digits.';

  @override
  String get settings_appLock_passwordMismatch => 'Passwords do not match';

  @override
  String get settings_appLock_wrongPassword => 'Incorrect password';

  @override
  String get settings_appLock_enableAction => 'Enable Launch Protection';

  @override
  String get settings_appLock_disableTitle => 'Turn off launch protection?';

  @override
  String get settings_appLock_disableContent =>
      'Mono Dash will open without password or biometric verification.';

  @override
  String get settings_appLock_disableAction => 'Turn Off';

  @override
  String get settings_appLock_disableVerifyTitle => 'Enter PIN';

  @override
  String get settings_appLock_disableVerifySubtitle =>
      'Verify your PIN to turn off launch protection.';

  @override
  String get settings_appLock_enabledToast => 'Launch protection enabled';

  @override
  String get settings_appLock_disabledToast => 'Launch protection disabled';

  @override
  String get settings_appLock_passwordUpdatedToast => 'Password updated';

  @override
  String get settings_appLock_biometricTitle => 'Biometric Unlock';

  @override
  String get settings_appLock_biometricSectionTitle => 'Biometrics';

  @override
  String get settings_appLock_biometricSubtitle =>
      'Use Face ID, Touch ID, or fingerprint';

  @override
  String get settings_appLock_biometricUnavailable =>
      'No enrolled biometrics on this device';

  @override
  String get settings_appLock_biometricRequiresPassword => 'Turn on PIN first';

  @override
  String get settings_appLock_faceIdTitle => 'Face ID';

  @override
  String get settings_appLock_fingerprintTitle => 'Fingerprint';

  @override
  String get settings_appLock_changePassword => 'Change Password';

  @override
  String get settings_appLock_changePasswordSubtitle =>
      'Update the password used to unlock the app';

  @override
  String get settings_appLock_authReason => 'Unlock Mono Dash';

  @override
  String get settings_appLock_unlockTitle => 'Mono Dash is locked';

  @override
  String get settings_appLock_unlockSubtitle =>
      'Enter your PIN or use biometrics to continue.';

  @override
  String get settings_appLock_unlockAction => 'Unlock';

  @override
  String get settings_appLock_useBiometric => 'Use Biometrics';

  @override
  String get settings_appLock_unlockFailed => 'Unable to verify biometrics';

  @override
  String get settings_appLock_widgetNote =>
      'Home screen widgets refresh independently. Launch protection only protects the main app and does not block widget timeline refreshes.';

  @override
  String get settings_appLock_mischiefSectionTitle => 'Mischief';

  @override
  String get settings_appLock_misleadingPinFeedbackTitle =>
      'Terrible PIN Feedback';

  @override
  String get settings_appLock_misleadingPinFeedbackSubtitle =>
      'Random red and green hints while typing; the PIN is still checked only when you confirm.';

  @override
  String get settings_appLock_setPinSheetTitle => 'Set PIN';

  @override
  String get settings_appLock_changePinSheetTitle => 'Change PIN';

  @override
  String settings_appLock_enableBiometricSheetTitle(String method) {
    return 'Use $method?';
  }

  @override
  String settings_appLock_enableBiometricSheetSubtitle(String method) {
    return 'You can unlock Mono Dash with $method after entering your PIN once.';
  }

  @override
  String get settings_cache_title => 'Cache Management';

  @override
  String get settings_cache_subtitle => 'Clear local temporary files';

  @override
  String get settings_help_title => 'Help & About';

  @override
  String get settings_help_contactTitle => 'Contact Us';

  @override
  String get settings_help_contactSubtitle =>
      'GitHub Issues and Telegram group';

  @override
  String get settings_contact_supportTitle => 'GitHub Issues';

  @override
  String get settings_contact_supportContent =>
      'If you run into usage issues, submit them on GitHub Issues so they can be tracked.';

  @override
  String get settings_contact_feedbackTitle => 'Telegram Group';

  @override
  String get settings_contact_feedbackContent =>
      'You can also join the Telegram group to discuss usage questions and share feedback.';

  @override
  String get settings_contact_submitIssue => 'Submit GitHub Issue';

  @override
  String get settings_contact_joinSupport => 'Join Telegram Group';

  @override
  String get settings_contact_openFailed => 'Unable to open the link';

  @override
  String get settings_help_apiKeyTitle => 'Where to Find API Key';

  @override
  String get settings_help_apiKeyContent =>
      'In 1Panel, go to Settings > Panel Settings > API, enable API access, generate an API Key, and enter it in the add panel form.';

  @override
  String get settings_help_privacyTitle => 'Privacy & Purchases';

  @override
  String get settings_help_privacyContent =>
      'Panel connection information is stored on this device. API Keys use secure system storage. Purchases are processed by the App Store or Google Play, and RevenueCat is only used to sync purchase status.';

  @override
  String get settings_help_openSourceTitle => 'Source Code';

  @override
  String get settings_help_openSourceSubtitle =>
      'View the Mono Dash GitHub repository';

  @override
  String get settings_openSource_projectTitle => 'Mono Dash is open source';

  @override
  String get settings_openSource_projectContent =>
      'Mono Dash source code is hosted on GitHub. You can inspect the code, submit issues, or help improve this third-party mobile management client for 1Panel.';

  @override
  String get settings_openSource_openRepository => 'Open GitHub Repository';

  @override
  String get settings_openSource_copyRepositoryUrl => 'Copy Repository Link';

  @override
  String get settings_help_licensesTitle => 'Open Source Licenses';

  @override
  String get settings_help_licensesSubtitle => 'Third-party component licenses';

  @override
  String get settings_licenses_appSection => 'Application';

  @override
  String get settings_licenses_componentsSection => 'Components';

  @override
  String get settings_licenses_licenseSection => 'License Text';

  @override
  String settings_licenses_versionSubtitle(String version) {
    return 'Version $version';
  }

  @override
  String settings_licenses_packageCount(int count) {
    return '$count packages';
  }

  @override
  String settings_licenses_entryCount(int count) {
    return '$count license entries';
  }

  @override
  String get settings_licenses_loading => 'Loading licenses...';

  @override
  String get settings_licenses_emptyTitle => 'No licenses found';

  @override
  String get settings_licenses_emptySubtitle =>
      'No registered license data is available.';

  @override
  String get settings_help_aboutTitle => 'About Mono Dash';

  @override
  String get settings_help_aboutContent =>
      'A third-party mobile management tool for 1Panel.';

  @override
  String get settings_insecure_confirmTitle => 'Allow insecure connections?';

  @override
  String get settings_insecure_confirmContent =>
      'After enabling this, API requests for this panel will accept self-signed and untrusted certificates. This reduces connection security and should only be enabled for servers you trust.';

  @override
  String get settings_insecure_enable => 'Enable';

  @override
  String get settings_timeout_placeholder => 'For example: 60';

  @override
  String get settings_timeout_description =>
      'Used for all panel API requests in the app. Range: 5-300 seconds.';

  @override
  String get settings_timeout_errorEmpty => 'Enter a timeout';

  @override
  String get settings_timeout_errorRange =>
      'Enter a value from 5 to 300 seconds';

  @override
  String get settings_timeout_updated => 'Request timeout updated';

  @override
  String get settings_headers_placeholder => 'X-Header-Name: value';

  @override
  String get settings_headers_description =>
      'One header per line in Key: Value format. Leave empty to clear custom headers.';

  @override
  String get settings_headers_cleared => 'Custom headers cleared';

  @override
  String get settings_headers_updated => 'Custom headers updated';

  @override
  String settings_headers_errorFormat(int line) {
    return 'Line $line must use Key: Value format';
  }

  @override
  String settings_headers_errorEmptyKey(int line) {
    return 'Line $line header name cannot be empty';
  }

  @override
  String settings_headers_errorEmptyValue(int line) {
    return 'Line $line header value cannot be empty';
  }

  @override
  String settings_headers_errorInvalidKey(int line) {
    return 'Line $line header name cannot contain spaces or colons';
  }

  @override
  String get settings_cache_sectionTitle => 'Local Cache';

  @override
  String get settings_cache_footer =>
      'Only system temporary directories and app cache directories are cleared. Saved panel information is not affected.';

  @override
  String settings_cache_errorFooter(String error) {
    return 'Error: $error';
  }

  @override
  String get settings_cache_sizeTitle => 'Cache Size';

  @override
  String get settings_cache_clearTitle => 'Clear Cache';

  @override
  String get settings_cache_calculating => 'Calculating...';

  @override
  String get settings_cache_readFailed => 'Read failed';

  @override
  String get settings_cache_confirmContent =>
      'Will delete: local temporary cache files.\n\nWill not delete: panel configuration, API Keys, downloaded files, or purchase status.';

  @override
  String get settings_cache_clearAction => 'Clear';

  @override
  String get settings_cache_cleared => 'Cache cleared';

  @override
  String get settings_cache_clearFailed => 'Clear failed';

  @override
  String get settings_appIcon_selectTitle => 'Choose Icon';

  @override
  String get settings_appIcon_default => 'Default';

  @override
  String get settings_appIcon_dark => 'Dark';

  @override
  String get settings_appIcon_adaptive => 'Adaptive';

  @override
  String get settings_appIcon_hint =>
      'Tip: icon changes may take a moment on some system versions.';

  @override
  String get settings_appIcon_unsupported =>
      'This platform does not support changing the app icon';

  @override
  String get settings_appIcon_failedTitle => 'Failed to Change Icon';

  @override
  String get settings_cardStyle_selectTitle => 'Choose Style';

  @override
  String get settings_cardStyle_terminal => 'Terminal';

  @override
  String get settings_cardStyle_simple => 'Simple';

  @override
  String get panelSettings_title => 'Panel Settings';

  @override
  String get panelSettings_panel => 'Panel';

  @override
  String get panelSettings_security => 'Security';

  @override
  String get panelSettings_alerts => 'Alert Notifications';

  @override
  String get panelSettings_backupAccounts => 'Backup Accounts';

  @override
  String get panelSettings_snapshots => 'Snapshots';

  @override
  String get panelSettings_about => 'About';

  @override
  String get panelSettings_basicInfo => 'Basic Info';

  @override
  String get panelSettings_defaultAccessAddress => 'Default Access Address';

  @override
  String get panelSettings_notSet => 'Not Set';

  @override
  String get panelSettings_defaultAccessAddressPlaceholder =>
      'Enter the default access address';

  @override
  String get panelSettings_panelUsername => 'Panel Username';

  @override
  String get panelSettings_changePanelUsername => 'Change Panel Username';

  @override
  String get panelSettings_newPanelUsernamePlaceholder =>
      'Enter a new panel username';

  @override
  String get panelSettings_panelLoginPassword => 'Panel Login Password';

  @override
  String get panelSettings_changePanelLoginPassword =>
      'Change the panel login password';

  @override
  String get panelSettings_passwordUpdated => 'Password updated';

  @override
  String get panelSettings_passwordUpdateFailed => 'Failed to update password';

  @override
  String get panelSettings_displaySettingsWebOnly =>
      'Display Settings (Web UI Only)';

  @override
  String get panelSettings_theme => 'Theme';

  @override
  String get panelSettings_themeLight => 'Light';

  @override
  String get panelSettings_themeDark => 'Dark';

  @override
  String get panelSettings_language => 'Language';

  @override
  String get panelSettings_languageZh => 'Chinese';

  @override
  String get panelSettings_languageZhHant => 'Traditional Chinese';

  @override
  String get panelSettings_languageJa => 'Japanese';

  @override
  String get panelSettings_languageMs => 'Malay';

  @override
  String get panelSettings_languagePtBr => 'Portuguese (Brazil)';

  @override
  String get panelSettings_tabNavigation => 'Tab Navigation';

  @override
  String get panelSettings_tabNavigationSubtitle =>
      'Show page tabs in the top bar';

  @override
  String get panelSettings_securitySettings => 'Security Settings';

  @override
  String get panelSettings_sessionTimeout => 'Session Timeout';

  @override
  String get panelSettings_neverTimeout => 'Never timeout';

  @override
  String panelSettings_secondsValue(String seconds) {
    return '$seconds s';
  }

  @override
  String get panelSettings_sessionTimeoutPlaceholder => '0 = never timeout';

  @override
  String get panelSettings_sessionTimeoutDescription =>
      'Set the panel login session timeout in seconds. Use 0 to never timeout.';

  @override
  String get panelSettings_previewProgram => 'Preview Program';

  @override
  String get panelSettings_previewProgramSubtitle =>
      'Get preview versions of 1Panel';

  @override
  String get panelSettings_advancedSettings => 'Advanced Settings';

  @override
  String get panelSettings_apiInterface => 'API Interface';

  @override
  String get panelSettings_enabled => 'Enabled';

  @override
  String get panelSettings_disabled => 'Disabled';

  @override
  String get panelSettings_settingUpdated => 'Settings updated';

  @override
  String get panelSettings_updateFailed => 'Update failed';

  @override
  String get panelSettings_saveFailed => 'Save failed';

  @override
  String get panelSettings_accessControl => 'Access Control';

  @override
  String get panelSettings_panelPort => 'Panel Port';

  @override
  String get panelSettings_portPlaceholder => 'Enter a port number (1-65535)';

  @override
  String get panelSettings_bindAddress => 'Bind Address';

  @override
  String get panelSettings_securityEntrance => 'Security Entrance';

  @override
  String get panelSettings_securityEntrancePlaceholder =>
      '5-116 letters or digits';

  @override
  String get panelSettings_securityEntranceLengthError =>
      'Length must be 5-116 characters';

  @override
  String get panelSettings_ipWhitelist => 'IP Whitelist';

  @override
  String get panelSettings_unrestricted => 'Unrestricted';

  @override
  String get panelSettings_ipWhitelistPlaceholder => 'One IP or CIDR per line';

  @override
  String get panelSettings_bindDomain => 'Bind Domain';

  @override
  String get panelSettings_closeSsl => 'Disable SSL';

  @override
  String get panelSettings_panelSsl => 'Panel SSL';

  @override
  String get panelSettings_closeSslContent =>
      'After disabling SSL, the panel will be accessed over HTTP. Continue?';

  @override
  String get panelSettings_sslDisabled => 'SSL disabled';

  @override
  String get panelSettings_operationFailed => 'Operation failed';

  @override
  String get panelSettings_securityPolicy => 'Security Policy';

  @override
  String get panelSettings_passwordExpiration => 'Password Expiration';

  @override
  String get panelSettings_neverExpires => 'Never expires';

  @override
  String panelSettings_daysValue(String days) {
    return '$days days';
  }

  @override
  String get panelSettings_passwordExpirationDays => 'Password Expiration Days';

  @override
  String get panelSettings_passwordExpirationPlaceholder => '0 = never expires';

  @override
  String get panelSettings_passwordComplexity => 'Password Complexity Check';

  @override
  String get panelSettings_passwordComplexitySubtitle =>
      'Require uppercase and lowercase letters, numbers, and special characters';

  @override
  String get panelSettings_mfa => 'MFA';

  @override
  String get panelSettings_mfaTwoFactor => 'MFA Two-Factor Authentication';

  @override
  String get panelSettings_closeMfa => 'Disable MFA';

  @override
  String get panelSettings_closeMfaContent =>
      'Disabling two-factor authentication reduces account security. Continue?';

  @override
  String get panelSettings_other => 'Other';

  @override
  String get panelSettings_noAuthResponseCode =>
      'Unauthenticated Response Code';

  @override
  String get panelSettings_alertList => 'Alert Rules';

  @override
  String get panelSettings_alertLogs => 'Alert Logs';

  @override
  String get panelSettings_noAlertRules => 'No alert rules';

  @override
  String panelSettings_alertCardMeta(String type, String method) {
    return 'Type: $type  Method: $method';
  }

  @override
  String get panelSettings_deleted => 'Deleted';

  @override
  String get panelSettings_deleteFailed => 'Delete failed';

  @override
  String get panelSettings_logsCleared => 'Logs cleared';

  @override
  String get panelSettings_clearFailed => 'Clear failed';

  @override
  String get panelSettings_clearLogs => 'Clear Logs';

  @override
  String get panelSettings_noLogs => 'No logs';

  @override
  String get panelSettings_notificationMethods => 'Notification Methods';

  @override
  String get panelSettings_emailNotification => 'Email Notification';

  @override
  String get panelSettings_smtpSubtitle => 'Configure SMTP email delivery';

  @override
  String get panelSettings_webhookSubtitle => 'Configure Webhook';

  @override
  String get panelSettings_weCom => 'WeCom';

  @override
  String get panelSettings_dingTalk => 'DingTalk';

  @override
  String get panelSettings_feishu => 'Feishu';

  @override
  String get panelSettings_emailTodo => 'Email configuration is coming soon';

  @override
  String get panelSettings_weComTodo => 'WeCom configuration is coming soon';

  @override
  String get panelSettings_dingTalkTodo =>
      'DingTalk configuration is coming soon';

  @override
  String get panelSettings_feishuTodo => 'Feishu configuration is coming soon';

  @override
  String get panelSettings_barkTodo => 'Bark configuration is coming soon';

  @override
  String get panelSettings_noBackupAccounts => 'No backup accounts';

  @override
  String get panelSettings_addBackupAccount => 'Add Backup Account';

  @override
  String get panelSettings_editBackupAccount => 'Edit Backup Account';

  @override
  String get panelSettings_tokenRefreshed => 'Token refreshed';

  @override
  String get panelSettings_refreshFailed => 'Refresh failed';

  @override
  String get panelSettings_deleteBackupAccount => 'Delete Backup Account';

  @override
  String panelSettings_deleteBackupAccountConfirm(String name) {
    return 'Delete backup account \"$name\"?';
  }

  @override
  String get panelSettings_confirmDelete => 'Delete';

  @override
  String get panelSettings_authInfo => 'Authentication';

  @override
  String get panelSettings_storageSettings => 'Storage Settings';

  @override
  String get panelSettings_name => 'Name';

  @override
  String get panelSettings_namePlaceholder => 'Enter account name';

  @override
  String get panelSettings_type => 'Type';

  @override
  String get panelSettings_address => 'Address';

  @override
  String get panelSettings_serverAddress => 'Server address';

  @override
  String get panelSettings_username => 'Username';

  @override
  String get panelSettings_sshUsername => 'SSH username';

  @override
  String get panelSettings_password => 'Password';

  @override
  String get panelSettings_sshPassword => 'SSH password';

  @override
  String get panelSettings_privateKey => 'Private Key';

  @override
  String get panelSettings_privateKeyPlaceholder => 'Paste SSH private key';

  @override
  String get panelSettings_keyPassphrase => 'Key Passphrase';

  @override
  String get panelSettings_keyPassphrasePlaceholder =>
      'Private key passphrase (optional)';

  @override
  String get panelSettings_webdavAddress => 'WebDAV server address';

  @override
  String get panelSettings_webdavUsername => 'WebDAV username';

  @override
  String get panelSettings_webdavPassword => 'WebDAV password';

  @override
  String get panelSettings_operator => 'Operator';

  @override
  String get panelSettings_upyunOperatorName => 'UPYUN operator name';

  @override
  String get panelSettings_operatorPassword => 'Operator password';

  @override
  String get panelSettings_domain => 'Domain';

  @override
  String get panelSettings_refreshTokenPlaceholder =>
      'Refresh Token from authorization';

  @override
  String get panelSettings_aliyunRefreshToken => 'Aliyun Drive Refresh Token';

  @override
  String get panelSettings_driveIdPlaceholder => 'Drive ID (drive_id)';

  @override
  String get panelSettings_cnRegion => '21Vianet (China)';

  @override
  String get panelSettings_endpointWithScheme =>
      'Endpoint address (include scheme)';

  @override
  String get panelSettings_authMode => 'Authentication Method';

  @override
  String get panelSettings_authPassword => 'Password';

  @override
  String get panelSettings_authKey => 'Key';

  @override
  String get panelSettings_backupPath => 'Backup Path';

  @override
  String get panelSettings_remoteBackupDirectory => 'Remote backup directory';

  @override
  String get panelSettings_optional => 'Optional';

  @override
  String get panelSettings_serviceName => 'Service Name';

  @override
  String get panelSettings_selectBucket => 'Select Bucket';

  @override
  String get panelSettings_loadBucket => 'Load Bucket';

  @override
  String get panelSettings_testConnection => 'Test Connection';

  @override
  String get panelSettings_saveSettings => 'Save Settings';

  @override
  String get panelSettings_connectionSucceeded => 'Connection succeeded';

  @override
  String get panelSettings_connectionFailed => 'Connection failed';

  @override
  String get panelSettings_bucketNotFound => 'No Bucket found';

  @override
  String get panelSettings_enterAccountName => 'Enter an account name';

  @override
  String get panelSettings_enterRefreshToken => 'Enter Refresh Token';

  @override
  String get panelSettings_enterAuthInfo => 'Enter authentication information';

  @override
  String get panelSettings_added => 'Added';

  @override
  String get panelSettings_updated => 'Updated';

  @override
  String get panelSettings_noSnapshots => 'No snapshots';

  @override
  String get panelSettings_createSnapshot => 'Create Snapshot';

  @override
  String get panelSettings_importSnapshot => 'Import Snapshot';

  @override
  String panelSettings_snapshotVersion(String version) {
    return 'Version: $version';
  }

  @override
  String get panelSettings_log => 'Log';

  @override
  String get panelSettings_restore => 'Restore';

  @override
  String panelSettings_snapshotLogTitle(String name) {
    return 'Snapshot: $name';
  }

  @override
  String get panelSettings_restoreSnapshot => 'Restore Snapshot';

  @override
  String panelSettings_restoreSnapshotConfirm(String name) {
    return 'Restore snapshot \"$name\"? This may take some time.';
  }

  @override
  String get panelSettings_snapshotRestoreStarted => 'Snapshot restore started';

  @override
  String get panelSettings_restoreFailed => 'Restore failed';

  @override
  String get panelSettings_deleteSnapshot => 'Delete Snapshot';

  @override
  String panelSettings_deleteSnapshotConfirm(String name) {
    return 'Delete snapshot \"$name\"?';
  }

  @override
  String get panelSettings_baseInfo => 'Basic Info';

  @override
  String get panelSettings_remarkDescription => 'Remark';

  @override
  String get panelSettings_compressionPassword => 'Compression Password';

  @override
  String get panelSettings_storageAccounts => 'Storage Accounts';

  @override
  String get panelSettings_dataContent => 'Data Content';

  @override
  String get panelSettings_extraOptions => 'Extra Options';

  @override
  String get panelSettings_dockerConfig => 'Docker Configuration';

  @override
  String get panelSettings_monitorData => 'Monitor Data';

  @override
  String get panelSettings_logFiles => 'Log Files';

  @override
  String get panelSettings_operationLog => 'Operation Log';

  @override
  String get panelSettings_loginLog => 'Login Log';

  @override
  String get panelSettings_systemLog => 'System Log';

  @override
  String get panelSettings_taskLog => 'Task Log';

  @override
  String get panelSettings_addBackupAccountFirst =>
      'Add a backup account in settings first';

  @override
  String get panelSettings_downloadNode => 'Download Node';

  @override
  String get panelSettings_appData => 'App Data';

  @override
  String get panelSettings_panelData => 'Panel Data';

  @override
  String get panelSettings_backupData => 'Backup Data';

  @override
  String get panelSettings_timeout => 'Timeout';

  @override
  String get panelSettings_chooseAtLeastOneSourceAccount =>
      'Choose at least one source account';

  @override
  String get panelSettings_chooseDownloadAccount => 'Choose a download account';

  @override
  String get panelSettings_chooseAtLeastOneBackupAccount =>
      'Choose at least one backup account';

  @override
  String get panelSettings_chooseDownloadAccountTitle =>
      'Choose Download Account';

  @override
  String get panelSettings_second => 'Seconds';

  @override
  String get panelSettings_minute => 'Minutes';

  @override
  String get panelSettings_hour => 'Hours';

  @override
  String get panelSettings_snapshotCreateStarted => 'Snapshot creation started';

  @override
  String get panelSettings_createFailed => 'Create failed';

  @override
  String get panelSettings_syncSnapshot => 'Sync Snapshot';

  @override
  String get panelSettings_importSnapshotHelp =>
      'Import existing snapshot files from a backup account into panel management. Choose the backup account that stores snapshot files.';

  @override
  String get panelSettings_noBackupAccountsAddFirst =>
      'No backup accounts. Add one first.';

  @override
  String get panelSettings_selectBackupAccount => 'Choose Backup Account';

  @override
  String get panelSettings_sync => 'Sync';

  @override
  String get panelSettings_syncStarted => 'Sync started';

  @override
  String get panelSettings_syncFailed => 'Sync failed';

  @override
  String get panelSettings_changePassword => 'Change Password';

  @override
  String get panelSettings_currentPassword => 'Current Password';

  @override
  String get panelSettings_currentPasswordPlaceholder =>
      'Enter the current password';

  @override
  String get panelSettings_newPassword => 'New Password';

  @override
  String get panelSettings_newPasswordPlaceholder => 'Enter a new password';

  @override
  String get panelSettings_confirmNewPassword => 'Confirm New Password';

  @override
  String get panelSettings_confirmNewPasswordPlaceholder =>
      'Enter the new password again';

  @override
  String get panelSettings_general => 'General';

  @override
  String get panelSettings_enableApi => 'Enable API';

  @override
  String get panelSettings_enableApiSubtitle =>
      'Allow access to panel features through the API';

  @override
  String get panelSettings_credentials => 'Credentials';

  @override
  String get panelSettings_apiKey => 'API Key';

  @override
  String get panelSettings_keyCopied => 'Key copied';

  @override
  String get panelSettings_resetKey => 'Reset Key';

  @override
  String get panelSettings_resetKeySubtitle =>
      'Generate a new API Key. The old key will become invalid.';

  @override
  String get panelSettings_apiWhitelistPlaceholder =>
      'Separate multiple IPs with line breaks. Empty means unrestricted.';

  @override
  String get panelSettings_validityMinutes => 'Validity (minutes)';

  @override
  String get panelSettings_apiValiditySubtitle =>
      'Valid time window for API requests';

  @override
  String get panelSettings_minutesPlaceholder => 'Minutes';

  @override
  String get panelSettings_apiSecurityTip =>
      'Tip: after enabling the API, set an IP whitelist to improve security.';

  @override
  String get panelSettings_resetApiKeyTitle => 'Reset API Key?';

  @override
  String get panelSettings_resetApiKeyContent =>
      'After resetting, programs using the old key will no longer be able to access the API. Continue?';

  @override
  String get panelSettings_confirmReset => 'Reset';

  @override
  String get panelSettings_keyReset => 'Key reset';

  @override
  String get panelSettings_resetFailed => 'Reset failed';

  @override
  String get panelSettings_aboutProductSubtitle =>
      'Modern Linux server operations management panel';

  @override
  String get panelSettings_links => 'Links';

  @override
  String get panelSettings_officialDocs => 'Official Docs';

  @override
  String get panelSettings_community => 'Community';

  @override
  String get panelSettings_communitySubtitle => 'Join community discussions';

  @override
  String get panelSettings_feedback => 'Feedback';

  @override
  String get panelSettings_feedbackSubtitle => 'Submit an Issue';

  @override
  String get panelSettings_client => 'Client';

  @override
  String get panelSettings_clientSubtitle =>
      'Third-party iOS management client';

  @override
  String get cronjobs_title => 'Cron Jobs';

  @override
  String get cronjobs_searchPlaceholder => 'Search cron jobs...';

  @override
  String get cronjobs_emptyTitle => 'No cron jobs';

  @override
  String get cronjobs_emptySubtitle =>
      'Create cron jobs to automate operations tasks';

  @override
  String get cronjobs_newTask => 'New Task';

  @override
  String get cronjobs_noSearchResults => 'No Results';

  @override
  String cronjobs_noSearchResultsSubtitle(String query) {
    return 'No cron jobs match \"$query\"';
  }

  @override
  String get cronjobs_typeShell => 'Shell Script';

  @override
  String get cronjobs_typeApp => 'App Backup';

  @override
  String get cronjobs_typeWebsite => 'Website Backup';

  @override
  String get cronjobs_typeDatabase => 'Database Backup';

  @override
  String get cronjobs_typeDirectory => 'Directory Backup';

  @override
  String get cronjobs_typeLog => 'Log Backup';

  @override
  String get cronjobs_typeCurl => 'URL Request';

  @override
  String get cronjobs_typeCutWebsiteLog => 'Log Rotation';

  @override
  String get cronjobs_typeClean => 'Disk Cleanup';

  @override
  String get cronjobs_typeSnapshot => 'System Snapshot';

  @override
  String get cronjobs_typeNtp => 'Time Sync';

  @override
  String get cronjobs_typeSyncIpGroup => 'IP Sync';

  @override
  String get cronjobs_typeCleanLog => 'Log Cleanup';

  @override
  String get cronjobs_statusEnabled => 'Enabled';

  @override
  String get cronjobs_statusDisabled => 'Disabled';

  @override
  String get cronjobs_statusPending => 'Pending';

  @override
  String cronjobs_retentionCopies(int count) {
    return 'Keep $count copies';
  }

  @override
  String get cronjobs_notExecutedYet => 'Not executed yet';

  @override
  String get cronjobs_runSuccess => 'Run succeeded';

  @override
  String get cronjobs_runFailed => 'Run failed';

  @override
  String get cronjobs_statusSuccess => 'Success';

  @override
  String get cronjobs_statusFailed => 'Failed';

  @override
  String get cronjobs_statusWaiting => 'Waiting';

  @override
  String get cronjobs_statusUnexecuted => 'Not Executed';

  @override
  String cronjobs_recordsTitle(String name) {
    return '$name - Execution Records';
  }

  @override
  String get cronjobs_noRecordsTitle => 'No execution records';

  @override
  String get cronjobs_noRecordsSubtitle =>
      'This task has not been executed yet';

  @override
  String get cronjobs_taskRunSuccess => 'Task executed successfully';

  @override
  String get cronjobs_noDetails => 'No details';

  @override
  String get cronjobs_executionLog => 'Execution Log';

  @override
  String get cronjobs_management => 'Task Management';

  @override
  String get cronjobs_enable => 'Enable';

  @override
  String get cronjobs_disable => 'Disable';

  @override
  String get cronjobs_enableSubtitle => 'Enable this cron job';

  @override
  String get cronjobs_disableSubtitle => 'Pause this cron job';

  @override
  String get cronjobs_runOnce => 'Run Now';

  @override
  String get cronjobs_runOnceSubtitle => 'Trigger one manual execution';

  @override
  String get cronjobs_editSubtitle => 'Modify cron job configuration';

  @override
  String get cronjobs_records => 'Execution Records';

  @override
  String get cronjobs_recordsSubtitle =>
      'View historical execution records and logs';

  @override
  String get cronjobs_dangerZone => 'Danger Zone';

  @override
  String get cronjobs_deleteSubtitle => 'Delete this cron job';

  @override
  String get cronjobs_deleteTitle => 'Delete Cron Job';

  @override
  String cronjobs_deleteConfirm(String name) {
    return 'Delete cron job \"$name\"?';
  }

  @override
  String get cronjobs_enableTitle => 'Enable Cron Job';

  @override
  String get cronjobs_disableTitle => 'Disable Cron Job';

  @override
  String get cronjobs_enableConfirm => 'Enable this cron job?';

  @override
  String get cronjobs_disableConfirm => 'Disable this cron job?';

  @override
  String get cronjobs_enableSucceeded => 'Enabled';

  @override
  String get cronjobs_disableSucceeded => 'Disabled';

  @override
  String get cronjobs_enableFailed => 'Enable failed';

  @override
  String get cronjobs_disableFailed => 'Disable failed';

  @override
  String get cronjobs_runTriggered => 'Execution triggered';

  @override
  String get cronjobs_runTriggerFailed => 'Trigger failed';

  @override
  String get cronjobs_deleteSucceeded => 'Deleted';

  @override
  String get cronjobs_deleteFailed => 'Delete failed';

  @override
  String cronjobs_everyMinutes(String n) {
    return 'Every $n minutes';
  }

  @override
  String cronjobs_everySeconds(String n) {
    return 'Every $n seconds';
  }

  @override
  String cronjobs_everyHourAtMinute(String minute) {
    return 'Every hour at minute $minute';
  }

  @override
  String cronjobs_dailyAt(String time) {
    return 'Daily at $time';
  }

  @override
  String cronjobs_everyHours(String n) {
    return 'Every $n hours';
  }

  @override
  String cronjobs_weeklyAt(String weekday, String time) {
    return 'Every $weekday at $time';
  }

  @override
  String cronjobs_monthlyAt(String day, String time) {
    return 'Monthly on day $day at $time';
  }

  @override
  String cronjobs_everyDaysAt(String n, String time) {
    return 'Every $n days at $time';
  }

  @override
  String get cronjobs_weekdaySun => 'Sunday';

  @override
  String get cronjobs_weekdayMon => 'Monday';

  @override
  String get cronjobs_weekdayTue => 'Tuesday';

  @override
  String get cronjobs_weekdayWed => 'Wednesday';

  @override
  String get cronjobs_weekdayThu => 'Thursday';

  @override
  String get cronjobs_weekdayFri => 'Friday';

  @override
  String get cronjobs_weekdaySat => 'Saturday';

  @override
  String cronjobs_weekdayFallback(String day) {
    return 'Day $day';
  }

  @override
  String get cronjobs_formCreateTitle => 'New Cron Job';

  @override
  String get cronjobs_formEditTitle => 'Edit Cron Job';

  @override
  String get cronjobs_basicInfo => 'Basic Info';

  @override
  String get cronjobs_taskName => 'Task Name';

  @override
  String get cronjobs_schedule => 'Schedule';

  @override
  String get cronjobs_cronExpression => 'Cron Expression';

  @override
  String get cronjobs_customExpression => 'Custom Expression';

  @override
  String get cronjobs_executionSettings => 'Execution Settings';

  @override
  String get cronjobs_retainCopies => 'Retain Copies';

  @override
  String get cronjobs_retryTimes => 'Retry Times';

  @override
  String get cronjobs_ignoreErrors => 'Ignore Errors';

  @override
  String get cronjobs_scriptConfig => 'Script Configuration';

  @override
  String get cronjobs_runInContainer => 'Run in Container';

  @override
  String get cronjobs_container => 'Container';

  @override
  String get cronjobs_chooseContainer => 'Choose Container';

  @override
  String get cronjobs_customCommand => 'Custom Command';

  @override
  String get cronjobs_command => 'Command';

  @override
  String get cronjobs_customExecutor => 'Custom Executor';

  @override
  String get cronjobs_executor => 'Executor';

  @override
  String get cronjobs_runUser => 'Run User';

  @override
  String get cronjobs_scriptSource => 'Script Source';

  @override
  String get cronjobs_scriptSourceManual => 'Manual Edit';

  @override
  String get cronjobs_scriptSourceLibrary => 'Script Library';

  @override
  String get cronjobs_scriptSourceFilePath => 'File Path';

  @override
  String get cronjobs_scriptContent => 'Script Content';

  @override
  String get cronjobs_editScript => 'Edit Script';

  @override
  String get cronjobs_tapToEditScript => 'Tap to edit script...';

  @override
  String get cronjobs_script => 'Script';

  @override
  String get cronjobs_chooseScript => 'Choose Script';

  @override
  String get cronjobs_scriptFile => 'Script File';

  @override
  String get cronjobs_chooseFile => 'Choose File';

  @override
  String get cronjobs_chooseScriptFile => 'Choose Script File';

  @override
  String get cronjobs_app => 'App';

  @override
  String get cronjobs_website => 'Website';

  @override
  String get cronjobs_allWebsites => 'All websites (all)';

  @override
  String get cronjobs_databaseType => 'Database Type';

  @override
  String get cronjobs_database => 'Database';

  @override
  String get cronjobs_backupArgs => 'Backup Arguments';

  @override
  String get cronjobs_mysqlArgsHelp => 'Backup arguments for MySQL databases';

  @override
  String get cronjobs_backupType => 'Backup Type';

  @override
  String get cronjobs_directory => 'Directory';

  @override
  String get cronjobs_file => 'File';

  @override
  String get cronjobs_backupDirectory => 'Backup Directory';

  @override
  String get cronjobs_chooseDirectory => 'Choose Directory';

  @override
  String get cronjobs_addFile => 'Add File';

  @override
  String get cronjobs_addUrl => 'Add URL';

  @override
  String get cronjobs_includeImages => 'Include Images';

  @override
  String get cronjobs_excludeApps => 'Exclude Apps';

  @override
  String get cronjobs_cleanScope => 'Cleanup Scope';

  @override
  String get cronjobs_websiteLogs => 'Website Logs';

  @override
  String get cronjobs_backupSettings => 'Backup Settings';

  @override
  String get cronjobs_compressionPassword => 'Compression Password';

  @override
  String get cronjobs_emptyMeansNoEncryption => 'Leave empty for no encryption';

  @override
  String get cronjobs_backupAccount => 'Backup Account';

  @override
  String get cronjobs_chooseBackupAccount => 'Choose Backup Account';

  @override
  String get cronjobs_downloadAccount => 'Download Account';

  @override
  String get cronjobs_chooseDownloadAccount => 'Choose Download Account';

  @override
  String get cronjobs_exclusionRules => 'Exclusion Rules';

  @override
  String get cronjobs_addExclusionRule => 'Add Exclusion Rule';

  @override
  String get cronjobs_exclusionRulePlaceholder => 'e.g. *.log, .git';

  @override
  String get cronjobs_taskType => 'Task Type';

  @override
  String get cronjobs_frequency => 'Frequency';

  @override
  String get cronjobs_chooseWeekday => 'Choose Weekday';

  @override
  String get cronjobs_chooseDate => 'Choose Date';

  @override
  String get cronjobs_intervalDays => 'Interval Days';

  @override
  String get cronjobs_executionTime => 'Execution Time';

  @override
  String get cronjobs_chooseTime => 'Choose Time';

  @override
  String get cronjobs_intervalMinutes => 'Interval Minutes';

  @override
  String get cronjobs_intervalHours => 'Interval Hours';

  @override
  String get cronjobs_timeout => 'Timeout';

  @override
  String get cronjobs_seconds => 'Seconds';

  @override
  String cronjobs_selectLabel(String label) {
    return 'Choose $label';
  }

  @override
  String get cronjobs_specPerMonth => 'Monthly';

  @override
  String get cronjobs_specPerWeek => 'Weekly';

  @override
  String get cronjobs_specPerDay => 'Daily';

  @override
  String get cronjobs_specPerHour => 'Hourly';

  @override
  String get cronjobs_specPerNDay => 'Every N Days';

  @override
  String get cronjobs_specPerNHour => 'Every N Hours';

  @override
  String get cronjobs_specPerNMinute => 'Every N Minutes';

  @override
  String get appStore_title => 'App Store';

  @override
  String get appStore_searchPlaceholder => 'Search apps...';

  @override
  String get appStore_searchApps => 'Search Apps';

  @override
  String get appStore_syncRemoteApps => 'Update Remote Apps';

  @override
  String get appStore_syncRemoteAppsFailed => 'Failed to update remote apps';

  @override
  String get appStore_syncLocalApps => 'Sync Local Apps';

  @override
  String get appStore_syncLocalAppsFailed => 'Failed to sync local apps';

  @override
  String get appStore_viewIgnoredApps => 'View Ignored Apps';

  @override
  String get appStore_noMatchingApps => 'No matching apps';

  @override
  String get appStore_loadAllAppsFailed => 'Failed to load all apps';

  @override
  String get appStore_allFilter => 'All';

  @override
  String get appStore_noMatchingInstalledApps => 'No matching installed apps';

  @override
  String get appStore_noInstalledApps => 'No installed apps';

  @override
  String get appStore_loadStoreFailed => 'Failed to load App Store';

  @override
  String get appStore_noUpdatableApps => 'No updates available';

  @override
  String get appStore_noRelatedApps => 'No related apps found';

  @override
  String get appStore_allAppsUpToDate => 'All apps are already up to date';

  @override
  String get appStore_tryAnotherSearch => 'Try another search term';

  @override
  String get appStore_loadMoreFailed => 'Failed to load more';

  @override
  String get appStore_searchFailed => 'App search failed';

  @override
  String get appStore_addedFavorite => 'Added to favorites';

  @override
  String get appStore_removedFavorite => 'Removed from favorites';

  @override
  String get appStore_operationFailed => 'Operation failed';

  @override
  String get appStore_rebuildStarted => 'Rebuild started';

  @override
  String get appStore_rebuildFailed => 'Rebuild failed';

  @override
  String get appStore_restartSent => 'Restart command sent';

  @override
  String get appStore_restartFailed => 'Restart failed';

  @override
  String get appStore_stopSent => 'Stop command sent';

  @override
  String get appStore_stopFailed => 'Stop failed';

  @override
  String get appStore_startSent => 'Start command sent';

  @override
  String get appStore_startFailed => 'Start failed';

  @override
  String get appStore_refreshFailed => 'Refresh failed';

  @override
  String get appStore_loadMoreBackupsFailed => 'Failed to load more backups';

  @override
  String get appStore_containerIdFailed => 'Failed to get container id';

  @override
  String get appStore_dockerNotFoundWarning =>
      'Docker container service was not detected. App installation and runtime require Docker.';

  @override
  String get appStore_dockerNotRunningWarning =>
      'Docker container service is not running. App installation and runtime require Docker.';

  @override
  String get appStore_dockerAbnormalWarning =>
      'Docker container service status is abnormal. App installation and runtime may be unavailable.';

  @override
  String get appStore_rebuildApp => 'Rebuild App';

  @override
  String appStore_rebuildConfirm(String name) {
    return 'Rebuild \"$name\"? The app container will be recreated and service may be interrupted.';
  }

  @override
  String get appStore_rebuild => 'Rebuild';

  @override
  String get appStore_restartApp => 'Restart App';

  @override
  String appStore_restartConfirm(String name) {
    return 'Restart \"$name\"? Service will be briefly interrupted.';
  }

  @override
  String get appStore_restart => 'Restart';

  @override
  String get appStore_stopApp => 'Stop App';

  @override
  String appStore_stopConfirm(String name) {
    return 'Stop \"$name\"?';
  }

  @override
  String get appStore_stop => 'Stop';

  @override
  String get appStore_startApp => 'Start App';

  @override
  String appStore_startConfirm(String name) {
    return 'Start \"$name\"?';
  }

  @override
  String get appStore_start => 'Start';

  @override
  String get appStore_uninstallApp => 'Uninstall App';

  @override
  String appStore_uninstallConfirm(String name) {
    return 'Uninstall \"$name\" from the server?';
  }

  @override
  String get appStore_confirmUninstall => 'Uninstall';

  @override
  String get appStore_forceUninstall => 'Force uninstall';

  @override
  String get appStore_forceUninstallDescription =>
      'Force deletion ignores errors during deletion and finally removes metadata';

  @override
  String get appStore_deleteBackups => 'Delete backups';

  @override
  String get appStore_deleteBackupsDescription =>
      'Also delete all backup files associated with this app';

  @override
  String get appStore_deleteImages => 'Delete images';

  @override
  String get appStore_deleteImagesDescription =>
      'Delete images related to this app. Failed deletion tasks will not stop the process.';

  @override
  String appStore_uninstallingTitle(String name) {
    return 'Uninstalling $name';
  }

  @override
  String appStore_uninstallRequestFailed(String error) {
    return 'Failed to submit uninstall request: $error';
  }

  @override
  String get appStore_selectInstallVersion => 'Choose Install Version';

  @override
  String appStore_currentVersion(String version) {
    return 'Current version: $version';
  }

  @override
  String get appStore_newVersionFound => 'New version found';

  @override
  String get appStore_ignore => 'Ignore';

  @override
  String get appStore_update => 'Update';

  @override
  String get appStore_ignoreUpdate => 'Ignore Update';

  @override
  String get appStore_ignoreUpdateSubtitle => 'Choose the update ignore scope';

  @override
  String get appStore_confirmIgnore => 'Ignore';

  @override
  String get appStore_ignoreAllVersions => 'Ignore all future versions';

  @override
  String get appStore_ignoreSpecificVersion => 'Ignore a specific version';

  @override
  String appStore_fetchVersionsFailed(String error) {
    return 'Failed to fetch versions: $error';
  }

  @override
  String get appStore_updateIgnored => 'Update ignored';

  @override
  String appStore_operationFailedWithError(String error) {
    return 'Operation failed: $error';
  }

  @override
  String get appStore_appInfo => 'App Info';

  @override
  String get appStore_installDirectory => 'Install Directory';

  @override
  String get appStore_directoryUnavailable => 'Directory unavailable';

  @override
  String get appStore_backup => 'Backup';

  @override
  String get appStore_runBackup => 'Run Backup';

  @override
  String get appStore_runBackupSubtitle => 'Create a backup of the current app';

  @override
  String get appStore_runtimeControl => 'Runtime Control';

  @override
  String get appStore_rebuildSubtitle => 'Recreate app containers';

  @override
  String get appStore_restartSubtitle => 'Restart app services';

  @override
  String get appStore_stopRunningApp => 'Stop App';

  @override
  String get appStore_enableApp => 'Start App';

  @override
  String get appStore_stopRunningSubtitle => 'Stop the currently running app';

  @override
  String get appStore_startCurrentSubtitle => 'Start the current app';

  @override
  String get appStore_maintenance => 'Maintenance';

  @override
  String get appStore_modifyParams => 'Modify Parameters';

  @override
  String get appStore_modifyParamsSubtitle => 'Adjust app install parameters';

  @override
  String get appStore_runTerminal => 'Terminal';

  @override
  String get appStore_enterContainer => 'Enter app container';

  @override
  String get appStore_viewLogs => 'View Logs';

  @override
  String get appStore_viewLogsSubtitle => 'View app runtime logs';

  @override
  String get appStore_installLog => 'Install Log';

  @override
  String get appStore_installLogSubtitle =>
      'View app install and deployment records';

  @override
  String appStore_installLogTitle(String name) {
    return 'Install Log: $name';
  }

  @override
  String get appStore_uninstallSubtitle => 'Remove app and related resources';

  @override
  String get appStore_noDescription => 'No description';

  @override
  String get appStore_fetchVersionInfoFailed =>
      'Failed to fetch version information';

  @override
  String get appStore_install => 'Install';

  @override
  String get appStore_installed => 'Installed';

  @override
  String get appStore_notInstalled => 'Not Installed';

  @override
  String get appStore_loadDetailsFailed => 'Failed to load details';

  @override
  String get appStore_intro => 'App Introduction';

  @override
  String get appStore_appKey => 'App Key';

  @override
  String get appStore_architectures => 'Architectures';

  @override
  String get appStore_gpuSupport => 'GPU Support';

  @override
  String get appStore_supported => 'Supported';

  @override
  String get appStore_notSupported => 'Not Supported';

  @override
  String get appStore_latestVersion => 'Latest Version';

  @override
  String get appStore_officialWebsite => 'Website';

  @override
  String get appStore_documentation => 'Docs';

  @override
  String get appStore_statusRunning => 'Running';

  @override
  String get appStore_statusRebuilding => 'Rebuilding';

  @override
  String get appStore_statusStopped => 'Stopped';

  @override
  String get appStore_statusError => 'Error';

  @override
  String appStore_portNotConfigured(String label) {
    return '$label not configured';
  }

  @override
  String get appStore_installedUnknown => 'Installed: Unknown';

  @override
  String get appStore_installedToday => 'Installed: Today';

  @override
  String appStore_installedDays(int days) {
    return 'Installed: $days days';
  }

  @override
  String appStore_loadIgnoredFailed(String error) {
    return 'Failed to load ignored apps: $error';
  }

  @override
  String get appStore_cancelIgnored => 'Ignore cancelled';

  @override
  String appStore_cancelIgnoreFailed(String error) {
    return 'Failed to cancel ignore: $error';
  }

  @override
  String get appStore_ignoredApps => 'Ignored Apps';

  @override
  String get appStore_noIgnoredApps => 'No ignored apps';

  @override
  String get appStore_ignoredAllVersions => 'Ignoring all versions';

  @override
  String appStore_ignoredVersion(String version) {
    return 'Ignoring version: $version';
  }

  @override
  String get appStore_cancelIgnore => 'Cancel Ignore';

  @override
  String appStore_getConfigFailed(String error) {
    return 'Failed to get configuration: $error';
  }

  @override
  String appStore_updateConfigFailed(String error) {
    return 'Failed to update configuration: $error';
  }

  @override
  String get appStore_settingsUninstall => 'App Uninstall';

  @override
  String get appStore_settingsDeleteBackupLabel =>
      'Uninstall app - delete backups';

  @override
  String get appStore_settingsDeleteBackupSubtitle =>
      'Automatically delete this app\'s backup files when uninstalling';

  @override
  String get appStore_settingsDeleteImageLabel =>
      'Uninstall app - delete images';

  @override
  String get appStore_settingsDeleteImageSubtitle =>
      'Try to delete images related to this app when uninstalling';

  @override
  String get appStore_settingsUpdate => 'App Update';

  @override
  String get appStore_settingsUpgradeBackupLabel =>
      'Back up app before upgrade';

  @override
  String get appStore_settingsUpgradeBackupSubtitle =>
      'Automatically create a backup before app upgrades';

  @override
  String get appStore_settingsInstall => 'App Install';

  @override
  String get appStore_settingsInstallOpenPortLabel =>
      'Allow external port access by default';

  @override
  String get appStore_settingsInstallOpenPortSubtitle =>
      'Allow firewall access to app ports by default during install';

  @override
  String appStore_backupSheetTitle(String name) {
    return '$name Backups';
  }

  @override
  String get appStore_loadBackupsFailed => 'Failed to load backups';

  @override
  String get appStore_createBackupFailed => 'Failed to create backup';

  @override
  String get appStore_noRemark => 'No remark';

  @override
  String get appStore_runDirectory => 'Run Directory';

  @override
  String get appStore_restore => 'Restore';

  @override
  String get appStore_restoreBackup => 'Restore Backup';

  @override
  String get appStore_restoreBackupFailed => 'Failed to restore backup';

  @override
  String get appStore_deleteBackup => 'Delete Backup';

  @override
  String appStore_deleteBackupConfirm(String fileName) {
    return 'Delete backup file $fileName? This action cannot be undone.';
  }

  @override
  String get appStore_deletedBackup => 'Backup deleted';

  @override
  String get appStore_deleteBackupFailed => 'Failed to delete backup';

  @override
  String get appStore_startBackup => 'Start Backup';

  @override
  String get appStore_compressionPasswordOptional =>
      'Compression password (optional)';

  @override
  String get appStore_descriptionOptional => 'Description (optional)';

  @override
  String get appStore_startRestore => 'Start Restore';

  @override
  String get appStore_restorePasswordHint =>
      'Leave blank if the backup has no compression password.';

  @override
  String get appStore_restorePasswordOptional => 'Restore password (optional)';

  @override
  String get appStore_nameRequired => 'Name cannot be empty';

  @override
  String appStore_cpuLimitExceeded(num cpu) {
    return 'CPU limit exceeds system core count ($cpu cores)';
  }

  @override
  String appStore_memoryLimitExceeded(num max) {
    return 'Memory limit exceeds system limit ($max MB)';
  }

  @override
  String appStore_installingApp(String name) {
    return 'Installing $name';
  }

  @override
  String appStore_installRequestFailed(Object error) {
    return 'Install request failed: $error';
  }

  @override
  String get appStore_installApp => 'Install App';

  @override
  String get appStore_loadInstallConfigFailed =>
      'Failed to load install configuration';

  @override
  String get appStore_basicSettings => 'Basic Settings';

  @override
  String get appStore_name => 'Name';

  @override
  String get appStore_appRunNamePlaceholder => 'App runtime name';

  @override
  String get appStore_advancedSettings => 'Advanced Settings';

  @override
  String get appStore_containerName => 'Container Name';

  @override
  String get appStore_autoGeneratedPlaceholder =>
      'Leave blank to generate automatically';

  @override
  String get appStore_externalPortAccess => 'External Port Access';

  @override
  String get appStore_externalPortAccessSubtitle =>
      'Allowing external port access will try to open firewall ports';

  @override
  String get appStore_cpuLimit => 'CPU Limit';

  @override
  String appStore_cpuMaxUnit(num max) {
    return 'cores (max $max)';
  }

  @override
  String get appStore_memoryLimit => 'Memory Limit';

  @override
  String appStore_memoryMaxUnit(num max) {
    return 'MB (max $max)';
  }

  @override
  String get appStore_imageCompose => 'Container Images and Compose';

  @override
  String get appStore_pullImage => 'Pull Image';

  @override
  String get appStore_pullImageSubtitle =>
      'Run docker pull before starting the app';

  @override
  String get appStore_editCompose => 'Edit Compose';

  @override
  String get appStore_editComposeSubtitle =>
      'Enable this to manually adjust Docker Compose configuration';

  @override
  String get appStore_restartPolicy => 'Restart Policy';

  @override
  String get appStore_restartAlways => 'Always restart';

  @override
  String get appStore_restartNo => 'Do not restart';

  @override
  String get appStore_restartOnFailure => 'Restart on failure';

  @override
  String get appStore_restartUnlessStopped => 'Restart unless manually stopped';

  @override
  String get appStore_restartOnFailureHint =>
      'Note: restart when the container exits with a non-zero code, 5 retries by default';

  @override
  String get appStore_confirmUpdate => 'Confirm Update';

  @override
  String get appStore_confirmUpdateSubtitle =>
      'Updating parameters will rebuild the app container and may briefly interrupt service. Continue?';

  @override
  String get appStore_continue => 'Continue';

  @override
  String get appStore_paramsUpdateSuccess =>
      'Parameters updated. App is rebuilding.';

  @override
  String appStore_updateParamsFailed(Object error) {
    return 'Failed to update parameters: $error';
  }

  @override
  String get appStore_loadParamsConfigFailed =>
      'Failed to load parameter configuration';

  @override
  String get appStore_basicParams => 'Basic Parameters';

  @override
  String get appStore_containerDisplayNamePlaceholder =>
      'Container display name';

  @override
  String get appStore_bindHostIp => 'Bind Host IP';

  @override
  String get appStore_defaultEmptyIpPlaceholder => 'Blank by default (0.0.0.0)';

  @override
  String appStore_loadVersionInfoFailed(Object error) {
    return 'Failed to load version information: $error';
  }

  @override
  String appStore_getVersionDetailsFailed(Object error) {
    return 'Failed to get version details: $error';
  }

  @override
  String appStore_updateAppTaskTitle(String name) {
    return 'Update App: $name';
  }

  @override
  String appStore_upgradeTaskFailed(Object error) {
    return 'Failed to submit upgrade task: $error';
  }

  @override
  String get appStore_targetVersion => 'Target Version';

  @override
  String get appStore_upgradeOptions => 'Upgrade Options';

  @override
  String get appStore_backupBeforeUpgrade => 'Back up app before upgrade';

  @override
  String get appStore_backupBeforeUpgradeSubtitle =>
      'If the upgrade fails, the backup will be used for automatic rollback. Check Audit Logs - System Logs for the failure reason.';

  @override
  String get appStore_customCompose => 'Custom docker-compose.yml';

  @override
  String get appStore_customComposeSubtitle =>
      'Use a custom docker-compose.yml file. This may cause app upgrade failure. Avoid it unless necessary.';

  @override
  String get appStore_dockerComposeContent => 'Docker Compose Content';

  @override
  String get appStore_upgradeNow => 'Upgrade Now';

  @override
  String websites_sslExpiresRelative(String time) {
    return '$time expires';
  }

  @override
  String get websites_primaryDomainAliasRequired =>
      'Primary domain and alias are required';

  @override
  String get websites_selectRuntime => 'Select a runtime';

  @override
  String get websites_sslCertificateRequired =>
      'Select a certificate after enabling SSL';

  @override
  String get websites_ftpAccountRequired =>
      'Enter an FTP account after enabling FTP';

  @override
  String get websites_selectPort => 'Select a port';

  @override
  String get websites_selectDatabaseService => 'Select a database service';

  @override
  String get websites_proxyAddressRequired => 'Proxy address is required';

  @override
  String get websites_aliasRequired => 'Alias is required';

  @override
  String get websites_streamPortsRequired => 'Listening port is required';

  @override
  String get websites_backendServerRequired =>
      'At least one backend server is required';

  @override
  String get websites_serverAddressRequired => 'Server address is required';

  @override
  String get websites_databaseNameRequired => 'Enter a database name';

  @override
  String get websites_databaseUsernameRequired => 'Enter a database username';

  @override
  String get websites_databasePasswordRequired => 'Enter a database password';

  @override
  String get websites_createSuccess => 'Created';

  @override
  String websites_runtimeSiteCreated(String alias, String domain) {
    return 'Runtime website $alias ($domain) has been added';
  }

  @override
  String websites_staticSiteCreated(String alias, String domain) {
    return 'Static website $alias ($domain) has been added';
  }

  @override
  String websites_proxySiteCreated(String alias, String domain) {
    return 'Reverse proxy $alias ($domain) has been added';
  }

  @override
  String websites_tunnelSiteCreated(String alias) {
    return 'TCP/UDP proxy $alias has been added';
  }

  @override
  String get websites_createFailed => 'Create failed';

  @override
  String get websites_tryAgainLater => 'Please try again later';

  @override
  String get websites_notice => 'Notice';

  @override
  String get websites_createRuntimeSite => 'New Runtime Website';

  @override
  String get websites_createStaticSite => 'New Static Website';

  @override
  String get websites_createProxySite => 'New Reverse Proxy';

  @override
  String get websites_createTunnelSite => 'New TCP/UDP Proxy';

  @override
  String get websites_basicConfig => 'Basic Configuration';

  @override
  String get websites_primaryDomain => 'Primary Domain';

  @override
  String get websites_alias => 'Alias';

  @override
  String get websites_aliasPlaceholder =>
      'Website directory folder name (cannot be changed after creation)';

  @override
  String websites_relativeToRoot(String path) {
    return 'Relative to root directory: $path/';
  }

  @override
  String get websites_group => 'Group';

  @override
  String get websites_httpPort => 'HTTP Port';

  @override
  String get websites_port => 'Port';

  @override
  String get websites_runtime => 'Runtime';

  @override
  String get websites_createDatabase => 'Create Database';

  @override
  String get websites_databaseService => 'Database Service';

  @override
  String get websites_databaseName => 'Database Name';

  @override
  String get websites_sslAndAccess => 'SSL & Access';

  @override
  String get websites_proxySettings => 'Reverse Proxy Settings';

  @override
  String get websites_protocol => 'Protocol';

  @override
  String get websites_proxyAddress => 'Proxy Address';

  @override
  String get websites_loadBalancingNamePlaceholder =>
      'Load balancing name (cannot be changed after creation)';

  @override
  String get websites_listeningPort => 'Listening Port';

  @override
  String get websites_listeningPortPlaceholder => 'e.g. 3306 or 3306,3307,3308';

  @override
  String get websites_udpMode => 'UDP Mode';

  @override
  String get websites_loadBalancing => 'Load Balancing';

  @override
  String get websites_loadBalancingAlgorithm => 'Load Balancing Algorithm';

  @override
  String get websites_roundRobin => 'Round Robin';

  @override
  String get websites_leastConnections => 'Least Connections';

  @override
  String get websites_statusNormal => 'Normal';

  @override
  String get websites_statusDown => 'Stopped';

  @override
  String get websites_statusBackup => 'Backup';

  @override
  String websites_serverNumber(int index) {
    return 'Server $index';
  }

  @override
  String get websites_weight => 'Weight';

  @override
  String get websites_status => 'Status';

  @override
  String get websites_addServer => 'Add Server';

  @override
  String get websites_add => 'Add';

  @override
  String get websites_proxyRequiredFields =>
      'Name, frontend path, backend proxy address, and backend domain are required';

  @override
  String get websites_proxyUrlInvalid =>
      'Backend proxy address must be a reachable http:// or https:// URL';

  @override
  String get websites_corsOriginsRequired =>
      'Allowed origins are required after enabling CORS';

  @override
  String get websites_serverCacheTimePositive =>
      'Server cache time must be greater than 0';

  @override
  String get websites_browserCacheTimePositive =>
      'Browser cache time must be greater than 0';

  @override
  String get websites_proxyCreated => 'Reverse proxy created';

  @override
  String get websites_proxyUpdated => 'Reverse proxy updated';

  @override
  String get websites_saveFailedCopyDetails =>
      'Save failed (tap to copy details)';

  @override
  String get websites_editReverseProxy => 'Edit Reverse Proxy';

  @override
  String get websites_newReverseProxy => 'New Reverse Proxy';

  @override
  String get websites_name => 'Name';

  @override
  String get websites_proxyNameHint => 'e.g. api-proxy';

  @override
  String get websites_editNameLocked => 'Name cannot be changed in edit mode';

  @override
  String get websites_matchRule => 'Match Rule';

  @override
  String get websites_matchRuleHint =>
      'Leave blank for default, or enter = / ^~ / ~ / ~*';

  @override
  String get websites_matchRuleHelper =>
      'Example: = exact match, ^~ prefix priority, ~ regex match';

  @override
  String get websites_frontendPath => 'Frontend Path';

  @override
  String get websites_frontendPathHint => 'e.g. /api';

  @override
  String get websites_backendProxyAddress => 'Backend Proxy Address';

  @override
  String get websites_backendDomain => 'Backend Domain';

  @override
  String get websites_backendDomainHelper =>
      'Default \$host passes the domain through to the backend';

  @override
  String get websites_cacheSettings => 'Cache Settings';

  @override
  String get websites_serverCacheTime => 'Server Cache Time';

  @override
  String get websites_browserCacheTime => 'Browser Cache Time';

  @override
  String get websites_enableCors => 'Enable CORS';

  @override
  String get websites_allowedOriginsRequired => 'Enter allowed domains';

  @override
  String get websites_corsSaved => 'CORS configuration saved';

  @override
  String get websites_loadCorsConfigFailed =>
      'Failed to load CORS configuration';

  @override
  String get websites_basicSettings => 'Basic Settings';

  @override
  String get websites_enableCorsAccess => 'Enable CORS Access';

  @override
  String get websites_allowOriginsPlaceholder =>
      'Enter allowed domains. * means all';

  @override
  String get websites_allowOriginHint =>
      'Access-Control-Allow-Origin, e.g. * or https://example.com';

  @override
  String get websites_allowMethods => 'Request Methods (allow_methods)';

  @override
  String get websites_allowMethodsHint =>
      'Access-Control-Allow-Methods. Leave blank to allow all methods.';

  @override
  String get websites_allowHeaders => 'Allowed Request Headers (allow_headers)';

  @override
  String get websites_allowHeadersPlaceholder =>
      'Enter custom allowed request headers, separated by commas';

  @override
  String get websites_allowHeadersHint =>
      'Access-Control-Allow-Headers. Leave blank to allow common headers.';

  @override
  String get websites_allowCredentialsCookies => 'Allow Credentials (Cookies)';

  @override
  String get websites_preflightFastResponseHint =>
      'Return 204 directly for OPTIONS preflight requests instead of forwarding to the backend.';

  @override
  String get websites_allowedOrigins => 'Allowed Origins';

  @override
  String get websites_allowedOriginsHint => '* or https://example.com';

  @override
  String get websites_allowedHeaders => 'Allowed Headers';

  @override
  String get websites_allowCredentials => 'Allow Cookies';

  @override
  String get websites_preflightFastResponse =>
      'Fast Preflight Response (OPTIONS 204)';

  @override
  String get websites_textReplacement => 'Text Replacement';

  @override
  String get websites_noReplaceRules => 'No replacement rules';

  @override
  String get websites_notSet => 'Not set';

  @override
  String get websites_neverExpires => 'Never expires';

  @override
  String websites_expiresInYears(int n) {
    return 'Expires in $n years';
  }

  @override
  String websites_expiresInMonths(int n) {
    return 'Expires in $n months';
  }

  @override
  String websites_expiresInDays(int n) {
    return 'Expires in $n days';
  }

  @override
  String websites_expiresInHours(int n) {
    return 'Expires in $n hours';
  }

  @override
  String websites_expiresInMinutes(int n) {
    return 'Expires in $n minutes';
  }

  @override
  String websites_expiredYearsAgo(int n) {
    return 'Expired $n years ago';
  }

  @override
  String websites_expiredMonthsAgo(int n) {
    return 'Expired $n months ago';
  }

  @override
  String websites_expiredDaysAgo(int n) {
    return 'Expired $n days ago';
  }

  @override
  String websites_expiredHoursAgo(int n) {
    return 'Expired $n hours ago';
  }

  @override
  String websites_expiredMinutesAgo(int n) {
    return 'Expired $n minutes ago';
  }

  @override
  String get websites_justExpired => 'Just expired';

  @override
  String get websites_expiringSoon => 'Expiring soon';

  @override
  String get websites_staticWebsite => 'Static Website';

  @override
  String get websites_runtimeWebsite => 'Runtime';

  @override
  String get websites_website => 'Website';

  @override
  String get websites_statusRunning => 'Running';

  @override
  String get websites_statusStopped => 'Stopped';

  @override
  String get websites_statusStarting => 'Starting';

  @override
  String get websites_statusRestarting => 'Restarting';

  @override
  String get websites_statusError => 'Error';

  @override
  String get websites_statusExpired => 'Expired';

  @override
  String get websites_statusPendingApply => 'Pending Apply';

  @override
  String get websites_statusApplying => 'Applying';

  @override
  String get websites_statusApplyFailed => 'Apply Failed';

  @override
  String get websites_statusRestartInterrupted => 'Restart Interrupted';

  @override
  String get websites_unknown => 'Unknown';

  @override
  String get websites_dnsAutoValidation => 'DNS Auto Validation';

  @override
  String get websites_dnsManualValidation => 'DNS Manual Validation';

  @override
  String get websites_manualImport => 'Manual Import';

  @override
  String get websites_selfSignedCertificate => 'Self-Signed Certificate';

  @override
  String get websites_masterNodePush => 'Master Node Push';

  @override
  String get websites_sslCertificate => 'SSL Certificate';

  @override
  String get websites_openBrowserFailed => 'Unable to open external browser';

  @override
  String get websites_unnamedWebsite => 'Unnamed website';

  @override
  String get websites_directoryNotSet => 'Directory not set';

  @override
  String get websites_noRemark => 'No remark';

  @override
  String get websites_sslDisabledTitle => 'SSL Not Enabled';

  @override
  String get websites_sslDisabledMessage =>
      'SSL is not enabled for this website.';

  @override
  String get websites_sslExpiredTitle => 'SSL Expired';

  @override
  String websites_sslExpiredMessage(String time) {
    return 'Certificate $time.';
  }

  @override
  String get websites_sslExpiryUnknown =>
      'Certificate expiry time was not fetched';

  @override
  String get websites_sslEnabledTitle => 'SSL Enabled';

  @override
  String websites_sslEnabledMessage(String time) {
    return 'Certificate $time.';
  }

  @override
  String get websites_enableAntiLeech => 'Enable Anti-Leech';

  @override
  String get websites_extensionSettings => 'Extension Settings';

  @override
  String get websites_extensionSettingsHint =>
      'Select or enter protected file extensions, separated by commas';

  @override
  String get websites_customExtensionHint => 'Custom extension, e.g. mp4';

  @override
  String get websites_customProtection => 'Custom protection:';

  @override
  String get websites_allowedDomains => 'Allowed Domains';

  @override
  String get websites_allowedDomainsHint =>
      'Set allowed domains. Wildcards are supported, such as *.example.com';

  @override
  String get websites_addDomainHint => 'Enter domain and add';

  @override
  String get websites_noAllowedDomains => 'No allowed domains added';

  @override
  String get websites_ruleControl => 'Rule Control';

  @override
  String get websites_allowEmptyReferer => 'Allow empty Referer';

  @override
  String get websites_allowNonStandardReferer => 'Allow non-standard Referer';

  @override
  String get websites_blockedResponse => 'Blocked Response';

  @override
  String get websites_blockedResponseHint =>
      'Status code returned by the server when a request is blocked.';

  @override
  String get websites_performanceAndLogs => 'Performance & Logs';

  @override
  String get websites_loadPerformanceSettingsFailed =>
      'Failed to load performance settings';

  @override
  String get websites_performanceTuning => 'Performance Tuning';

  @override
  String get websites_openRestyPerformanceSubtitle =>
      'Tune global OpenResty performance parameters';

  @override
  String get websites_getRuntimeStatusFailed => 'Failed to get runtime status';

  @override
  String get websites_runtimeStatus => 'Runtime Status';

  @override
  String get websites_openRestyRealtimeMetrics =>
      'OpenResty service realtime metrics';

  @override
  String get websites_activityMetrics => 'Activity Metrics';

  @override
  String get websites_activeConnections => 'Active Connections';

  @override
  String get websites_currentActiveClientConnections =>
      'Current active client connections';

  @override
  String get websites_requestStats => 'Request Statistics';

  @override
  String get websites_totalConnections => 'Total Connections';

  @override
  String get websites_totalHandshakes => 'Total Handshakes';

  @override
  String get websites_totalRequests => 'Total Requests';

  @override
  String get websites_connectionDetails => 'Connection Details';

  @override
  String get websites_readingClientRequestHeaders =>
      'Reading client request headers';

  @override
  String get websites_writingResponseToClient =>
      'Writing response back to client';

  @override
  String get websites_idleWaitingState => 'Idle waiting state';

  @override
  String get websites_realtimeMetric => 'Realtime monitoring metric';

  @override
  String get websites_serverSettings => 'Server Settings';

  @override
  String get websites_serverNamesHashBucketSize =>
      'Server names hash bucket size';

  @override
  String get websites_clientSettings => 'Client Settings';

  @override
  String get websites_clientHeaderBufferSize =>
      'Client request header buffer size';

  @override
  String get websites_maxUploadFile => 'Maximum upload file';

  @override
  String get websites_keepaliveTimeout => 'Connection timeout';

  @override
  String get websites_gzipCompression => 'Gzip Compression';

  @override
  String get websites_enableCompressionTransfer => 'Enable compressed transfer';

  @override
  String get websites_minCompressionFile => 'Minimum compression file';

  @override
  String get websites_compressionLevel => 'Compression level';

  @override
  String get websites_browserCache => 'Browser Cache';

  @override
  String get websites_serverCache => 'Server Cache';

  @override
  String websites_cacheValue(String label, String value) {
    return '$label: $value';
  }

  @override
  String get websites_backendAddress => 'Backend Address';

  @override
  String get websites_cache => 'Cache';

  @override
  String get websites_noReverseProxy => 'No reverse proxy';

  @override
  String get websites_createReverseProxyHint =>
      'Tap + in the upper-right corner to create a reverse proxy rule';

  @override
  String get websites_createNow => 'Create Now';

  @override
  String get websites_noModify => 'Do Not Modify';

  @override
  String get websites_allowedMethods => 'Allowed Methods';

  @override
  String get websites_searchString => 'Search string';

  @override
  String get websites_replaceWithString => 'Replace with string';

  @override
  String get websites_cacheTime => 'Cache Time';

  @override
  String get websites_recordRequestLogs => 'Record Request Logs';

  @override
  String get websites_extensionRequired =>
      'Select or enter at least one extension';

  @override
  String get websites_allowedDomainRequired =>
      'Enter at least one allowed domain';

  @override
  String get websites_cacheTimePositive => 'Cache time must be greater than 0';

  @override
  String get websites_antiLeechSaved => 'Anti-leech configuration saved';

  @override
  String get websites_saveFailed => 'Save failed';

  @override
  String get websites_updateFailed => 'Update failed';

  @override
  String get websites_deleteFailed => 'Delete failed';

  @override
  String get websites_loadAntiLeechFailed =>
      'Failed to load anti-leech configuration';

  @override
  String get websites_loadGroupsFailed => 'Failed to load website groups';

  @override
  String get websites_otherSettings => 'Other Settings';

  @override
  String get websites_default => 'Default';

  @override
  String get websites_websiteName => 'Website Name';

  @override
  String get websites_websiteAlias => 'Website Alias';

  @override
  String get websites_loadWebsiteDirectoryFailed =>
      'Failed to load website directory';

  @override
  String get websites_websiteDirectory => 'Website Directory';

  @override
  String get websites_directorySubtitle =>
      'Runtime directory, permissions, and directory structure';

  @override
  String get websites_rootDirectory => 'Root Directory';

  @override
  String get websites_runningDirectory => 'Runtime Directory';

  @override
  String get websites_runningUserGroup => 'Runtime User / Group';

  @override
  String get websites_userGroup => 'User Group';

  @override
  String get websites_savePermissions => 'Save Permissions';

  @override
  String get websites_runningUserGroupRequired =>
      'Enter runtime user and user group';

  @override
  String get websites_directoryDescription => 'Directory Description';

  @override
  String get websites_siteCertificates => 'Website certificates';

  @override
  String get websites_siteLogs => 'Website logs';

  @override
  String get websites_indexDirectoryDescription =>
      'Website root directory, static website code, or PHP runtime entry';

  @override
  String get websites_websiteAliasPlaceholder =>
      'Website directory name or alias';

  @override
  String get websites_optionalRemark => 'Optional remark';

  @override
  String get websites_switches => 'Switches';

  @override
  String get websites_listenIpv6 => 'Listen IPv6';

  @override
  String get websites_listenIpv6Subtitle =>
      'After enabling, the site configuration will also listen on IPv6 addresses';

  @override
  String get websites_favoriteWebsite => 'Favorite Website';

  @override
  String get websites_favoriteWebsiteSubtitle =>
      'Mark frequently used sites in the list';

  @override
  String get websites_saving => 'Saving';

  @override
  String get websites_saveChanges => 'Save Changes';

  @override
  String get websites_loadDefaultDocumentsFailed =>
      'Failed to load default documents';

  @override
  String get websites_defaultDocuments => 'Default Documents';

  @override
  String get websites_finishCurrentEditFirst => 'Finish the current edit first';

  @override
  String get websites_fileNameRequired => 'File name cannot be empty';

  @override
  String get websites_saveOrCancelCurrentEditFirst =>
      'Save or cancel the current edit first';

  @override
  String get websites_validFileNameOrRemoveEmptyRows =>
      'Enter valid file names or remove empty rows';

  @override
  String get websites_savedAndReloaded => 'Saved and reloaded';

  @override
  String get websites_defaultDocumentOrderHint =>
      'Long-press the left handle to reorder. Nginx checks default files in this order.';

  @override
  String get websites_noDefaultDocumentEntries =>
      'No entries. Tap + in the upper-right corner to add one.';

  @override
  String get websites_cannotDragWhileEditing => 'Cannot drag while editing';

  @override
  String get websites_defaultDocumentsDisabledHint =>
      'The panel reports default documents as disabled. After saving, server rules still take precedence.';

  @override
  String get websites_unsavedEdits => 'You have unsaved edits';

  @override
  String get websites_indexFileExample => 'e.g. index.html';

  @override
  String get websites_websiteNameRequired => 'Website name is required';

  @override
  String get websites_websiteAliasRequired => 'Website alias is required';

  @override
  String get websites_selectWebsiteGroup => 'Select a website group';

  @override
  String get websites_websiteInfoUpdated => 'Website information updated';

  @override
  String get websites_groupFallbackWarning =>
      'Website groups were not loaded. The current group ID will be used when saving.';

  @override
  String get websites_limitPresetForumBlog => 'Forum/Blog';

  @override
  String get websites_limitPresetImageSite => 'Image Site';

  @override
  String get websites_limitPresetDownloadSite => 'Download Site';

  @override
  String get websites_limitPresetShop => 'Shop';

  @override
  String get websites_limitPresetPortal => 'Portal';

  @override
  String get websites_limitPresetEnterprise => 'Enterprise';

  @override
  String get websites_limitPresetVideo => 'Video';

  @override
  String websites_limitPresetSummary(
    String name,
    String perServer,
    String perIp,
    String rate,
  ) {
    return '$name · Site $perServer / IP $perIp / $rate KB/s';
  }

  @override
  String get websites_loadTrafficLimitFailed => 'Failed to load traffic limit';

  @override
  String get websites_positiveIntegerRequired =>
      'Enter valid numbers (integers greater than 0)';

  @override
  String get websites_trafficLimitEnabled => 'Traffic limit enabled';

  @override
  String get websites_trafficLimitDisabled => 'Traffic limit disabled';

  @override
  String get websites_enableStatus => 'Enable Status';

  @override
  String get websites_trafficLimitEnabledStatus => 'Traffic limit is enabled';

  @override
  String get websites_trafficLimitDisabledStatus => 'Traffic limit is disabled';

  @override
  String get websites_candidatePresets => 'Presets';

  @override
  String get websites_parameterSettings => 'Parameter Settings';

  @override
  String get websites_editAfterEnable => 'Enable to edit parameters';

  @override
  String get websites_concurrencyLimit => 'Concurrency Limit';

  @override
  String get websites_perIpLimit => 'Per-IP Limit';

  @override
  String get websites_requestRateLimit => 'Request Rate Limit';

  @override
  String get websites_limitItemsDescription => 'Limit Item Descriptions';

  @override
  String get websites_concurrencyLimitDesc =>
      'Limit maximum concurrency for the current site';

  @override
  String get websites_perIpLimitDesc =>
      'Limit maximum concurrency for a single IP';

  @override
  String get websites_requestRateLimitDesc =>
      'Limit transfer rate per request in KB/s';

  @override
  String get websites_loadGroupsGenericFailed => 'Failed to load groups';

  @override
  String get websites_groupCreated => 'Group created';

  @override
  String get websites_groupUpdated => 'Group updated';

  @override
  String get websites_defaultGroupSet => 'Set as default group';

  @override
  String get websites_operationFailed => 'Operation failed';

  @override
  String get websites_deleteGroup => 'Delete Group';

  @override
  String websites_deleteGroupConfirm(String name) {
    return 'Delete \"$name\"?\nWebsites in this group will become ungrouped.';
  }

  @override
  String get websites_groupDeleted => 'Group deleted';

  @override
  String get websites_manageGroups => 'Manage Groups';

  @override
  String get websites_setAsDefault => 'Set as Default';

  @override
  String get websites_groupNameRequired => 'Enter a group name';

  @override
  String get websites_editGroup => 'Edit Group';

  @override
  String get websites_newGroup => 'New Group';

  @override
  String get websites_caName => 'CA Name';

  @override
  String get websites_caNameRequired => 'Enter CA name and common name';

  @override
  String get websites_caNamePlaceholder => 'e.g. corp-root-ca';

  @override
  String get websites_commonName => 'Common Name (CN)';

  @override
  String get websites_commonNameShort => 'Common Name';

  @override
  String get websites_commonNamePlaceholder => 'e.g. Corp Root CA';

  @override
  String get websites_organizationInfo => 'Organization Information';

  @override
  String get websites_countryRegion => 'Country/Region (C)';

  @override
  String get websites_countryRegionShort => 'Country/Region';

  @override
  String get websites_countryRegionPlaceholder => 'e.g. CN';

  @override
  String get websites_organizationName => 'Organization Name (O)';

  @override
  String get websites_organization => 'Organization';

  @override
  String get websites_organizationNamePlaceholder => 'e.g. Example Inc';

  @override
  String get websites_organizationUnit => 'Organization Unit (OU)';

  @override
  String get websites_organizationUnitShort => 'Organization Unit';

  @override
  String get websites_organizationUnitPlaceholder => 'e.g. IT';

  @override
  String get websites_provinceState => 'Province/State (ST)';

  @override
  String get websites_province => 'Province';

  @override
  String get websites_provincePlaceholder => 'e.g. Guangdong';

  @override
  String get websites_city => 'City (L)';

  @override
  String get websites_cityShort => 'City';

  @override
  String get websites_cityPlaceholder => 'e.g. Shenzhen';

  @override
  String get websites_issue => 'Issue';

  @override
  String get websites_issueSslCertificate => 'Issue SSL Certificate';

  @override
  String get websites_domainsRequired => 'Enter domains';

  @override
  String get websites_validityRequired => 'Enter a valid validity period';

  @override
  String get websites_issueFailed => 'Issue failed';

  @override
  String get websites_domains => 'Domains';

  @override
  String get websites_domainsPlaceholder =>
      'One domain per line, for example:\nexample.com\nwww.example.com';

  @override
  String get websites_certificateDescriptionPlaceholder =>
      'Optional certificate description';

  @override
  String get websites_pushToDirectory => 'Push to Directory';

  @override
  String get websites_targetDirectory => 'Target Directory';

  @override
  String get websites_scriptCommand => 'Script Command';

  @override
  String get websites_scriptCommandPlaceholder => 'e.g. nginx -s reload';

  @override
  String get websites_validity => 'Validity';

  @override
  String get websites_selfSignedCa => 'Self-Signed CA';

  @override
  String get websites_caList => 'CA List';

  @override
  String get websites_noSelfSignedCa => 'No self-signed CA';

  @override
  String get websites_createCa => 'Create CA';

  @override
  String get websites_createSelfSignedCaSubtitle =>
      'Create a new self-signed CA';

  @override
  String get websites_loadDetailsFailed => 'Failed to load details';

  @override
  String get websites_deleteCa => 'Delete CA';

  @override
  String websites_deleteCaConfirm(String name) {
    return 'Delete \"$name\"?';
  }

  @override
  String get websites_downloadFailed => 'Download failed';

  @override
  String get websites_unitSeconds => 'Seconds';

  @override
  String get websites_unitMinutes => 'Minutes';

  @override
  String get websites_unitHours => 'Hours';

  @override
  String get websites_unitDays => 'Days';

  @override
  String get websites_unitWeeks => 'Weeks';

  @override
  String get websites_unitMonths => 'Months';

  @override
  String get websites_unitYears => 'Years';

  @override
  String get websites_certificateInfo => 'Certificate Information';

  @override
  String get websites_certificateSource => 'Certificate Source';

  @override
  String get websites_issuer => 'Issuer';

  @override
  String get websites_expirationTime => 'Expiration Time';

  @override
  String get websites_operations => 'Operations';

  @override
  String get websites_obtainOrRenew => 'Apply / Renew';

  @override
  String get websites_obtainOrRenewSubtitle =>
      'Apply to CA for a certificate or renewal';

  @override
  String get websites_editCertificateConfig =>
      'Modify certificate configuration';

  @override
  String get websites_viewCertificatePem => 'View Certificate (PEM)';

  @override
  String get websites_viewCertificatePemSubtitle =>
      'View certificate PEM content';

  @override
  String get websites_viewPrivateKey => 'View Private Key';

  @override
  String get websites_viewPrivateKeySubtitle => 'View private key PEM content';

  @override
  String get websites_downloadCertificate => 'Download Certificate';

  @override
  String get websites_downloadCertificateSubtitle =>
      'Download certificate files';

  @override
  String get websites_deleteCertificate => 'Delete Certificate';

  @override
  String get websites_deleteCertificateSubtitle =>
      'Permanently delete this certificate';

  @override
  String get websites_deleteCertificateConfirm =>
      'Delete this certificate? This action cannot be undone.';

  @override
  String websites_deleteCertificatesConfirm(int count) {
    return 'Delete the selected $count certificates?';
  }

  @override
  String get websites_deleteSuccess => 'Deleted successfully';

  @override
  String get websites_applyTaskSubmitted => 'Apply task submitted';

  @override
  String get websites_applyFailed => 'Apply failed';

  @override
  String get websites_enableSsl => 'Enable SSL';

  @override
  String get websites_acmeAccount => 'ACME Account';

  @override
  String get websites_enableHttps => 'Enable HTTPS';

  @override
  String get websites_listenPortsReadonly => 'Listening Ports (read-only)';

  @override
  String get websites_httpOptions => 'HTTP Options';

  @override
  String get websites_httpRedirectToHttps => 'Redirect to HTTPS';

  @override
  String get websites_httpAlsoAccessible => 'Allow HTTP Access Too';

  @override
  String get websites_httpsOnly => 'Disable HTTP Access';

  @override
  String get websites_enableHsts => 'Enable HSTS';

  @override
  String get websites_enableHstsSubdomains => 'Enable HSTS Subdomains';

  @override
  String get websites_enableHttp3 => 'Enable HTTP/3';

  @override
  String get websites_http3Subtitle =>
      'Improves connection speed, but some browsers may not support it';

  @override
  String get websites_certificateSettings => 'Certificate Settings';

  @override
  String get websites_sslOptions => 'SSL Options';

  @override
  String get websites_selectExistingCertificate =>
      'Select Existing Certificate';

  @override
  String get websites_selectCertificate => 'Select Certificate';

  @override
  String get websites_noCertificatesForAccount =>
      'No certificates under this account';

  @override
  String get websites_sslProtocolSettings => 'SSL Protocol Settings';

  @override
  String get websites_supportedProtocolVersions =>
      'Supported Protocol Versions (multi-select)';

  @override
  String get websites_insecureTlsSelected =>
      'The selected protocol versions (TLS 1.0/1.1) are insecure';

  @override
  String get websites_cipherSuites => 'Cipher Suites';

  @override
  String get websites_loadAcmeAccountsFailed => 'Failed to load ACME accounts';

  @override
  String get websites_loadCertificateListFailed =>
      'Failed to load certificate list';

  @override
  String get websites_httpsConfigUpdated => 'HTTPS configuration updated';

  @override
  String get websites_loadHttpsConfigFailed =>
      'Failed to load HTTPS configuration';

  @override
  String get websites_certificateManagement => 'Certificate Management';

  @override
  String get websites_searchCertificates => 'Search certificates...';

  @override
  String get websites_uploadCertificate => 'Upload Certificate';

  @override
  String get websites_upload => 'Upload';

  @override
  String get websites_uploadFailed => 'Upload failed';

  @override
  String get websites_importFromText => 'Import from Text';

  @override
  String get websites_selectServerFile => 'Select Server File';

  @override
  String get websites_uploadFromLocal => 'Upload from Local';

  @override
  String get websites_searchCertificatesAction => 'Search Certificates';

  @override
  String get websites_refreshList => 'Refresh List';

  @override
  String get websites_noCertificateFound => 'No certificates found';

  @override
  String get websites_noCertificates => 'No certificates';

  @override
  String get websites_tryAnotherKeyword => 'Try another keyword';

  @override
  String get websites_noSslCertificates => 'No SSL certificates yet';

  @override
  String get websites_loadDataFailed => 'Failed to load data';

  @override
  String get websites_remarkOptional => 'Remark (optional)';

  @override
  String get websites_certificateContentPem => 'Certificate Content (PEM)';

  @override
  String get websites_privateKeyContentPem => 'Private Key Content (PEM)';

  @override
  String get websites_certificateFile => 'Certificate File';

  @override
  String get websites_privateKeyFile => 'Private Key File';

  @override
  String get websites_tapToSelectCertificateFile =>
      'Tap to select certificate file';

  @override
  String get websites_tapToSelectPrivateKeyFile =>
      'Tap to select private key file';

  @override
  String get websites_certificateFilePath => 'Certificate File Path';

  @override
  String get websites_privateKeyFilePath => 'Private Key File Path';

  @override
  String get websites_selectCertificateFile => 'Select Certificate File';

  @override
  String get websites_selectPrivateKeyFile => 'Select Private Key File';

  @override
  String get websites_certificateRemarkPlaceholder =>
      'Add a remark for the certificate';

  @override
  String get websites_certificate => 'Certificate';

  @override
  String get websites_enableFtp => 'Enable FTP';

  @override
  String get websites_account => 'Account';

  @override
  String get websites_ftpAccountPlaceholder => 'FTP account';

  @override
  String get websites_ftpPasswordPlaceholder => 'FTP password';

  @override
  String get websites_otherInfo => 'Other Information';

  @override
  String get websites_remark => 'Remark';

  @override
  String get websites_optional => 'Optional';

  @override
  String get websites_runtimeType => 'Runtime Type';

  @override
  String get websites_local => 'Local';

  @override
  String get websites_container => 'Container';

  @override
  String get websites_noAvailableRuntime => 'No runtimes available';

  @override
  String get websites_connectionType => 'Connection Type';

  @override
  String get websites_runtimeNoExposedPorts =>
      'This runtime exposes no ports. Configure ports in runtime settings first.';

  @override
  String get websites_databaseType => 'Database Type';

  @override
  String get websites_noAvailableService => 'No services available';

  @override
  String get websites_charset => 'Charset';

  @override
  String get websites_noGroups => 'No groups';

  @override
  String get websites_validityUnknown => 'Validity: unknown';

  @override
  String get websites_validityNeverExpires => 'Validity: never expires';

  @override
  String websites_validityValue(String value) {
    return 'Validity: $value';
  }

  @override
  String get websites_validityExpired => 'Validity: expired';

  @override
  String websites_validityDays(int days) {
    return 'Validity: $days days';
  }

  @override
  String get websites_validityLessThanOneDay => 'Validity: less than 1 day';

  @override
  String websites_certificateNumber(int id) {
    return 'Certificate #$id';
  }

  @override
  String get websites_noAvailableCertificate => 'No certificates available';

  @override
  String websites_domainCount(int count) {
    return '$count domains';
  }

  @override
  String get websites_loadingCount => 'Loading count';

  @override
  String get websites_detailLoadFailed => 'Failed to load details';

  @override
  String get websites_noPhpRuntimeBound => 'No PHP runtime bound';

  @override
  String get websites_settings => 'Website Settings';

  @override
  String get websites_openRestyNotInstalled => 'OpenResty is not installed';

  @override
  String get websites_installOpenRestyPrefix => 'Please install OpenResty in ';

  @override
  String get websites_appStore => 'App Store';

  @override
  String get websites_installOpenRestySuffix => ' first';

  @override
  String get websites_openRestyStopped => 'OpenResty is stopped';

  @override
  String get websites_startOpenRestyFromServiceMenu =>
      'Start it from the upper-right Services menu';

  @override
  String get websites_noWebsites => 'No websites';

  @override
  String get websites_noMatchingWebsites => 'No matching websites';

  @override
  String get websites_createFirstWebsiteHint =>
      'Use the upper-right button to create your first website';

  @override
  String get websites_loadWebsitesFailed => 'Failed to load websites';

  @override
  String get websites_selectWebsiteType => 'Select Website Type';

  @override
  String get websites_staticWebsiteType => 'Static Website (Static HTML)';

  @override
  String get websites_staticWebsiteTypeDescription =>
      'Best for static pages and frontend build output. The simplest configuration.';

  @override
  String get websites_reverseProxyType => 'Reverse Proxy';

  @override
  String get websites_reverseProxyTypeDescription =>
      'Forward traffic to another port or external address. Suitable for backend services.';

  @override
  String get websites_domainSettings => 'Domain Settings';

  @override
  String get websites_loadDomainsFailed => 'Failed to load domains';

  @override
  String get websites_domain => 'Domain';

  @override
  String websites_domainCountTitle(String title, int count) {
    return '$title · $count domains';
  }

  @override
  String get websites_keepAtLeastOneDomain => 'Keep at least one domain';

  @override
  String get websites_removeDomain => 'Remove Domain';

  @override
  String websites_removeDomainConfirm(String domain) {
    return 'Remove $domain?';
  }

  @override
  String get websites_remove => 'Remove';

  @override
  String get websites_noDomains => 'No domains';

  @override
  String get websites_addDomainFromTopRight =>
      'Tap the upper-right button to add a domain';

  @override
  String get websites_domainOrIpPlaceholder => 'Enter domain or IP';

  @override
  String get websites_validDomainPortRequired =>
      'Enter a valid domain and port';

  @override
  String websites_portValue(int port) {
    return 'Port $port';
  }

  @override
  String get websites_disableHttps => 'Disable HTTPS';

  @override
  String get websites_domainSettingsSubtitle =>
      'Manage bound domains, ports, and SSL markers';

  @override
  String get websites_siteDirectory => 'Website Directory';

  @override
  String get websites_detailLoadingRetry =>
      'Details are loading. Please try again later.';

  @override
  String get websites_defaultDocument => 'Default Document';

  @override
  String get websites_defaultDocumentSubtitle =>
      'Configure default entries such as index.html and index.php';

  @override
  String get websites_trafficLimit => 'Traffic Limit';

  @override
  String get websites_trafficLimitSubtitle =>
      'Limit traffic, connections, and request rate';

  @override
  String get websites_accessControl => 'Access Control';

  @override
  String get websites_reverseProxy => 'Reverse Proxy';

  @override
  String get websites_loadReverseProxyFailed => 'Failed to load reverse proxy';

  @override
  String get websites_deleteReverseProxy => 'Delete Reverse Proxy';

  @override
  String websites_deleteProxyConfirm(String name) {
    return 'Delete $name?';
  }

  @override
  String websites_deletedName(String name) {
    return 'Deleted $name';
  }

  @override
  String get websites_operationFailedCopyDetails =>
      'Operation failed (tap to copy details)';

  @override
  String get websites_sourceContent => 'Source Content';

  @override
  String get websites_sourceContentSaved => 'Source content saved';

  @override
  String websites_enabledName(String name) {
    return 'Enabled $name';
  }

  @override
  String websites_disabledName(String name) {
    return 'Disabled $name';
  }

  @override
  String get websites_reverseProxySubtitle =>
      'Configure proxy target, path, and cache rules';

  @override
  String get websites_passwordAccess => 'Password Access';

  @override
  String get websites_passwordAuthStatus => 'Password Auth Status';

  @override
  String get websites_passwordAccessEnabled => 'Password access enabled';

  @override
  String get websites_passwordAccessDisabled => 'Password access disabled';

  @override
  String get websites_globalAccess => 'Global Access';

  @override
  String get websites_pathAccess => 'Path Access';

  @override
  String get websites_loadAuthConfigFailed =>
      'Failed to load auth configuration';

  @override
  String get websites_noAuthAccounts => 'No auth accounts';

  @override
  String get websites_addGlobalAuthHint =>
      'Tap the upper-right button to add a global auth account';

  @override
  String get websites_deleteAccount => 'Delete Account';

  @override
  String websites_deleteAuthAccountConfirm(String username) {
    return 'Delete auth account \"$username\"?';
  }

  @override
  String get websites_accountDeleted => 'Account deleted';

  @override
  String get websites_noPathAccessLimits => 'No path access limits';

  @override
  String get websites_addPathAccessHint =>
      'Tap the upper-right button to add password access limits for a specific path';

  @override
  String get websites_deletePathAccess => 'Delete Path Access';

  @override
  String websites_deletePathAccessConfirm(String path) {
    return 'Delete access limit for path \"$path\"?';
  }

  @override
  String get websites_pathAccessDeleted => 'Path access limit deleted';

  @override
  String get websites_authorizedAccount => 'Authorized Account';

  @override
  String get websites_remarkDescription => 'Remark';

  @override
  String get websites_passwordAccessSubtitle =>
      'Add basic authentication to the website';

  @override
  String get websites_usernameRequired => 'Enter a username';

  @override
  String get websites_passwordRequired => 'Enter a password';

  @override
  String get websites_pathAndNameRequired => 'Enter a path and name';

  @override
  String get websites_editAccount => 'Edit Account';

  @override
  String get websites_addAccount => 'Add Account';

  @override
  String get websites_protectedPath => 'Protected Path';

  @override
  String get websites_pathExampleAdmin => 'e.g. /admin';

  @override
  String get websites_authName => 'Auth Name';

  @override
  String get websites_authNameExample => 'e.g. Admin';

  @override
  String get websites_username => 'Username';

  @override
  String get websites_accessPassword => 'Access Password';

  @override
  String get websites_leaveBlankToKeep => 'Leave blank to keep unchanged';

  @override
  String get websites_accountRemarkPlaceholder =>
      'Describe what this account is used for';

  @override
  String get websites_pathAuthImmutableHint =>
      'Path, name, and username cannot be changed after saving';

  @override
  String get websites_globalAuthPasswordResetHint =>
      'Updating a global account requires resetting the password';

  @override
  String get websites_confirmSave => 'Confirm Save';

  @override
  String get websites_corsAccess => 'CORS Access';

  @override
  String get websites_corsAccessSubtitle => 'Configure CORS request rules';

  @override
  String get websites_realIp => 'Real IP';

  @override
  String get websites_ipSourceRequired => 'Enter at least one IP source';

  @override
  String get websites_customHeaderRequired => 'Enter a custom Header name';

  @override
  String get websites_realIpSaved => 'Real IP configuration saved';

  @override
  String get websites_loadRealIpConfigFailed =>
      'Failed to load Real IP configuration';

  @override
  String get websites_enableRealIp => 'Enable Real IP';

  @override
  String get websites_ipSourceSetRealIpFrom => 'IP Source (set_real_ip_from)';

  @override
  String get websites_ipSourceHint =>
      'Enter one IP or CIDR per line\ne.g. 127.0.0.1';

  @override
  String get websites_trustedProxyIpList => 'Allowed trusted proxy IP list';

  @override
  String get websites_noTrustedProxyIp => 'No trusted proxy IPs';

  @override
  String get websites_realIpHeader => 'Real IP Header (real_ip_header)';

  @override
  String get websites_otherCustom => 'Other (Custom)';

  @override
  String get websites_customHeaderPlaceholder =>
      'Enter a custom Header name, e.g. My-Real-IP';

  @override
  String get websites_realIpHeaderHint =>
      'Specify the request header containing the real client IP.';

  @override
  String get websites_ipOrCidrPlaceholder => 'Enter IP or CIDR';

  @override
  String get websites_realIpSubtitle =>
      'Configure real client IP behind a proxy';

  @override
  String get websites_rulesAndRuntime => 'Rules & Runtime';

  @override
  String get websites_rewrite => 'Rewrite';

  @override
  String get websites_fetchTemplateContentFailed =>
      'Failed to get template content';

  @override
  String get websites_rewriteSavedAndReloaded =>
      'Rewrite configuration saved and reloaded';

  @override
  String get websites_saveAsTemplate => 'Save as Template';

  @override
  String get websites_templateNamePlaceholder => 'Enter template name';

  @override
  String get websites_templateNameRequired => 'Enter a template name';

  @override
  String websites_templateSavedAs(String name) {
    return 'Template saved as $name';
  }

  @override
  String get websites_saveAsTemplateFailed => 'Failed to save as template';

  @override
  String get websites_deleteTemplate => 'Delete Template';

  @override
  String websites_deleteTemplateConfirmName(String name) {
    return 'Delete template \"$name\"?';
  }

  @override
  String get websites_templateDeleted => 'Template deleted';

  @override
  String get websites_deleteTemplateFailed => 'Failed to delete template';

  @override
  String get websites_loadRewriteConfigFailed =>
      'Failed to load rewrite configuration';

  @override
  String get websites_currentTemplate => 'Current';

  @override
  String websites_customTemplateName(String name) {
    return '$name (custom)';
  }

  @override
  String get websites_selectTemplate => 'Select Template';

  @override
  String get websites_ruleContent => 'Rule Content';

  @override
  String get websites_rewriteRulesHint => 'Enter rewrite rules...';

  @override
  String get websites_saveAndReload => 'Save and Reload';

  @override
  String get websites_rewriteSubtitle => 'Configure rewrite rules';

  @override
  String get websites_antiLeech => 'Anti-Leech';

  @override
  String get websites_antiLeechSubtitle =>
      'Restrict referrer sites and resource access';

  @override
  String get websites_redirect => 'Redirect';

  @override
  String get websites_loadRedirectRulesFailed =>
      'Failed to load redirect rules';

  @override
  String get websites_deleteRedirect => 'Delete Redirect';

  @override
  String websites_deleteRedirectConfirm(String name) {
    return 'Delete redirect rule \"$name\"?';
  }

  @override
  String get websites_redirectSourceContent => 'Redirect Source Content';

  @override
  String get websites_redirectSourceSaved => 'Redirect source content saved';

  @override
  String get websites_ruleName => 'Rule Name';

  @override
  String get websites_ruleNamePlaceholder => 'Enter rule name';

  @override
  String get websites_redirectType => 'Redirect Type';

  @override
  String get websites_redirectMethod => 'Redirect Method';

  @override
  String get websites_redirect301 => '301 Permanent Redirect';

  @override
  String get websites_redirect302 => '302 Temporary Redirect';

  @override
  String get websites_domainSelection => 'Domain Selection';

  @override
  String get websites_noSelectableDomains => 'No selectable domains';

  @override
  String get websites_targetSettings => 'Target Settings';

  @override
  String get websites_targetUrl => 'Target URL';

  @override
  String get websites_targetUrlPlaceholder =>
      'Enter target URL, e.g. http://example.com';

  @override
  String get websites_keepUriParameters => 'Keep URI Parameters';

  @override
  String get websites_noRedirectRules => 'No redirect rules';

  @override
  String get websites_addRedirectRuleHint =>
      'Use the upper-right or lower button to add a rule';

  @override
  String get websites_addNow => 'Add Now';

  @override
  String get websites_targetAddress => 'Target Address';

  @override
  String get websites_scopeDomains => 'Scope Domains';

  @override
  String get websites_loadDomainListFailed => 'Failed to load domain list';

  @override
  String get websites_ruleNameRequired => 'Enter a rule name';

  @override
  String get websites_targetUrlRequired => 'Enter a target URL';

  @override
  String get websites_selectAtLeastOneDomain => 'Select at least one domain';

  @override
  String get websites_redirectRuleCreated => 'Redirect rule created';

  @override
  String get websites_redirectRuleUpdated => 'Redirect rule updated';

  @override
  String get websites_newRedirect => 'New Redirect';

  @override
  String get websites_editRedirect => 'Edit Redirect';

  @override
  String get websites_redirectSubtitle => 'Configure 301/302 redirect rules';

  @override
  String get websites_resource => 'Resources';

  @override
  String get websites_associatedResources => 'Associated Resources';

  @override
  String get websites_databaseSettings => 'Database Settings';

  @override
  String get websites_changeDatabase => 'Change Database';

  @override
  String get websites_unlinkDatabaseConfirm => 'Unlink the current database?';

  @override
  String websites_changeDatabaseConfirm(String name) {
    return 'Change the website database association to \"$name\"?';
  }

  @override
  String get websites_confirmChange => 'Confirm Change';

  @override
  String get websites_databaseAssociationUpdated =>
      'Database association updated';

  @override
  String get websites_runtimeEnvironment => 'Runtime Environment';

  @override
  String get websites_phpSettings => 'PHP Settings';

  @override
  String get websites_staticSite => 'Static Website';

  @override
  String get websites_currentStatus => 'Current Status';

  @override
  String get websites_switchRuntime => 'Switch Runtime';

  @override
  String get websites_selectStaticOrPhpRuntime =>
      'Select a static website or PHP runtime';

  @override
  String get websites_switching => 'Switching...';

  @override
  String get websites_phpRuntime => 'PHP Runtime';

  @override
  String websites_switchRuntimeConfirm(String target) {
    return 'Switching to $target\n\nThis will reconfigure the website and cannot be rolled back. Continue?';
  }

  @override
  String get websites_confirmSwitch => 'Confirm Switch';

  @override
  String websites_switchedTo(String target) {
    return 'Switched to $target';
  }

  @override
  String get websites_switchFailed => 'Switch failed';

  @override
  String get websites_phpWebsite => 'PHP Website';

  @override
  String get websites_unknownRuntime => 'Unknown runtime';

  @override
  String get websites_staticFileService => 'Static file service';

  @override
  String get websites_loadPhpRuntimesFailed => 'Failed to load PHP runtimes';

  @override
  String get websites_application => 'Application';

  @override
  String get websites_database => 'Database';

  @override
  String get websites_noAssociatedResources => 'No associated resources';

  @override
  String get websites_noDatabaseAssociation => 'No database association';

  @override
  String get websites_selectAssociatedDatabase =>
      'Select a database to associate';

  @override
  String get websites_updating => 'Updating...';

  @override
  String get websites_loadResourcesFailed => 'Failed to load resources';

  @override
  String get websites_loadWebsiteDetailsFailed =>
      'Failed to load website details';

  @override
  String get websites_resourceSubtitle =>
      'View website resource usage and statistics';

  @override
  String get websites_other => 'Other';

  @override
  String get websites_otherSubtitle => 'Name, group, IPv6, and favorite marker';

  @override
  String get websites_diagnostics => 'Diagnostics';

  @override
  String get websites_logs => 'Logs';

  @override
  String get websites_logsSubtitle => 'Access logs and error logs';

  @override
  String get websites_configFile => 'Config File';

  @override
  String get websites_loadConfigFailed => 'Failed to load configuration';

  @override
  String get websites_configUpdatedAndReloaded =>
      'Configuration updated and reloaded';

  @override
  String get websites_discardChangesQuestion => 'Discard changes?';

  @override
  String get websites_unsavedChangesLeaveConfirm =>
      'Your changes are not saved. Are you sure you want to leave?';

  @override
  String get websites_continueEditing => 'Continue Editing';

  @override
  String get websites_discard => 'Discard';

  @override
  String get websites_updateAndReload => 'Update and Reload';

  @override
  String get websites_configFileSubtitle => 'View and edit site configuration';

  @override
  String get websites_sslNotEnabled => 'SSL not enabled';

  @override
  String get websites_certificateLoadFailed =>
      'Failed to load certificate info';

  @override
  String get websites_httpsEnabled => 'HTTPS enabled';

  @override
  String websites_certificateExpiry(String time) {
    return 'Certificate $time';
  }

  @override
  String get websites_accessLogLoadFailed => 'Failed to load access log';

  @override
  String get websites_errorLogLoadFailed => 'Failed to load error log';

  @override
  String get websites_clearAccessLog => 'Clear Access Log';

  @override
  String get websites_clearErrorLog => 'Clear Error Log';

  @override
  String get websites_clearLogConfirm =>
      'This will clear the log file on the server. Continue?';

  @override
  String get websites_clear => 'Clear';

  @override
  String get websites_logCleared => 'Log cleared';

  @override
  String get websites_logEnabled => 'Log enabled';

  @override
  String get websites_logDisabled => 'Log disabled';

  @override
  String get websites_rawLogCopied => 'Raw log copied';

  @override
  String get websites_noExportableLogs => 'No logs to export';

  @override
  String get websites_sharePluginUnregistered =>
      'Share plugin is not registered';

  @override
  String get websites_sharePluginRestartHint =>
      'Fully stop and rerun the app. Hot reload/restart does not register newly added native plugins.';

  @override
  String get websites_exportFailed => 'Export failed';

  @override
  String get websites_websiteLogs => 'Website Logs';

  @override
  String websites_logHeaderSubtitle(String title, int lines, String status) {
    return '$title · $lines lines · $status';
  }

  @override
  String get websites_enabled => 'Enabled';

  @override
  String get websites_disabled => 'Disabled';

  @override
  String get websites_accessLog => 'Access Log';

  @override
  String get websites_errorLog => 'Error Log';

  @override
  String get websites_logSearchPlaceholder =>
      'Search IP, path, status code, UA';

  @override
  String get websites_time => 'Time';

  @override
  String get websites_path => 'Path';

  @override
  String get websites_user => 'User';

  @override
  String get websites_source => 'Source';

  @override
  String get websites_size => 'Size';

  @override
  String get websites_copyRawData => 'Copy Raw Data';

  @override
  String get websites_noLogs => 'No logs';

  @override
  String get websites_noMatchingLogs => 'No matching logs';

  @override
  String get websites_enable => 'Enable';

  @override
  String get websites_disable => 'Disable';

  @override
  String get websites_export => 'Export';

  @override
  String get websites_submit => 'Submit';

  @override
  String get websites_applyCertificate => 'Apply Certificate';

  @override
  String get websites_basicInfo => 'Basic Information';

  @override
  String get websites_primaryDomainExample => 'e.g. example.com';

  @override
  String get websites_otherDomains => 'Other Domains';

  @override
  String get websites_otherDomainsPlaceholder =>
      'Separate multiple domains with line breaks';

  @override
  String get websites_validationMethod => 'Validation Method';

  @override
  String get websites_dnsAccountValidation => 'DNS Account Validation';

  @override
  String get websites_manualDnsValidation => 'Manual DNS Validation';

  @override
  String get websites_httpValidation => 'HTTP Validation';

  @override
  String get websites_selfSigned => 'Self-Signed';

  @override
  String get websites_dnsAccount => 'DNS Account';

  @override
  String get websites_dnsAccountNameRequired => 'Enter an account name';

  @override
  String get websites_authFieldsRequired => 'Fill in all authorization fields';

  @override
  String get websites_editDnsAccount => 'Edit DNS Account';

  @override
  String get websites_createDnsAccount => 'Create DNS Account';

  @override
  String get websites_createAcmeAccount => 'Create ACME Account';

  @override
  String get websites_email => 'Email';

  @override
  String get websites_certificateExpiryEmailHint =>
      'Used to receive certificate expiry reminders';

  @override
  String get websites_accountType => 'Account Type';

  @override
  String get websites_accountList => 'Account List';

  @override
  String get websites_noDnsAccounts => 'No DNS accounts';

  @override
  String get websites_addDnsProviderAccount => 'Add a new DNS provider account';

  @override
  String get websites_clickAgainToConfirmDelete =>
      'Tap again to confirm delete';

  @override
  String get websites_selectOperation => 'Select an operation';

  @override
  String get websites_noAcmeAccounts => 'No ACME accounts';

  @override
  String get websites_deleteAcmeAccount => 'Delete ACME Account';

  @override
  String get websites_deleteAcmeAccountConfirm => 'Delete this ACME account?';

  @override
  String get websites_addAcmeAccount => 'Add a new ACME account';

  @override
  String get websites_customAcmeDirectory => 'Custom ACME Directory';

  @override
  String get websites_optionalUseDefault =>
      'Optional, leave blank to use default';

  @override
  String get websites_useEab => 'Use EAB';

  @override
  String get websites_eabKeyIdPlaceholder => 'External Account Binding Key ID';

  @override
  String get websites_eabHmacKeyPlaceholder =>
      'External Account Binding HMAC Key';

  @override
  String get websites_useProxy => 'Use Proxy';

  @override
  String get websites_accountName => 'Account Name';

  @override
  String get websites_accountNameExample => 'e.g. aliyun-prod';

  @override
  String get websites_cloudProviderType => 'Cloud Provider Type';

  @override
  String get websites_authorizationInfo => 'Authorization Info';

  @override
  String websites_enterField(String field) {
    return 'Enter $field';
  }

  @override
  String get websites_dnsProviderAliYun => 'Alibaba Cloud';

  @override
  String get websites_dnsProviderAliEsa => 'AliESA';

  @override
  String get websites_dnsProviderAwsRoute53 => 'AWS Route 53';

  @override
  String get websites_dnsProviderTencentCloud => 'Tencent Cloud';

  @override
  String get websites_dnsProviderHuaweiCloud => 'Huawei Cloud';

  @override
  String get websites_dnsProviderVolcengine => 'Volcengine';

  @override
  String get websites_dnsProviderBaiduCloud => 'Baidu Cloud';

  @override
  String get websites_dnsProviderRainYun => 'RainYun';

  @override
  String get websites_dnsProviderWestCn => 'West.cn';

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
  String get websites_dnsProviderDnsPodDeprecated => 'DNSPod (deprecated)';

  @override
  String get websites_dnsProviderTechnitium => 'Technitium';

  @override
  String get websites_advancedOptions => 'Advanced Options';

  @override
  String get websites_keyAlgorithm => 'Key Algorithm';

  @override
  String get websites_autoRenew => 'Auto Renew';

  @override
  String get websites_skipDnsValidation => 'Skip DNS Validation';

  @override
  String get websites_disableCname => 'Disable CNAME';

  @override
  String get websites_pushToLocalDir => 'Push to Local Directory';

  @override
  String get websites_certificateDirectory => 'Certificate Directory';

  @override
  String get websites_absolutePathExample => 'Absolute path, e.g. /opt/ssl';

  @override
  String get websites_chooseCertificateDirectory =>
      'Choose Certificate Directory';

  @override
  String get websites_runScriptAfterApply => 'Run Script After Applying';

  @override
  String get websites_dnsServers => 'DNS Servers';

  @override
  String get websites_preferredDns => 'Preferred DNS';

  @override
  String get websites_optionalDnsExample => 'Optional, e.g. 8.8.8.8';

  @override
  String get websites_alternateDns => 'Alternate DNS';

  @override
  String get websites_executeScript => 'Execute Script';

  @override
  String get websites_scriptContent => 'Script Content';

  @override
  String get websites_editScriptHint => 'Tap to edit script';

  @override
  String get containers_editContainer => 'Edit Container';

  @override
  String get containers_submit => 'Submit';

  @override
  String get containers_loadConfigFailed =>
      'Failed to load container configuration';

  @override
  String containers_updatingContainer(String name) {
    return 'Updating container $name';
  }

  @override
  String containers_updateRequestFailed(String error) {
    return 'Update request failed: $error';
  }

  @override
  String get containers_appStoreWarning =>
      'This container comes from the App Store. App operations may invalidate the current edit.';

  @override
  String get containers_basicInfo => 'Basic Info';

  @override
  String get containers_containerName => 'Container Name';

  @override
  String get containers_required => 'Required';

  @override
  String get containers_ttySubtitle => 'Allocate a pseudo-TTY (-t)';

  @override
  String get containers_stdin => 'Standard Input';

  @override
  String get containers_stdinSubtitle => 'Keep standard input open (-i)';

  @override
  String get containers_privilegedMode => 'Privileged Mode';

  @override
  String get containers_privilegedSubtitle =>
      'Grant the container full host root privileges';

  @override
  String get containers_autoRemove => 'Auto Remove';

  @override
  String get containers_autoRemoveSubtitle =>
      'Automatically remove the container after it exits (--rm)';

  @override
  String get containers_imageName => 'Image Name';

  @override
  String get containers_portMappings => 'Port Mappings';

  @override
  String get containers_publishAllPorts => 'Publish All Ports';

  @override
  String get containers_publishAllPortsSubtitle =>
      'Randomly map all exposed container ports to the host';

  @override
  String get containers_hostIpOptional => 'Host IP (optional)';

  @override
  String get containers_hostPort => 'Host Port';

  @override
  String get containers_containerPort => 'Container Port';

  @override
  String get containers_addPortMapping => 'Add Port Mapping';

  @override
  String get containers_networkSettings => 'Network Settings';

  @override
  String get containers_hostname => 'Hostname';

  @override
  String get containers_hostnamePlaceholder => 'Container hostname';

  @override
  String get containers_domainName => 'Domain Name';

  @override
  String get containers_domainNamePlaceholder => 'Container domain name';

  @override
  String get containers_dnsServers => 'DNS Servers';

  @override
  String get containers_dnsAddress => 'DNS Address';

  @override
  String get containers_addDns => 'Add DNS';

  @override
  String containers_networkValue(String name) {
    return 'Network: $name';
  }

  @override
  String get containers_noMoreNetworks => 'No more networks available';

  @override
  String get containers_selectNetwork => 'Select Network';

  @override
  String get containers_addNetwork => 'Add Network';

  @override
  String get containers_networkNameRequired => 'Network name is required';

  @override
  String get containers_networkCreated => 'Network created';

  @override
  String get containers_createNetwork => 'Create Network';

  @override
  String get containers_networkNameRequiredPlaceholder =>
      'Network name (required)';

  @override
  String get containers_driverType => 'Driver Type';

  @override
  String get containers_parentNic => 'Parent NIC';

  @override
  String get containers_selectParentNic => 'Select Parent NIC';

  @override
  String get containers_ipv4Config => 'IPv4 Configuration';

  @override
  String get containers_enableIpv4 => 'Enable IPv4';

  @override
  String get containers_subnetExample => 'Subnet, e.g. 172.30.0.0/16';

  @override
  String get containers_gatewayExample => 'Gateway, e.g. 172.30.0.1';

  @override
  String get containers_ipRangeOptional => 'IP range (optional)';

  @override
  String get containers_auxAddress => 'Auxiliary Address';

  @override
  String get containers_name => 'Name';

  @override
  String get containers_ipAddress => 'IP Address';

  @override
  String get containers_addAuxAddress => 'Add Auxiliary Address';

  @override
  String get containers_ipv6Config => 'IPv6 Configuration';

  @override
  String get containers_enableIpv6 => 'Enable IPv6';

  @override
  String get containers_subnetV6Example => 'Subnet, e.g. fd00::/64';

  @override
  String get containers_gateway => 'Gateway';

  @override
  String get containers_advancedOptions => 'Advanced Options';

  @override
  String get containers_labelsPlaceholder =>
      'Labels (one per line, format: key=value)';

  @override
  String get containers_driverOptionsPlaceholder =>
      'Driver options (one per line, format: key=value)';

  @override
  String get containers_ipv4Address => 'IPv4 Address';

  @override
  String get containers_ipv6Address => 'IPv6 Address';

  @override
  String get containers_macAddress => 'MAC Address';

  @override
  String get containers_mountedVolumes => 'Mounted Volumes';

  @override
  String get containers_hostDirOrVolume => 'Host directory / volume name';

  @override
  String get containers_containerDir => 'Container directory';

  @override
  String get containers_readWrite => 'Read/Write';

  @override
  String get containers_readOnly => 'Read Only';

  @override
  String get containers_customPath => 'Custom Path';

  @override
  String get containers_addMount => 'Add Mount';

  @override
  String get containers_defaultPropagation => 'Default Propagation';

  @override
  String get containers_propagationType => 'Propagation Type';

  @override
  String get containers_propagationMessage =>
      'Choose the mount propagation behavior between host and container';

  @override
  String get containers_propagationPrivate => 'Private';

  @override
  String get containers_propagationPrivateDesc =>
      'Mounts do not propagate; host and container mounts are isolated';

  @override
  String get containers_propagationRprivate => 'Recursive Private';

  @override
  String get containers_propagationRprivateDesc =>
      'Private mode recursively applied to submounts';

  @override
  String get containers_propagationShared => 'Shared';

  @override
  String get containers_propagationSharedDesc =>
      'Mounts sync both ways between host and container';

  @override
  String get containers_propagationRshared => 'Recursive Shared';

  @override
  String get containers_propagationRsharedDesc =>
      'Shared mode recursively applied to submounts';

  @override
  String get containers_propagationSlave => 'Slave';

  @override
  String get containers_propagationSlaveDesc =>
      'Host mounts sync to the container, but container mounts do not affect the host';

  @override
  String get containers_propagationRslave => 'Recursive Slave';

  @override
  String get containers_propagationRslaveDesc =>
      'Slave mode recursively applied to submounts';

  @override
  String get containers_hostsMapping => 'Hosts Mapping';

  @override
  String get containers_addHost => 'Add Host';

  @override
  String get containers_commandSettings => 'Command Settings';

  @override
  String get containers_workingDir => 'Working Directory';

  @override
  String get containers_user => 'User';

  @override
  String get containers_command => 'Command';

  @override
  String get containers_entrypoint => 'Entrypoint';

  @override
  String get containers_resourceLimits => 'Resource Limits';

  @override
  String get containers_cpuShares => 'CPU Shares';

  @override
  String get containers_cpuSharesSubtitle =>
      'Default 1024. Increase it to get more CPU time';

  @override
  String get containers_cpuLimit => 'CPU Limit';

  @override
  String get containers_unlimitedZero => '0 means unlimited';

  @override
  String containers_cpuCoresMax(String max) {
    return 'cores (max $max)';
  }

  @override
  String get containers_memoryLimit => 'Memory Limit';

  @override
  String containers_memoryMbMax(String max) {
    return 'MB (max $max)';
  }

  @override
  String get containers_labels => 'Labels';

  @override
  String get containers_envVars => 'Environment Variables';

  @override
  String containers_addItem(String title) {
    return 'Add $title';
  }

  @override
  String get containers_restartPolicy => 'Restart Policy';

  @override
  String get containers_restartAlways => 'Always Restart';

  @override
  String get containers_restartNo => 'Do Not Restart';

  @override
  String get containers_restartOnFailure => 'Restart on Failure';

  @override
  String get containers_restartUnlessStopped => 'Unless Manually Stopped';

  @override
  String get containers_start => 'Start';

  @override
  String get containers_stop => 'Stop';

  @override
  String get containers_restart => 'Restart';

  @override
  String containers_dockerActionSucceeded(String action) {
    return 'Docker $action succeeded';
  }

  @override
  String containers_dockerActionFailed(String action) {
    return 'Docker $action failed';
  }

  @override
  String get containers_stopDockerConfirm =>
      'Stopping Docker will interrupt all running containers. Continue?';

  @override
  String get containers_restartDockerConfirm =>
      'Running containers will be interrupted briefly while Docker restarts. Continue?';

  @override
  String get containers_configUpdatedRestarting =>
      'Configuration updated. Docker is restarting';

  @override
  String get containers_configFileMissing => 'Configuration file not found';

  @override
  String get containers_configFileMissingContent =>
      'This Docker environment has not created daemon.json yet, so direct editing is unavailable.';

  @override
  String get containers_dockerFullConfig => 'Docker Full Configuration';

  @override
  String get containers_daemonSavedRestarting =>
      'daemon.json saved. Docker is restarting';

  @override
  String get containers_readDaemonFailed => 'Failed to read daemon.json';

  @override
  String get containers_loading => 'Loading...';

  @override
  String containers_versionValue(String version) {
    return 'Version $version';
  }

  @override
  String get containers_serviceRunning => 'Service is running';

  @override
  String get containers_running => 'Running';

  @override
  String containers_allCount(int count) {
    return 'All ($count)';
  }

  @override
  String containers_filterCount(String label, int count) {
    return '$label ($count)';
  }

  @override
  String get containers_stateExited => 'Stopped';

  @override
  String get containers_statePaused => 'Paused';

  @override
  String get containers_stateCreated => 'Created';

  @override
  String get containers_stateRestarting => 'Restarting';

  @override
  String get containers_stateRemoving => 'Removing';

  @override
  String get containers_stateDead => 'Abnormal';

  @override
  String get containers_stopped => 'Stopped';

  @override
  String get containers_serviceOperations => 'Service Operations';

  @override
  String get containers_startDockerService => 'Start Docker Service';

  @override
  String get containers_stopDockerService => 'Stop Docker Service';

  @override
  String get containers_restartDockerService => 'Restart Docker Service';

  @override
  String get containers_basicConfig => 'Basic Configuration';

  @override
  String get containers_imageAccelerator => 'Registry Mirrors';

  @override
  String get containers_insecureRegistries => 'Insecure Registries';

  @override
  String get containers_notConfigured => 'Not configured';

  @override
  String containers_itemCount(int count) {
    return '$count items';
  }

  @override
  String get containers_enabled => 'Enabled';

  @override
  String get containers_disabled => 'Disabled';

  @override
  String get containers_ipv6ConfigUpdatedRestarting =>
      'IPv6 configuration updated. Docker is restarting';

  @override
  String get containers_logRotation => 'Log Rotation';

  @override
  String get containers_logConfigUpdatedRestarting =>
      'Log configuration updated. Docker is restarting';

  @override
  String get containers_switchOptions => 'Switch Options';

  @override
  String get containers_swarmUnavailable => 'Unavailable in Swarm mode';

  @override
  String get containers_enableLiveRestore => 'Enable Live Restore';

  @override
  String get containers_disableLiveRestore => 'Disable Live Restore';

  @override
  String get containers_enableLiveRestoreContent =>
      'When enabled, running containers will not be interrupted if the Docker daemon stops or crashes. The daemon will take them over again after it restarts.\n\nThis operation will restart Docker. Continue?';

  @override
  String get containers_disableLiveRestoreContent =>
      'When disabled, all running containers will stop when the Docker daemon stops.\n\nThis operation will restart Docker. Continue?';

  @override
  String get containers_advancedConfig => 'Advanced Configuration';

  @override
  String get containers_sockPathUpdated => 'Sock Path updated';

  @override
  String get containers_allConfig => 'Full Configuration';

  @override
  String get containers_editDaemonJson => 'Edit daemon.json';

  @override
  String get containers_editDaemonJsonSubtitle =>
      'Edit the Docker daemon configuration file directly';

  @override
  String get containers_loadingDockerSettings => 'Loading Docker settings';

  @override
  String get containers_dockerNotDetected =>
      'Docker container service was not detected\nContainer management is unavailable';

  @override
  String get containers_dockerNotRunning =>
      'Docker container service is not running\nConfigure Docker service';

  @override
  String get containers_serviceUnavailable => 'Service Unavailable';

  @override
  String get containers_configureDockerService => 'Configure Docker Service';

  @override
  String get containers_resourceCount => 'Resource Count';

  @override
  String get containers_containers => 'Containers';

  @override
  String get containers_compose => 'Compose';

  @override
  String containers_composeRunningStatus(int running, int total) {
    return '$running/$total running';
  }

  @override
  String get containers_containerOperations => 'Container Operations';

  @override
  String get containers_startComposeSubtitle =>
      'Start all containers in this compose';

  @override
  String get containers_stopComposeSubtitle =>
      'Stop all containers in this compose';

  @override
  String get containers_restartComposeSubtitle =>
      'Restart all containers in this compose';

  @override
  String get containers_composeManagement => 'Compose Management';

  @override
  String get containers_editComposeSubtitle =>
      'Modify the Docker Compose configuration file';

  @override
  String get containers_logs => 'Logs';

  @override
  String containers_logSheetTitle(String name) {
    return '$name Logs';
  }

  @override
  String get containers_all => 'All';

  @override
  String get containers_lastDay => 'Last day';

  @override
  String containers_lastHours(int hours) {
    return 'Last $hours hours';
  }

  @override
  String containers_lastMinutes(int minutes) {
    return 'Last $minutes minutes';
  }

  @override
  String containers_loadLogsFailed(String error) {
    return 'Failed to load logs: $error';
  }

  @override
  String get containers_noLogs => 'No logs';

  @override
  String get containers_clearLogs => 'Clear Logs';

  @override
  String get containers_clearLogsConfirm =>
      'Clearing logs requires restarting the container. This action cannot be rolled back. Continue?';

  @override
  String get containers_clear => 'Clear';

  @override
  String get containers_logsCleared => 'Logs cleared';

  @override
  String get containers_clearLogsFailed => 'Failed to clear logs';

  @override
  String get containers_noExportableLogs => 'No logs to export';

  @override
  String get containers_filter => 'Filter';

  @override
  String get containers_lineCount => 'Lines';

  @override
  String get containers_time => 'Time';

  @override
  String get containers_follow => 'Follow';

  @override
  String get containers_composeLogsSubtitle =>
      'View combined logs for all containers';

  @override
  String get containers_terminal => 'Terminal';

  @override
  String get containers_composeTerminalSubtitle =>
      'Enter the primary container\'s interactive terminal';

  @override
  String get containers_deleteComposeSubtitle =>
      'Remove the compose and related containers (keep data)';

  @override
  String containers_composeOperationConfirm(String operation, String name) {
    return 'Run $operation on compose $name?';
  }

  @override
  String containers_operationSubmitted(String operation) {
    return '$operation operation submitted';
  }

  @override
  String containers_operationNamedFailed(String operation) {
    return '$operation operation failed';
  }

  @override
  String get containers_composeDeleted => 'Compose deleted';

  @override
  String get containers_deleteComposeFailed => 'Failed to delete compose';

  @override
  String get containers_composeTemplates => 'Compose Templates';

  @override
  String get containers_images => 'Images';

  @override
  String get containers_imageRepos => 'Image Repositories';

  @override
  String get containers_networks => 'Networks';

  @override
  String containers_runningCount(int count) {
    return 'Running $count';
  }

  @override
  String get containers_diskUsage => 'Disk Usage';

  @override
  String get containers_localVolumes => 'Local Volumes';

  @override
  String get containers_buildCache => 'Build Cache';

  @override
  String get containers_dockerConfig => 'Docker Configuration';

  @override
  String get containers_experimentalFeatures => 'Experimental Features';

  @override
  String get containers_logSize => 'Log Size';

  @override
  String get containers_logFileCount => 'Log File Count';

  @override
  String get containers_maintenance => 'Maintenance';

  @override
  String get containers_runTerminal => 'Run Terminal';

  @override
  String get containers_runTerminalSubtitle =>
      'Enter the container and run commands';

  @override
  String get containers_viewLogs => 'View Logs';

  @override
  String get containers_viewLogsSubtitle => 'View container logs in real time';

  @override
  String get containers_realtimeMonitor => 'Real-time Monitor';

  @override
  String get containers_realtimeMonitorSubtitle =>
      'View CPU, memory, network, and other metrics';

  @override
  String get containers_lifecycle => 'Lifecycle';

  @override
  String get containers_restoreContainer => 'Resume Container';

  @override
  String get containers_startContainer => 'Start Container';

  @override
  String get containers_restoreContainerSubtitle => 'Resume from paused state';

  @override
  String get containers_startContainerSubtitle => 'Start the stopped container';

  @override
  String get containers_stopContainer => 'Stop Container';

  @override
  String get containers_stopContainerSubtitle =>
      'Gracefully stop processes running in the container';

  @override
  String get containers_restartContainer => 'Restart Container';

  @override
  String get containers_restartContainerSubtitle =>
      'Stop and restart the container';

  @override
  String get containers_pause => 'Pause';

  @override
  String get containers_pauseContainer => 'Pause Container';

  @override
  String get containers_pauseContainerSubtitle =>
      'Pause all processes in the container';

  @override
  String get containers_forceStop => 'Force Stop';

  @override
  String get containers_forceStopContainer => 'Force Stop Container';

  @override
  String get containers_forceStopContainerSubtitle =>
      'Stop the container immediately';

  @override
  String get containers_configAndUpdates => 'Configuration & Updates';

  @override
  String get containers_editConfig => 'Edit Configuration';

  @override
  String get containers_editConfigSubtitle =>
      'Modify ports, environment, volume mappings, and more';

  @override
  String get containers_upgradeContainer => 'Upgrade Container';

  @override
  String get containers_upgradeContainerSubtitle =>
      'Pull a new image and recreate the container';

  @override
  String get containers_dataAndImages => 'Data & Images';

  @override
  String get containers_containerBackup => 'Container Backup';

  @override
  String get containers_containerBackupSubtitle =>
      'Back up container data locally';

  @override
  String containers_backupSheetTitle(String name) {
    return '$name Backups';
  }

  @override
  String get containers_loadBackupsFailed => 'Failed to load backups';

  @override
  String get containers_runBackup => 'Run Container Backup';

  @override
  String get containers_createBackupFailed => 'Failed to create backup';

  @override
  String get containers_noRemark => 'No remark';

  @override
  String get containers_runDirectory => 'Run Directory';

  @override
  String get containers_restore => 'Restore';

  @override
  String get containers_restoreBackupTask => 'Restore Container Backup';

  @override
  String get containers_restoreBackupFailed => 'Failed to restore backup';

  @override
  String get containers_deleteBackup => 'Delete Backup';

  @override
  String containers_deleteBackupConfirm(String fileName) {
    return 'Delete backup file $fileName? This action cannot be undone.';
  }

  @override
  String get containers_backupDeleted => 'Backup deleted';

  @override
  String get containers_deleteBackupFailed => 'Failed to delete backup';

  @override
  String get containers_startBackup => 'Start Backup';

  @override
  String get containers_compressionPasswordOptional =>
      'Compression password (optional)';

  @override
  String get containers_descriptionOptional => 'Description (optional)';

  @override
  String get containers_stopBeforeBackup => 'Stop container before backup';

  @override
  String get containers_stopBeforeBackupHint =>
      'When enabled, the container is stopped before backup and automatically restored after completion to ensure data consistency.';

  @override
  String get containers_restoreBackup => 'Restore Backup';

  @override
  String get containers_startRestore => 'Start Restore';

  @override
  String get containers_restorePasswordHint =>
      'Leave blank if the backup has no compression password.';

  @override
  String get containers_restorePasswordOptional =>
      'Restore password (optional)';

  @override
  String get containers_timeout => 'Timeout';

  @override
  String get containers_minutes => 'minutes';

  @override
  String get containers_restoreTimeoutHint =>
      'Default is 30 minutes. -1 means unlimited.';

  @override
  String get containers_commitImage => 'Commit Image';

  @override
  String get containers_commitImageSubtitle =>
      'Commit this container as a new image';

  @override
  String get containers_dangerZone => 'Danger Zone';

  @override
  String get containers_deleteContainer => 'Delete Container';

  @override
  String get containers_deleteContainerSubtitle =>
      'Permanently remove this container and related configuration';

  @override
  String containers_operationConfirm(String operation, String name) {
    return 'Run $operation on container $name?';
  }

  @override
  String get containers_operationFailed => 'Operation failed';

  @override
  String get containers_pruneContainers => 'Prune Containers';

  @override
  String get containers_pruneContainersConfirm =>
      'Pruning containers will delete all stopped containers.\n\nIf containers come from the App Store, after pruning you need to go to App Store > Installed and tap Rebuild to reinstall.\n\nThis action cannot be rolled back. Continue?';

  @override
  String get containers_pruneFailed => 'Prune failed';

  @override
  String get containers_addedFavorite => 'Added to favorites';

  @override
  String get containers_removedFavorite => 'Removed from favorites';

  @override
  String get containers_operationGeneric => 'Operation';

  @override
  String containers_commitImageTask(String name) {
    return 'Commit image: $name';
  }

  @override
  String containers_upgradeContainerTask(String name) {
    return 'Upgrade container: $name';
  }

  @override
  String get containers_nameRequired => 'Name is required';

  @override
  String get containers_repoAddressRequired => 'Repository address is required';

  @override
  String get containers_repoAddressNoProtocol =>
      'Repository address cannot include a protocol prefix';

  @override
  String get containers_httpProtocolWarning => 'HTTP Protocol Warning';

  @override
  String get containers_httpProtocolWarningContent =>
      'HTTP does not encrypt data in transit and has security risks. Continue?';

  @override
  String get containers_repoUpdated => 'Repository updated';

  @override
  String get containers_repoCreated => 'Repository created';

  @override
  String get containers_updateFailed => 'Update failed';

  @override
  String get containers_createFailed => 'Create failed';

  @override
  String get containers_editRepo => 'Edit Repository';

  @override
  String get containers_addRepo => 'Add Repository';

  @override
  String get containers_add => 'Add';

  @override
  String get containers_repoNameRequiredPlaceholder =>
      'Repository name (required)';

  @override
  String get containers_repoAddressPlaceholder =>
      'Repository address, e.g. registry.example.com:5000';

  @override
  String get containers_protocol => 'Protocol';

  @override
  String get containers_authSettings => 'Authentication Settings';

  @override
  String get containers_enableAuth => 'Enable Authentication';

  @override
  String get containers_enableAuthSubtitle =>
      'Use a username and password to access the repository';

  @override
  String get containers_username => 'Username';

  @override
  String get containers_password => 'Password';

  @override
  String get containers_composeContentRequired =>
      'Enter Docker Compose content';

  @override
  String get containers_composeValidationFailed =>
      'Validation failed. Check the configuration.';

  @override
  String containers_creatingComposeTask(String name) {
    return 'Creating compose $name';
  }

  @override
  String containers_updatingComposeTask(String name) {
    return 'Updating compose $name';
  }

  @override
  String get containers_retryFailed => 'Retry failed';

  @override
  String get containers_newCompose => 'New Compose';

  @override
  String containers_editComposeTitle(String name) {
    return 'Edit Compose $name';
  }

  @override
  String get containers_folderNameRequiredPlaceholder =>
      'Folder name (required)';

  @override
  String get containers_savePathLabel => 'Save path:';

  @override
  String get containers_composeConfig => 'Compose Configuration';

  @override
  String get containers_extraEnvVars => 'Extra Environment Variables';

  @override
  String get containers_createOptions => 'Create Options';

  @override
  String get containers_updateOptions => 'Update Options';

  @override
  String get containers_forcePullImage => 'Force Pull Image';

  @override
  String get containers_forcePullImageSubtitle =>
      'Ignore existing server images and pull from the remote repository again';

  @override
  String get containers_tapAddEnvVar =>
      'Tap to add extra environment variables';

  @override
  String get containers_addEnvVarItem => 'Add Environment Variable';

  @override
  String get containers_loadComposeConfigFailed =>
      'Failed to load compose configuration';

  @override
  String get containers_defaultDriver => 'Default driver';

  @override
  String get containers_systemNetworkCannotDelete =>
      'System networks cannot be deleted';

  @override
  String get containers_deleteNetworkSubtitle =>
      'Permanently delete this network';

  @override
  String get containers_inspectOverview => 'Inspect Overview';

  @override
  String get containers_networkId => 'Network ID';

  @override
  String get containers_driver => 'Driver';

  @override
  String get containers_subnet => 'Subnet';

  @override
  String get containers_createdAt => 'Created At';

  @override
  String get containers_custom => 'Custom';

  @override
  String get containers_readingNetworkDetails => 'Reading network details';

  @override
  String get containers_readFailed => 'Read failed';

  @override
  String get containers_parseFailed => 'Parse failed';

  @override
  String get containers_pruneBuildCache => 'Prune Build Cache';

  @override
  String get containers_pruneBuildCacheConfirm =>
      'This will prune all build cache and free disk space. Continue?';

  @override
  String containers_imageCount(int count) {
    return '$count images';
  }

  @override
  String get containers_batchDeleteImages => 'Delete Images';

  @override
  String get containers_deleteImage => 'Delete Image';

  @override
  String containers_deleteImageConfirm(String name) {
    return 'Delete $name?';
  }

  @override
  String get containers_deleteFailed => 'Delete failed';

  @override
  String get containers_pullImage => 'Pull Image';

  @override
  String get containers_pullFailed => 'Pull failed';

  @override
  String get containers_selectImageFile => 'Select Image File';

  @override
  String get containers_import => 'Import';

  @override
  String get containers_importImage => 'Import Image';

  @override
  String get containers_importFailed => 'Import failed';

  @override
  String containers_buildImageTask(String name) {
    return 'Build image $name';
  }

  @override
  String get containers_buildFailed => 'Build failed';

  @override
  String get containers_updateImage => 'Update Image';

  @override
  String get containers_imageUsed => 'In use';

  @override
  String get containers_imageUnused => 'Unused';

  @override
  String get containers_commonActions => 'Common Actions';

  @override
  String get containers_push => 'Push';

  @override
  String get containers_pushImageSubtitle =>
      'Push the image to a remote repository';

  @override
  String get containers_export => 'Export';

  @override
  String get containers_exportImageSubtitle => 'Export the image as a tar file';

  @override
  String get containers_updateImageSubtitle =>
      'Pull the latest version of this image again';

  @override
  String containers_updateImageConfirm(String tags) {
    return 'The following tags will be pulled again:\n$tags';
  }

  @override
  String get containers_pull => 'Pull';

  @override
  String get containers_tags => 'Tags';

  @override
  String get containers_tagsSubtitle => 'Modify or add image tags';

  @override
  String get containers_removeLocalImageSubtitle =>
      'Remove this image from local storage';

  @override
  String get containers_pruneImages => 'Prune Images';

  @override
  String get containers_prune => 'Prune';

  @override
  String get containers_noImagesToPrune =>
      'There are no images to prune in the current scope';

  @override
  String get containers_selectAtLeastOneImage => 'Select at least one image';

  @override
  String get containers_pruneImagesFailed => 'Prune failed';

  @override
  String get containers_danglingImages => 'Dangling Images';

  @override
  String get containers_unusedImages => 'Unused Images';

  @override
  String containers_prunableImageCount(int count) {
    return '$count prunable images';
  }

  @override
  String get containers_selectAll => 'Select All';

  @override
  String get containers_loadImageListFailed => 'Failed to load image list';

  @override
  String get containers_selectDockerfile => 'Select Dockerfile';

  @override
  String get containers_imageNameRequired => 'Image name is required';

  @override
  String get containers_dockerfileContentRequired => 'Enter Dockerfile content';

  @override
  String get containers_dockerfilePathRequired => 'Select a Dockerfile path';

  @override
  String get containers_buildImage => 'Build Image';

  @override
  String get containers_build => 'Build';

  @override
  String get containers_imageNamePlaceholder =>
      'Image name (required, e.g. myapp:latest)';

  @override
  String get containers_manualInput => 'Manual Input';

  @override
  String get containers_serverPath => 'Server Path';

  @override
  String get containers_dockerfilePathPlaceholder =>
      'Select or enter a Dockerfile path';

  @override
  String get containers_additionalOptionsOptional =>
      'Additional Options (optional)';

  @override
  String get containers_tagsMultilinePlaceholder => 'Tags (one per line)';

  @override
  String get containers_argsMultilinePlaceholder =>
      'Args (one per line, e.g. HTTP_PROXY=http://x.x.x.x)';

  @override
  String get containers_containerList => 'Container List';

  @override
  String get containers_searchContainers => 'Search containers...';

  @override
  String get containers_more => 'More';

  @override
  String get containers_sortByCpu => 'Sort by CPU Usage';

  @override
  String get containers_sortByMemory => 'Sort by Memory Usage';

  @override
  String get containers_restoreDefaultSort => 'Restore Default Sort';

  @override
  String get containers_loadContainersFailed => 'Failed to load containers';

  @override
  String get containers_containerCompose => 'Container Compose';

  @override
  String get containers_searchCompose => 'Search compose...';

  @override
  String get containers_createCompose => 'Create Compose';

  @override
  String get containers_refreshList => 'Refresh List';

  @override
  String get containers_noComposeFound => 'No compose found';

  @override
  String get containers_noCompose => 'No compose';

  @override
  String get containers_tryAnotherKeyword => 'Try another keyword';

  @override
  String get containers_noComposeSubtitle =>
      'You have not created any Docker Compose projects';

  @override
  String get containers_loadComposeListFailed => 'Failed to load compose list';

  @override
  String get containers_selectExportDirectory => 'Select Export Directory';

  @override
  String get containers_imageNoAvailableTag => 'Image has no available tag';

  @override
  String get containers_selectExportDirectoryRequired =>
      'Select an export directory';

  @override
  String get containers_enterFileName => 'Enter a file name';

  @override
  String get containers_exportImage => 'Export Image';

  @override
  String get containers_exportFailed => 'Export failed';

  @override
  String get containers_localTag => 'Local Tag';

  @override
  String get containers_saveDirectory => 'Save Directory';

  @override
  String get containers_selectServerDirectory => 'Select a server directory';

  @override
  String get containers_fileName => 'File Name';

  @override
  String get containers_imageExportFilePlaceholder =>
      'e.g. my-backup (without .tar)';

  @override
  String get containers_pushNameRequired => 'Enter a push name';

  @override
  String get containers_pushImage => 'Push Image';

  @override
  String get containers_pushFailed => 'Push failed';

  @override
  String get containers_noRepoConfigured => 'No repository configured';

  @override
  String get containers_pushName => 'Push Name';

  @override
  String get containers_pushNamePlaceholder => 'e.g. myimage:latest';

  @override
  String get containers_addAtLeastOneTag => 'Add at least one tag';

  @override
  String get containers_editTagsFailed => 'Failed to edit tags';

  @override
  String get containers_editTags => 'Edit Tags';

  @override
  String get containers_imageId => 'Image ID';

  @override
  String get containers_tagList => 'Tag List';

  @override
  String get containers_addTag => 'Add Tag';

  @override
  String get containers_tagEditHint =>
      'Tip: after submitting, the app compares with existing tags and adds or removes Docker tags accordingly.';

  @override
  String get containers_tagPlaceholder => 'e.g. nginx:latest';

  @override
  String get containers_enterNewImageName => 'Enter a new image name';

  @override
  String get containers_imageNameInvalid => 'Invalid image name format';

  @override
  String get containers_imageNameInvalidDescription =>
      'Use letters, numbers, :@/.-_, and do not start with a special character';

  @override
  String get containers_submitFailed => 'Submit failed';

  @override
  String get containers_newImageName => 'New Image Name';

  @override
  String get containers_newImageNamePlaceholder => 'e.g. my-nginx:v1.0';

  @override
  String get containers_commitInfo => 'Commit Message';

  @override
  String get containers_optionalDescription => 'Optional description';

  @override
  String get containers_author => 'Author';

  @override
  String get containers_optionalAuthor => 'Optional author information';

  @override
  String get containers_pauseDuringCommit => 'Pause container during commit';

  @override
  String get containers_pauseDuringCommitSubtitle =>
      'Enable this to ensure data consistency';

  @override
  String get containers_targetImageRequired => 'Enter a target image';

  @override
  String get containers_submitUpgradeFailed => 'Failed to submit upgrade';

  @override
  String get containers_targetImage => 'Target Image';

  @override
  String get containers_upgradeDataLossWarning =>
      'Upgrade rebuilds the container. Any data that is not persisted will be lost.';

  @override
  String containers_intervalSeconds(int seconds) {
    return '$seconds sec';
  }

  @override
  String get containers_cpuUsage => 'CPU Usage';

  @override
  String get containers_memoryUsage => 'Memory Usage';

  @override
  String get containers_networkTraffic => 'Network Traffic (RX / TX)';

  @override
  String get containers_diskIo => 'Disk I/O (Read / Write)';

  @override
  String get containers_searchNetworks => 'Search networks...';

  @override
  String get containers_systemNetwork => 'System Network';

  @override
  String get containers_networkOperations => 'Network Operations';

  @override
  String get containers_viewDetails => 'View Details';

  @override
  String get containers_viewNetworkDetailsSubtitle =>
      'View network configuration details';

  @override
  String get containers_pruneUnusedNetworks => 'Prune Unused Networks';

  @override
  String get containers_pruneUnusedNetworksSubtitle =>
      'Prune all unused networks';

  @override
  String get containers_getDetailsFailed => 'Failed to get details';

  @override
  String get containers_noNetworkFound => 'No networks found';

  @override
  String get containers_noNetwork => 'No networks';

  @override
  String get containers_noNetworkSubtitle => 'There are no Docker networks';

  @override
  String get containers_loadNetworkListFailed => 'Failed to load network list';

  @override
  String get containers_deleteNetwork => 'Delete Network';

  @override
  String containers_deleteNetworkConfirm(String name) {
    return 'Delete network \"$name\"?';
  }

  @override
  String containers_deleteNetworksConfirm(int count) {
    return 'Delete the selected $count networks?';
  }

  @override
  String get containers_deleteSuccess => 'Deleted';

  @override
  String get containers_pruneUnusedNetworksConfirm =>
      'This will prune all unused networks. Continue?';

  @override
  String get containers_pruneNetworks => 'Prune Networks';

  @override
  String get containers_pruneNetworksFailed => 'Prune failed';

  @override
  String get containers_statusNormal => 'Normal';

  @override
  String get containers_statusAbnormal => 'Abnormal';

  @override
  String get containers_repoOperations => 'Repository Operations';

  @override
  String get containers_editRepoSubtitle =>
      'Modify repository address and authentication information';

  @override
  String get containers_sync => 'Sync';

  @override
  String get containers_syncRepoSubtitle =>
      'Check repository connection status';

  @override
  String get containers_deleteRepo => 'Delete Repository';

  @override
  String get containers_deleteRepoSubtitle =>
      'Permanently delete this repository';

  @override
  String get containers_deleteRepoConfirm => 'Delete this image repository?';

  @override
  String get containers_syncSuccess => 'Sync succeeded';

  @override
  String get containers_syncFailed => 'Sync failed';

  @override
  String get containers_searchRepos => 'Search repositories...';

  @override
  String get containers_noRepoFound => 'No repositories found';

  @override
  String get containers_noRepo => 'No repositories';

  @override
  String get containers_noRepoSubtitle =>
      'You have not added any image repositories';

  @override
  String get containers_loadRepoListFailed => 'Failed to load repository list';

  @override
  String get containers_auth => 'Auth';

  @override
  String get containers_searchTemplates => 'Search templates...';

  @override
  String get containers_createTemplate => 'Create Template';

  @override
  String get containers_editTemplate => 'Edit Template';

  @override
  String get containers_importTemplate => 'Import Templates';

  @override
  String get containers_exportAll => 'Export All';

  @override
  String get containers_noTemplatesToExport => 'No templates to export';

  @override
  String get containers_noTemplateFound => 'No templates found';

  @override
  String get containers_noTemplate => 'No templates';

  @override
  String get containers_noTemplateSubtitle =>
      'You have not created any compose templates';

  @override
  String get containers_loadTemplateListFailed =>
      'Failed to load template list';

  @override
  String get containers_templateUpdated => 'Template updated';

  @override
  String get containers_templateCreated => 'Template created';

  @override
  String get containers_templateNameRequiredPlaceholder =>
      'Template name (required)';

  @override
  String get containers_templateDescriptionOptional =>
      'Template description (optional)';

  @override
  String get containers_composeContent => 'Compose Content';

  @override
  String get containers_template => 'Template';

  @override
  String get containers_templateOperations => 'Template Operations';

  @override
  String get containers_editTemplateSubtitle =>
      'Modify template name, description, and content';

  @override
  String get containers_viewContent => 'View Content';

  @override
  String get containers_viewYamlSubtitle => 'View YAML configuration content';

  @override
  String get containers_deleteTemplateSubtitle =>
      'Permanently delete this template';

  @override
  String get containers_cannotReadFile => 'Unable to read file';

  @override
  String get containers_readFileFailed => 'Failed to read file';

  @override
  String get containers_jsonRootArrayRequired =>
      'Invalid JSON: root node must be an array';

  @override
  String get containers_noValidTemplateData => 'No valid template data found';

  @override
  String containers_importTemplatesSuccess(int count) {
    return 'Successfully imported $count templates';
  }

  @override
  String get containers_batchDeleteTemplates => 'Delete Templates';

  @override
  String get containers_deleteTemplate => 'Delete Template';

  @override
  String get containers_deleteTemplateConfirm => 'Delete this template?';

  @override
  String containers_deleteTemplatesConfirm(int count) {
    return 'Delete $count templates?';
  }

  @override
  String get containers_logRotationParams => 'Rotation Parameters';

  @override
  String get containers_logSizeLimit => 'Log size limit';

  @override
  String get containers_logSizeExample => 'e.g. 10m, 100m, 1g';

  @override
  String get containers_maxLogFiles => 'Max log files';

  @override
  String get containers_maxLogFilesExample => 'e.g. 3, 5, 10';

  @override
  String get containers_dockerRestartApplyConfig =>
      'Docker will restart automatically to apply the new configuration.';

  @override
  String containers_currentValue(String value) {
    return 'Current: $value';
  }

  @override
  String get containers_cgroupFsDriverDesc => 'Traditional cgroup driver';

  @override
  String get containers_cgroupSystemdDriverDesc => 'systemd integrated driver';

  @override
  String get containers_inputAddress => 'Enter address';

  @override
  String get containers_noData => 'No data';

  @override
  String get containers_pullFromRepo => 'Pull from image repository';

  @override
  String get containers_selectRepo => 'Select Repository';

  @override
  String get containers_pullNow => 'Pull Now';

  @override
  String get containers_searchImages => 'Search image name...';

  @override
  String get containers_noImages => 'No images';

  @override
  String get containers_noMatchingImages => 'No matching images found';

  @override
  String get containers_imagesEmptySubtitle =>
      'View and manage local Docker images here';

  @override
  String get containers_trySearchKeyword => 'Try another search keyword';

  @override
  String get containers_loadImagesFailed => 'Failed to load images';

  @override
  String get containers_memory => 'Memory';

  @override
  String get containers_workDir => 'Working Directory';

  @override
  String get containers_appStoreSource => 'App Store';

  @override
  String get containers_localSource => 'Local';

  @override
  String get containers_deleteCompose => 'Delete Compose';

  @override
  String get containers_confirmDelete => 'Confirm Delete';

  @override
  String containers_deleteComposeConfirm(String name) {
    return 'Delete compose $name?';
  }

  @override
  String get containers_deleteFiles => 'Delete Files';

  @override
  String get containers_deleteFilesSubtitle =>
      'Delete all files for this compose, including configuration and persistent files. Use with caution.';

  @override
  String get containers_forceDelete => 'Force Delete';

  @override
  String get containers_forceDeleteSubtitle =>
      'Ignore errors during deletion and remove metadata at the end';

  @override
  String get containers_openTerminalFailed => 'Unable to open terminal';

  @override
  String get containers_composeNoAvailableContainer =>
      'No available containers in this compose';

  @override
  String get containers_selectContainer => 'Select Container';

  @override
  String get containers_selectContainerMessage =>
      'Select a container to enter its terminal';

  @override
  String get containers_getContainerIdFailed => 'Failed to get container id';

  @override
  String get containers_loadOverviewFailed =>
      'Failed to load container overview';

  @override
  String get containers_loadMoreBackupsFailed => 'Failed to load more backups';

  @override
  String get databases_management => 'Database Management';

  @override
  String get databases_changePassword => 'Change Password';

  @override
  String get databases_changePasswordSubtitle => 'Change database password';

  @override
  String get databases_access => 'Access';

  @override
  String get databases_accessSubtitle => 'Manage database access permissions';

  @override
  String get databases_backupList => 'Backups';

  @override
  String get databases_backupListSubtitle => 'View and manage database backups';

  @override
  String get databases_importBackup => 'Import Backup';

  @override
  String get databases_importBackupSubtitle =>
      'Restore database from a backup file';

  @override
  String get databases_dangerZone => 'Danger Zone';

  @override
  String get databases_deleteSubtitle => 'Permanently delete this database';

  @override
  String get databases_connectionInfo => 'Connection Info';

  @override
  String databases_loadFailedWithError(Object error) {
    return 'Load failed: $error';
  }

  @override
  String get databases_enableRemoteAccess => 'Enable Remote Access';

  @override
  String get databases_disableRemoteAccess => 'Disable Remote Access';

  @override
  String get databases_enableRemoteAccessContent =>
      'After enabling this, the root user can connect to this database from any host. Enable only when necessary.';

  @override
  String get databases_disableRemoteAccessContent =>
      'After disabling this, the root user can connect only from localhost.';

  @override
  String get databases_enable => 'Enable';

  @override
  String get databases_disable => 'Disable';

  @override
  String get databases_remoteAccessEnabled => 'Remote access enabled';

  @override
  String get databases_remoteAccessDisabled => 'Remote access disabled';

  @override
  String get databases_operationFailed => 'Operation failed';

  @override
  String get databases_containerConnection => 'Container Internal Connection';

  @override
  String get databases_externalConnection => 'External / Remote Connection';

  @override
  String get databases_address => 'Address';

  @override
  String get databases_port => 'Port';

  @override
  String get databases_accessPermissions => 'Access Permissions';

  @override
  String get databases_adminCredentials => 'Admin Credentials';

  @override
  String get databases_username => 'Username';

  @override
  String get databases_password => 'Password';

  @override
  String get databases_remoteAccess => 'Remote Access';

  @override
  String get databases_enabled => 'Enabled';

  @override
  String get databases_disabled => 'Disabled';

  @override
  String get databases_connectionAddress => 'Connection Address';

  @override
  String get databases_authentication => 'Authentication';

  @override
  String get databases_instanceNotRunning => 'Instance is not running';

  @override
  String databases_instanceStatusMessage(String status) {
    return 'Current database instance status: $status\nStart the instance before managing databases.';
  }

  @override
  String get databases_checkFailed => 'Check failed';

  @override
  String get databases_deleted => 'Database deleted';

  @override
  String get databases_deleteFailed => 'Delete failed';

  @override
  String get databases_deleteDatabase => 'Delete Database';

  @override
  String get databases_deleteBlocked =>
      'The following resources are using this database. Remove the associations before deleting it.';

  @override
  String databases_deleteWarning(String name) {
    return 'This will permanently delete database \"$name\" and all of its data. This cannot be recovered.';
  }

  @override
  String databases_deleteConfirmInput(String name) {
    return 'Enter database name \"$name\" to confirm deletion';
  }

  @override
  String get databases_forceDelete => 'Force Delete';

  @override
  String get databases_forceDeleteSubtitle =>
      'Continue removing the panel record even if database-side deletion fails';

  @override
  String get databases_deleteBackups => 'Delete backups too';

  @override
  String get databases_deleteBackupsSubtitle =>
      'Delete all backup files and records for this database';

  @override
  String get databases_confirmDelete => 'Confirm Delete';

  @override
  String get databases_enterNewPassword => 'Enter a new password';

  @override
  String get databases_passwordNoSpaces => 'Password cannot contain spaces';

  @override
  String get databases_passwordMinLength =>
      'Password must be at least 6 characters';

  @override
  String get databases_confirmPasswordChange => 'Confirm Password Change';

  @override
  String databases_passwordChangeUsedWarning(String resources) {
    return 'This database is used by websites or apps:\n$resources\n\nChanging the password may affect related services. Continue?';
  }

  @override
  String get databases_passwordChanged => 'Password changed';

  @override
  String get databases_passwordChangeFailed => 'Password change failed';

  @override
  String get databases_newPassword => 'New Password';

  @override
  String get databases_passwordChangeHint =>
      'Password cannot contain spaces. Update related app configuration after changing it.';

  @override
  String get databases_confirmChange => 'Confirm Change';

  @override
  String databases_backupSheetTitle(String name) {
    return '$name Backups';
  }

  @override
  String get databases_loadBackupsFailed => 'Failed to load backups';

  @override
  String get databases_runBackup => 'Run Backup';

  @override
  String get databases_createBackupFailed => 'Failed to create backup';

  @override
  String get databases_noRemark => 'No remark';

  @override
  String get databases_download => 'Download';

  @override
  String get databases_restore => 'Restore';

  @override
  String get databases_directory => 'Directory';

  @override
  String get databases_backupDirectoryEmpty => 'Backup directory is empty';

  @override
  String get databases_restoreBackup => 'Restore Backup';

  @override
  String get databases_restoreBackupFailed => 'Failed to restore backup';

  @override
  String get databases_deleteBackup => 'Delete Backup';

  @override
  String databases_deleteBackupConfirm(String fileName) {
    return 'Delete backup file $fileName? This action cannot be undone.';
  }

  @override
  String get databases_deletedBackup => 'Backup deleted';

  @override
  String get databases_deleteBackupFailed => 'Failed to delete backup';

  @override
  String get databases_compressionPassword => 'Compression Password';

  @override
  String get databases_optional => 'Optional';

  @override
  String get databases_remarkDescription => 'Remark';

  @override
  String get databases_backupArgs => 'Backup Arguments';

  @override
  String get databases_startBackup => 'Start Backup';

  @override
  String get databases_restorePasswordHint =>
      'Leave blank if the backup has no compression password.';

  @override
  String get databases_restorePassword => 'Restore Password';

  @override
  String get databases_startRestore => 'Start Restore';

  @override
  String get databases_uploadFromLocal => 'Upload from Local';

  @override
  String get databases_chooseFromServer => 'Choose from Server';

  @override
  String get databases_uploadFailed => 'Upload failed';

  @override
  String get databases_selectBackupFile => 'Select Backup File';

  @override
  String get databases_supportedBackupFormats =>
      'Supported formats: .sql, .sql.gz, .tar.gz, .zip';

  @override
  String get databases_noBackupFiles => 'No backup files';

  @override
  String get databases_addBackupFileHint =>
      'Tap + in the top right to add a backup file';

  @override
  String get databases_restoreFailed => 'Restore failed';

  @override
  String get databases_deleteFile => 'Delete File';

  @override
  String databases_deleteFileConfirm(String fileName) {
    return 'Delete $fileName?';
  }

  @override
  String get databases_serverFile => 'Server File';

  @override
  String get databases_restorePasswordOptional => 'Restore password (optional)';

  @override
  String get databases_unbound => 'Unbound';

  @override
  String get databases_unbindFailed => 'Unbind failed';

  @override
  String get databases_unbindRemoteInstance => 'Unbind Remote Instance';

  @override
  String databases_unbindWarning(String name) {
    return 'This will remove remote connection \"$name\". The panel will no longer manage this instance.';
  }

  @override
  String databases_unbindConfirmInput(String name) {
    return 'Enter name \"$name\" to confirm unbind';
  }

  @override
  String get databases_forceUnbind => 'Force Unbind';

  @override
  String get databases_forceUnbindSubtitle =>
      'Continue removing the panel record even if remote instance operations fail';

  @override
  String get databases_deleteInstanceBackupsSubtitle =>
      'Delete all backup files and records for this instance';

  @override
  String get databases_confirmUnbind => 'Confirm Unbind';

  @override
  String get databases_remote => 'Remote';

  @override
  String get databases_local => 'Local';

  @override
  String databases_createdAt(String time) {
    return 'Created at $time';
  }

  @override
  String get databases_none => 'None';

  @override
  String get databases_emptyTitle => 'No databases';

  @override
  String get databases_emptySubtitle =>
      'This instance has no databases yet\nUse the top-right menu to create one';

  @override
  String get databases_createDatabase => 'Create Database';

  @override
  String get databases_databaseName => 'Database Name';

  @override
  String get databases_enterDatabaseName => 'Enter database name';

  @override
  String get databases_databaseNameNoSpaces =>
      'Database name cannot contain spaces';

  @override
  String get databases_databaseNameAllowedChars =>
      'Database name can only contain letters, numbers, and underscores';

  @override
  String get databases_enterUsername => 'Enter username';

  @override
  String get databases_localRootUsernameForbidden =>
      'Local databases cannot use root as the username';

  @override
  String get databases_enterPassword => 'Enter password';

  @override
  String get databases_enterIpOrCidr => 'Enter IP address or CIDR range';

  @override
  String get databases_ipNoSpaces => 'IP cannot contain spaces';

  @override
  String get databases_created => 'Database created';

  @override
  String get databases_createFailed => 'Create failed';

  @override
  String get databases_basicInfo => 'Basic Info';

  @override
  String get databases_charset => 'Character Set';

  @override
  String get databases_collation => 'Collation';

  @override
  String get databases_default => 'Default';

  @override
  String get databases_collationHint =>
      'Leave blank to use the default collation for the character set';

  @override
  String get databases_grantScope => 'Grant Scope';

  @override
  String get databases_anyHost => 'Any Host (%)';

  @override
  String get databases_localhostOnly => 'Localhost Only (localhost)';

  @override
  String get databases_specifiedIp => 'Specified IP';

  @override
  String get databases_ipAddress => 'IP Address';

  @override
  String get databases_ipExample => 'Example: 192.168.1.0/24';

  @override
  String get databases_descriptionOptional => 'Description (Optional)';

  @override
  String get databases_description => 'Description';

  @override
  String get databases_optionalRemark => 'Optional remark';

  @override
  String get databases_encoding => 'Encoding';

  @override
  String get databases_superUser => 'Superuser';

  @override
  String get databases_superUserHint =>
      'After enabling this, the user will have PostgreSQL superuser privileges';

  @override
  String get databases_currentPermission => 'Current Permission';

  @override
  String get databases_unset => 'Unset';

  @override
  String databases_specificIpValue(String ip) {
    return 'Specified IP ($ip)';
  }

  @override
  String get databases_anyHostShort => 'Any Host';

  @override
  String get databases_localhostOnlyShort => 'Localhost Only';

  @override
  String get databases_accessChanged => 'Access permission changed';

  @override
  String get databases_accessChangeFailed =>
      'Failed to change access permission';

  @override
  String get databases_ipCidrHint =>
      'Supports a single IP or CIDR range, such as 192.168.1.100 or 10.0.0.0/8';

  @override
  String get databases_multipleIpHint =>
      'Separate multiple IPs with commas, e.g. 172.16.10.111,172.16.10.112';

  @override
  String get databases_portRange => 'Port range 1-65535';

  @override
  String get databases_portUnchanged => 'Port unchanged';

  @override
  String databases_portChanged(int port) {
    return 'Port changed to $port';
  }

  @override
  String get databases_changeFailed => 'Change failed';

  @override
  String get databases_portSettings => 'Port Settings';

  @override
  String get databases_portChangeHint =>
      'After changing the port, the database service will restart automatically. Make sure the new port is not occupied.';

  @override
  String get databases_invalidSlowLogThreshold =>
      'Enter a valid threshold (seconds)';

  @override
  String get databases_noChanges => 'No changes';

  @override
  String get databases_slowLogSaved => 'Slow log configuration saved';

  @override
  String get databases_saveFailed => 'Save failed';

  @override
  String get databases_noSlowQueryRecords => 'No slow query records';

  @override
  String get databases_slowQueryLog => 'Slow Query Log';

  @override
  String get databases_readFailed => 'Read failed';

  @override
  String get databases_slowLog => 'Slow Log';

  @override
  String get databases_slowLogHint =>
      'After enabling this, SQL statements whose execution time exceeds the threshold will be recorded in the slow query log. Lower thresholds record more queries and may affect performance.';

  @override
  String get databases_logRecords => 'Log Records';

  @override
  String get databases_viewRecords => 'View Records';

  @override
  String get databases_enableSlowQueryLog => 'Enable Slow Query Log';

  @override
  String get databases_thresholdSeconds => 'Threshold (seconds)';

  @override
  String get databases_thresholdHint =>
      'Queries exceeding this time will be recorded';

  @override
  String get databases_loadMoreBackupsFailed => 'Failed to load more backups';

  @override
  String get databases_downloadPathUnavailable =>
      'Unable to get server download path';

  @override
  String get databases_downloadedFileEmpty =>
      'File download failed or is empty';

  @override
  String get databases_downloadShareFailed => 'Download/share failed';

  @override
  String get databases_fileCopiedToImportDir =>
      'File copied to import directory';

  @override
  String get databases_copyFileFailed => 'Failed to copy file';

  @override
  String get databases_fileUploaded => 'File uploaded';

  @override
  String get databases_uploadFileFailed => 'Failed to upload file';

  @override
  String get databases_fileDeleted => 'File deleted';

  @override
  String get databases_deleteFileFailed => 'Failed to delete file';

  @override
  String get databases_stateNotReady => 'State is not ready';

  @override
  String get databases_notRunning => 'Database is not running';

  @override
  String get databases_connectionManagement => 'Connection Management';

  @override
  String get databases_editConnection => 'Edit Connection';

  @override
  String get databases_editConnectionSubtitle =>
      'Modify remote connection configuration';

  @override
  String get databases_operations => 'Operations';

  @override
  String get databases_unbind => 'Unbind';

  @override
  String get databases_unbindRemoteDatabase => 'Unbind remote database';

  @override
  String get databases_config => 'Configuration';

  @override
  String get databases_configFile => 'Config File';

  @override
  String get databases_configFileSubtitle =>
      'View and modify configuration file';

  @override
  String get databases_performance => 'Performance';

  @override
  String get databases_performanceTuning => 'Performance Tuning';

  @override
  String get databases_performanceParamsSaved => 'Performance parameters saved';

  @override
  String databases_versionValue(String version) {
    return 'Version $version';
  }

  @override
  String get databases_installPath => 'Install Path';

  @override
  String get databases_container => 'Container';

  @override
  String get databases_basicParams => 'Basic Parameters';

  @override
  String get databases_startTime => 'Start Time';

  @override
  String get databases_totalConnections => 'Total Connections';

  @override
  String get databases_sent => 'Sent';

  @override
  String get databases_received => 'Received';

  @override
  String get databases_queriesPerSecond => 'Queries per Second';

  @override
  String get databases_transactionsPerSecond => 'Transactions per Second';

  @override
  String get databases_performanceParams => 'Performance Parameters';

  @override
  String get databases_threadCacheHitRate => 'Thread Cache Hit Rate';

  @override
  String get databases_indexHitRate => 'Index Hit Rate';

  @override
  String get databases_innodbIndexHitRate => 'InnoDB Index Hit Rate';

  @override
  String get databases_queryCacheHitRate => 'Query Cache Hit Rate';

  @override
  String get databases_tmpDiskTables => 'Temporary Tables on Disk';

  @override
  String get databases_openTables => 'Open Tables';

  @override
  String get databases_noIndexUsage => 'No Index Usage';

  @override
  String get databases_noIndexJoin => 'No Index JOIN';

  @override
  String get databases_sortMergePasses => 'Sort Merge Passes';

  @override
  String get databases_tableLocks => 'Table Locks';

  @override
  String get databases_qpsHighHint => 'If too high, increase max_connections';

  @override
  String get databases_threadCacheLowHint =>
      'If too low, increase thread_cache_size';

  @override
  String get databases_keyBufferLowHint =>
      'If too low, increase key_buffer_size';

  @override
  String get databases_innodbBufferLowHint =>
      'If too low, increase innodb_buffer_pool_size';

  @override
  String get databases_queryCacheLowHint =>
      'If too low, increase query_cache_size';

  @override
  String get databases_tmpDiskTablesHighHint =>
      'If too high, try increasing tmp_table_size';

  @override
  String get databases_tableOpenCacheHint =>
      'table_open_cache should be greater than or equal to this value';

  @override
  String get databases_indexCheckHint =>
      'If not 0, check whether table indexes are reasonable';

  @override
  String get databases_sortBufferHighHint =>
      'If too high, increase sort_buffer_size';

  @override
  String get databases_tableLocksHighHint =>
      'If too high, consider increasing database performance';

  @override
  String get databases_runningStatus => 'Running Status';

  @override
  String get databases_runningDays => 'Running Days';

  @override
  String databases_daysValue(String days) {
    return '$days days';
  }

  @override
  String get databases_listeningPort => 'Listening Port';

  @override
  String get databases_connectedClients => 'Connected Clients';

  @override
  String get databases_memoryRss => 'Memory (RSS)';

  @override
  String get databases_memoryUsed => 'Memory Used';

  @override
  String get databases_memoryPeak => 'Memory Peak';

  @override
  String get databases_fragmentationRatio => 'Fragmentation Ratio';

  @override
  String get databases_totalCommands => 'Total Commands';

  @override
  String get databases_opsPerSecond => 'Ops per Second';

  @override
  String get databases_hits => 'Hits';

  @override
  String get databases_misses => 'Misses';

  @override
  String get databases_hitRate => 'Hit Rate';

  @override
  String get databases_latestForkTime => 'Latest Fork Time';

  @override
  String get databases_memoryRssHint =>
      'Memory requested from the operating system';

  @override
  String get databases_memoryUsedHint => 'Current memory used by Redis';

  @override
  String get databases_memoryPeakHint => 'Peak Redis memory usage';

  @override
  String get databases_fragmentationRatioHint =>
      'If too high, try increasing tmp_table_size';

  @override
  String get databases_totalConnectionsHint =>
      'Total number of clients connected since startup';

  @override
  String get databases_totalCommandsHint =>
      'Total number of commands executed since startup';

  @override
  String get databases_opsPerSecondHint =>
      'Number of commands executed per second';

  @override
  String get databases_hitsHint => 'Number of successful database key lookups';

  @override
  String get databases_missesHint => 'Number of failed database key lookups';

  @override
  String get databases_hitRateHint => 'Database key lookup hit rate';

  @override
  String get databases_latestForkTimeHint =>
      'Microseconds spent by the latest fork() operation';

  @override
  String get databases_perfGroupConnection => 'Connection';

  @override
  String get databases_perfGroupBuffer => 'Buffer';

  @override
  String get databases_perfGroupQuery => 'Query';

  @override
  String get databases_perfGroupOther => 'Other';

  @override
  String get databases_perfGroupMemory => 'Memory';

  @override
  String get databases_perfMaxConnections => 'Max Connections';

  @override
  String get databases_perfThreadCacheSize => 'Thread Cache Size';

  @override
  String get databases_perfThreadStackSize =>
      'Connections, stack size per thread';

  @override
  String get databases_perfJoinBufferSize => 'Connections, join buffer size';

  @override
  String get databases_perfSortBufferSize =>
      'Connections, sort buffer per thread';

  @override
  String get databases_perfReadBufferSize => 'Connections, read buffer size';

  @override
  String get databases_perfReadRndBufferSize =>
      'Connections, random read buffer size';

  @override
  String get databases_perfTmpTableSize => 'Temporary table cache size';

  @override
  String get databases_perfMaxHeapTableSize => 'Memory table limit';

  @override
  String get databases_perfInnodbBufferPoolSize => 'InnoDB buffer pool size';

  @override
  String get databases_perfInnodbLogBufferSize => 'InnoDB log buffer size';

  @override
  String get databases_perfKeyBufferSize => 'Index buffer size';

  @override
  String get databases_perfTableOpenCache => 'Table cache';

  @override
  String get databases_perfQueryCacheSize => 'Query cache size';

  @override
  String get databases_perfQueryCacheType => 'Query cache type';

  @override
  String get databases_perfBinlogCacheSize =>
      'Connections, binary log cache size (multiple of 4096)';

  @override
  String get databases_perfRedisTimeoutDesc =>
      'Client idle timeout (seconds), 0 means no timeout';

  @override
  String get databases_perfRedisMaxclientsDesc =>
      'Maximum number of concurrent clients';

  @override
  String get databases_perfRedisMaxmemoryDesc =>
      'Maximum memory limit (bytes), 0 means unlimited';

  @override
  String databases_globalVariablesTuning(String name) {
    return '$name global variable tuning';
  }

  @override
  String get databases_slowLogSubtitle =>
      'Slow query records and threshold configuration';

  @override
  String get databases_network => 'Network';

  @override
  String get databases_databasePort => 'Database Port';

  @override
  String databases_currentListeningPort(Object port) {
    return 'Current listening port: $port';
  }

  @override
  String get databases_maintenance => 'Maintenance';

  @override
  String get databases_containerLogs => 'Container Logs';

  @override
  String get databases_containerLogsSubtitle =>
      'View database runtime logs in real time';

  @override
  String get databases_containerNameUnavailable => 'Container name unavailable';

  @override
  String get databases_configSaved => 'Configuration saved';

  @override
  String get databases_redisConfigFileSubtitle => 'View and modify redis.conf';

  @override
  String get databases_persistence => 'Persistence';

  @override
  String get databases_persistenceConfig => 'Persistence Configuration';

  @override
  String get databases_persistenceConfigSubtitle =>
      'RDB snapshot and AOF log settings';

  @override
  String get databases_aofConfigSaved => 'AOF configuration saved';

  @override
  String get databases_rdbConfigSaved => 'RDB configuration saved';

  @override
  String get databases_secondsRange => 'Seconds range 0-100000';

  @override
  String get databases_countRange => 'Count range 0-100000';

  @override
  String get databases_aofPersistence => 'AOF Persistence';

  @override
  String get databases_enableAof => 'Enable AOF';

  @override
  String get databases_fsyncPolicy => 'fsync Policy';

  @override
  String get databases_aofHint =>
      'Append Only File persists data by recording each write operation, offering stronger data safety.';

  @override
  String get databases_rdbSnapshot => 'RDB Snapshot';

  @override
  String get databases_noRdbRules => 'No rules. RDB persistence is disabled';

  @override
  String get databases_addSnapshotRule => 'Add Snapshot Rule';

  @override
  String get databases_rdbHint =>
      'An RDB snapshot is triggered when any condition is met. Example: at least 1 change within 3600 seconds.';

  @override
  String get databases_secondsPlaceholder => 'Seconds';

  @override
  String get databases_withinSeconds => 'sec';

  @override
  String get databases_countPlaceholder => 'Count';

  @override
  String get databases_changeTimes => 'changes';

  @override
  String get databases_backup => 'Backup';

  @override
  String get databases_redisBackupListSubtitle =>
      'View and manage Redis backups';

  @override
  String get databases_remoteMysqlInstance => 'Remote MySQL Instance';

  @override
  String get databases_remoteMariadbInstance => 'Remote MariaDB Instance';

  @override
  String get databases_remotePostgresqlInstance => 'Remote PostgreSQL Instance';

  @override
  String get databases_instances => 'Database Instances';

  @override
  String get databases_noAvailableDatabases => 'No available databases';

  @override
  String get databases_emptyInstallPrefix =>
      'No database instances are installed on the current server\nGo to ';

  @override
  String get databases_emptyInstallMiddle => ' to install one, or ';

  @override
  String get databases_onlyRemoteDatabases => 'Only remote databases found';

  @override
  String get databases_noLocalRemoteComingSoon =>
      'No local database instances\nRemote database management is coming soon';

  @override
  String get databases_manage => 'Manage';

  @override
  String get databases_new => 'New';

  @override
  String get databases_syncFromServer => 'Sync from Server';

  @override
  String get databases_viewConnectionInfo => 'View Connection Info';

  @override
  String databases_syncFromServerConfirm(String name) {
    return 'Sync the database list from the $name instance to the panel. Deleted records may be restored, and new databases will be imported. Continue?';
  }

  @override
  String get databases_sync => 'Sync';

  @override
  String get databases_syncCompleted => 'Sync completed';

  @override
  String get databases_syncFailed => 'Sync failed';

  @override
  String get databases_enterName => 'Enter name';

  @override
  String get databases_nameNoSpaces => 'Name cannot contain spaces';

  @override
  String get databases_nameAllowedChars =>
      'Name can only contain letters, numbers, underscores, hyphens, and dots';

  @override
  String get databases_enterAddress => 'Enter address';

  @override
  String get databases_enterPort => 'Enter port';

  @override
  String get databases_ipOrDomain => 'IP or domain';

  @override
  String get databases_timeoutRange => 'Timeout range 1-600 seconds';

  @override
  String get databases_sslClientKeyRequired =>
      'Enter client private key when SSL is enabled';

  @override
  String get databases_sslClientCertRequired =>
      'Enter client certificate when SSL is enabled';

  @override
  String get databases_sslCaCertRequired =>
      'Enter CA certificate when CA is enabled';

  @override
  String get databases_connectionFailed => 'Connection failed';

  @override
  String get databases_connectionTimeoutOrError =>
      'Connection timed out or failed';

  @override
  String get databases_remoteDatabaseCreated => 'Remote database created';

  @override
  String get databases_loadConnectionInfoFailed =>
      'Failed to load connection info';

  @override
  String get databases_connectionUpdated => 'Connection updated';

  @override
  String get databases_updateFailed => 'Update failed';

  @override
  String get databases_editRemoteConnection => 'Edit Remote Connection';

  @override
  String get databases_connectionSucceeded => 'Connection succeeded';

  @override
  String get databases_testConnection => 'Test Connection';

  @override
  String get databases_addRemoteMysql => 'Add Remote MySQL';

  @override
  String get databases_addRemoteMariadb => 'Add Remote MariaDB';

  @override
  String get databases_addRemotePostgresql => 'Add Remote PostgreSQL';

  @override
  String get databases_addRemoteRedis => 'Add Remote Redis';

  @override
  String get databases_addRemoteInstance => 'Add Remote Instance';

  @override
  String get databases_name => 'Name';

  @override
  String get databases_remoteNameExample => 'e.g. my-remote-db';

  @override
  String get databases_version => 'Version';

  @override
  String get databases_initialDatabase => 'Initial Database';

  @override
  String get databases_initialDatabasePlaceholder =>
      'Database name used for connection';

  @override
  String get databases_databaseUsernamePlaceholder => 'Database username';

  @override
  String get databases_passwordOptional => 'Password (optional)';

  @override
  String get databases_noPasswordPlaceholder => 'Leave blank if no password';

  @override
  String get databases_skipCertVerify => 'Skip Certificate Verification';

  @override
  String get databases_hasCaCert => 'Has CA Certificate';

  @override
  String get databases_clientPrivateKey => 'Client Private Key';

  @override
  String get databases_clientCertificate => 'Client Certificate';

  @override
  String get databases_caCertificate => 'CA Certificate';

  @override
  String get databases_timeoutSeconds => 'Timeout (seconds)';

  @override
  String get databases_remarkInfo => 'Remark';

  @override
  String get supervisor_title => 'Process Guard';

  @override
  String get supervisor_menuTitle => 'Process Guard';

  @override
  String get supervisor_menuSubtitle =>
      'Manage Supervisor services, process configs, and logs';

  @override
  String get supervisor_serviceStart => 'Start Supervisor';

  @override
  String get supervisor_serviceStop => 'Stop Supervisor';

  @override
  String get supervisor_serviceRestart => 'Restart Supervisor';

  @override
  String get supervisor_initSupervisor => 'Initialize Supervisor';

  @override
  String get supervisor_settings => 'Settings';

  @override
  String supervisor_serviceOperateConfirm(String operation) {
    return 'Confirm $operation for the Supervisor service?';
  }

  @override
  String supervisor_processOperateConfirm(String operation, String name) {
    return 'Confirm $operation for $name?';
  }

  @override
  String get supervisor_operationSuccess => 'Operation succeeded';

  @override
  String get supervisor_operationFailed => 'Operation failed';

  @override
  String get supervisor_refreshFailed => 'Refresh failed';

  @override
  String get supervisor_notReady => 'Supervisor is not ready';

  @override
  String get supervisor_processConfigSubtitle =>
      'Supervisor process configuration';

  @override
  String get supervisor_mainConfig => 'Supervisor Main Config';

  @override
  String get supervisor_mainLog => 'Supervisor Main Log';

  @override
  String get supervisor_configSource => 'Main Config Source';

  @override
  String get supervisor_configSourceSubtitle =>
      'Read and save the supervisord main config';

  @override
  String get supervisor_mainLogSubtitle =>
      'Read the supervisord logfile by line';

  @override
  String get supervisor_baseInit => 'Base / Reinitialize';

  @override
  String get supervisor_baseInitSubtitle =>
      'Main config path and systemctl service name';

  @override
  String get supervisor_processStartSubtitle => 'Start this process group';

  @override
  String get supervisor_processStopSubtitle => 'Stop this process group';

  @override
  String get supervisor_processRestartSubtitle => 'Restart this process group';

  @override
  String get supervisor_configAndLogs => 'Config & Logs';

  @override
  String get supervisor_editSubtitle =>
      'Change command, directory, user, and startup policy';

  @override
  String get supervisor_sourceFile => 'Source File';

  @override
  String get supervisor_sourceFileSubtitle =>
      'View or edit this process ini snippet';

  @override
  String get supervisor_runLogSubtitle => 'View the standard output log';

  @override
  String get supervisor_errorLogSubtitle => 'View the standard error log';

  @override
  String get supervisor_workDir => 'Working Directory';

  @override
  String get supervisor_dangerZone => 'Danger Zone';

  @override
  String get supervisor_deleteSubtitle =>
      'Delete this process config and update Supervisor';

  @override
  String get supervisor_notInstalledTitle => 'supervisord Not Detected';

  @override
  String get supervisor_notInstalledSubtitle =>
      'Install Supervisor on the server first and make sure the systemd service exists.';

  @override
  String get supervisor_ctlMissingTitle => 'supervisorctl Not Detected';

  @override
  String get supervisor_ctlMissingSubtitle =>
      'The process list and process operations depend on supervisorctl.';

  @override
  String get supervisor_needInitTitle => 'Initialization Required';

  @override
  String get supervisor_needInitSubtitle =>
      'Initialization rewrites the [include] files parameter in the main config and restarts the Supervisor service.';

  @override
  String get supervisor_emptyTitle => 'No Guarded Processes';

  @override
  String get supervisor_emptySubtitle =>
      'After creating a process, the corresponding ini config and stdout/stderr log paths are generated.';

  @override
  String get supervisor_serviceStoppedWarn =>
      'The Supervisor service is not running, so process status may be unavailable. Start it from the top-right menu.';

  @override
  String get supervisor_chooseWorkDir => 'Choose Working Directory';

  @override
  String get supervisor_requiredFields => 'Fill in all required fields';

  @override
  String get supervisor_nameRule =>
      'Name supports letters, numbers, - and _, and cannot start with a special character';

  @override
  String get supervisor_numprocsRule =>
      'Process count must be between 1 and 9999';

  @override
  String get supervisor_updateSuccess => 'Updated';

  @override
  String get supervisor_createSuccess => 'Created';

  @override
  String get supervisor_saveFailed => 'Save failed';

  @override
  String get supervisor_createProcess => 'Create Guarded Process';

  @override
  String get supervisor_editProcess => 'Edit Guarded Process';

  @override
  String get supervisor_name => 'Name';

  @override
  String get supervisor_user => 'Run User';

  @override
  String get supervisor_command => 'Start Command';

  @override
  String get supervisor_numprocs => 'Process Count';

  @override
  String get supervisor_environment => 'Environment';

  @override
  String get supervisor_autoRestart => 'Auto Restart';

  @override
  String get supervisor_autoRestartSubtitle =>
      'Supervisor restarts the process after an abnormal exit';

  @override
  String get supervisor_autoStart => 'Auto Start';

  @override
  String get supervisor_autoStartSubtitle =>
      'Start this process automatically when Supervisor starts';

  @override
  String get supervisor_configPathAndServiceRequired =>
      'Enter the main config path and service name';

  @override
  String get supervisor_initSuccess => 'Initialized';

  @override
  String get supervisor_initFailed => 'Initialization failed';

  @override
  String get supervisor_initTitle => 'Initialize Supervisor';

  @override
  String get supervisor_initWarning =>
      'Initialization modifies the [include] files parameter in the main config and restarts the matching systemd service.';

  @override
  String get supervisor_primaryConfig => 'Main Config File';

  @override
  String get supervisor_serviceName => 'Service Name';

  @override
  String get supervisor_clearLog => 'Clear Log';

  @override
  String get supervisor_clearLogConfirm => 'Clear the current log file?';

  @override
  String get supervisor_logCleared => 'Log cleared';

  @override
  String get supervisor_clearFailed => 'Clear failed';

  @override
  String get supervisor_clear => 'Clear';

  @override
  String get supervisor_lineCount => 'Lines';

  @override
  String get supervisor_follow => 'Follow';

  @override
  String get supervisor_runLog => 'Run Log';

  @override
  String get supervisor_errorLog => 'Error Log';

  @override
  String get supervisor_readLogFailed => 'Failed to Read Logs';

  @override
  String get supervisor_emptyLogTitle => 'No Logs';

  @override
  String get supervisor_emptyLogSubtitle =>
      'The log file is empty or has not been generated yet.';

  @override
  String supervisor_processCountShort(String count) {
    return '$count processes';
  }

  @override
  String supervisor_moreChildren(int count) {
    return '$count more child processes';
  }

  @override
  String get supervisor_statusStarting => 'Starting';

  @override
  String get supervisor_statusRunning => 'Running';

  @override
  String get supervisor_statusWarning => 'Partially Running';

  @override
  String get supervisor_statusStopped => 'Stopped';

  @override
  String get supervisor_start => 'Start';

  @override
  String get supervisor_stop => 'Stop';

  @override
  String get supervisor_restart => 'Restart';
}
