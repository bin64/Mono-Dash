import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('zh'),
    Locale('en'),
  ];

  /// Application title shown by the Flutter app.
  ///
  /// In en, this message translates to:
  /// **'Mono Dash'**
  String get app_title;

  /// Generic OK action.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get common_ok;

  /// Generic cancel action.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get common_cancel;

  /// Generic close action.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get common_close;

  /// Generic done action.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get common_done;

  /// Generic delete action.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get common_delete;

  /// Generic refresh action.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get common_refresh;

  /// Generic loading state.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get common_loading;

  /// Option label for following the system setting.
  ///
  /// In en, this message translates to:
  /// **'Follow System'**
  String get common_systemDefault;

  /// Generic confirm action.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get common_confirm;

  /// Generic save action.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get common_save;

  /// Generic toast shown after saving succeeds.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get common_saved;

  /// Generic share action.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get common_share;

  /// Generic create action.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get common_create;

  /// Generic edit action.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get common_edit;

  /// Generic view action.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get common_view;

  /// Generic update action.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get common_update;

  /// Generic use/choose action.
  ///
  /// In en, this message translates to:
  /// **'Use'**
  String get common_use;

  /// Generic retry action.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get common_retry;

  /// Generic back navigation label.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get common_back;

  /// Generic menu label.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get common_menu;

  /// Generic select action.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get common_select;

  /// Generic search action.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get common_search;

  /// Select action with selected item count.
  ///
  /// In en, this message translates to:
  /// **'Select ({count})'**
  String common_selectCount(int count);

  /// Generic count label.
  ///
  /// In en, this message translates to:
  /// **'Count'**
  String get common_count;

  /// Generic description label.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get common_description;

  /// Boolean yes value.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get common_yes;

  /// Boolean no value.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get common_no;

  /// Generic unknown value.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get common_unknown;

  /// Relative time fallback when the timestamp is missing.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get format_relativeUnknown;

  /// Relative time for a future timestamp less than one minute away.
  ///
  /// In en, this message translates to:
  /// **'Soon'**
  String get format_relativeSoon;

  /// Relative time for a past timestamp less than one minute ago.
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get format_relativeJustNow;

  /// Relative time in minutes for future timestamps.
  ///
  /// In en, this message translates to:
  /// **'{n} min later'**
  String format_relativeMinutesLater(int n);

  /// Relative time in hours for future timestamps.
  ///
  /// In en, this message translates to:
  /// **'{n} h later'**
  String format_relativeHoursLater(int n);

  /// Relative time in days for future timestamps.
  ///
  /// In en, this message translates to:
  /// **'{n} d later'**
  String format_relativeDaysLater(int n);

  /// Relative time in minutes for past timestamps.
  ///
  /// In en, this message translates to:
  /// **'{n} min ago'**
  String format_relativeMinutesAgo(int n);

  /// Relative time in hours for past timestamps.
  ///
  /// In en, this message translates to:
  /// **'{n} h ago'**
  String format_relativeHoursAgo(int n);

  /// Relative time in days for past timestamps.
  ///
  /// In en, this message translates to:
  /// **'{n} d ago'**
  String format_relativeDaysAgo(int n);

  /// Relative time in seconds for past timestamps.
  ///
  /// In en, this message translates to:
  /// **'{n} sec ago'**
  String format_relativeSecondsAgo(int n);

  /// Relative time in months for past timestamps.
  ///
  /// In en, this message translates to:
  /// **'{n} mo ago'**
  String format_relativeMonthsAgo(int n);

  /// Relative time in years for past timestamps.
  ///
  /// In en, this message translates to:
  /// **'{n} yr ago'**
  String format_relativeYearsAgo(int n);

  /// Default prefix prepended before a relative backup timestamp.
  ///
  /// In en, this message translates to:
  /// **'Backed up '**
  String get format_timeAgoPrefixBackup;

  /// Generic acknowledgement action.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get common_gotIt;

  /// Picker placeholder when no value is selected.
  ///
  /// In en, this message translates to:
  /// **'Not Selected'**
  String get common_noSelection;

  /// Picker placeholder when no options are available.
  ///
  /// In en, this message translates to:
  /// **'No Options'**
  String get common_noOptions;

  /// Picker placeholder showing multiple selected items.
  ///
  /// In en, this message translates to:
  /// **'{count} selected'**
  String common_selectedCount(int count);

  /// Toast shown after copying text to the clipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get common_copiedToClipboard;

  /// Toast shown after copying error details.
  ///
  /// In en, this message translates to:
  /// **'Error details copied'**
  String get common_errorInfoCopied;

  /// Fallback network error message.
  ///
  /// In en, this message translates to:
  /// **'Network request failed. Please try again later.'**
  String get common_networkRequestFailed;

  /// Fallback generic request error message.
  ///
  /// In en, this message translates to:
  /// **'Request failed. Please try again later.'**
  String get common_requestFailed;

  /// Generic error message when a server record no longer exists.
  ///
  /// In en, this message translates to:
  /// **'Server not found'**
  String get common_serverNotFound;

  /// Error detail status code label.
  ///
  /// In en, this message translates to:
  /// **'Status code: {statusCode}'**
  String common_statusCode(int statusCode);

  /// Default description for todo toasts.
  ///
  /// In en, this message translates to:
  /// **'Feature logic will be connected later'**
  String get common_todoDescription;

  /// Action label to continue editing unsaved content.
  ///
  /// In en, this message translates to:
  /// **'Continue Editing'**
  String get common_continueEditing;

  /// Action label to discard unsaved content.
  ///
  /// In en, this message translates to:
  /// **'Discard'**
  String get common_discard;

  /// Dialog title for discarding unsaved changes.
  ///
  /// In en, this message translates to:
  /// **'Discard changes?'**
  String get common_discardChangesTitle;

  /// Dialog content for unsaved changes.
  ///
  /// In en, this message translates to:
  /// **'Your changes have not been saved. Are you sure you want to leave?'**
  String get common_unsavedChangesContent;

  /// Generic load failure message.
  ///
  /// In en, this message translates to:
  /// **'Load failed'**
  String get common_loadingFailed;

  /// Toast shown when saving fails and details can be copied.
  ///
  /// In en, this message translates to:
  /// **'Save failed (tap to copy details)'**
  String get common_saveFailedCopyDetails;

  /// Empty backup list label.
  ///
  /// In en, this message translates to:
  /// **'No backups'**
  String get common_noBackups;

  /// Label showing reclaimable storage size.
  ///
  /// In en, this message translates to:
  /// **'Reclaimable {size}'**
  String common_reclaimable(String size);

  /// Default file browser picker title.
  ///
  /// In en, this message translates to:
  /// **'Select Path'**
  String get filePicker_selectPath;

  /// File picker directory loading failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load directory'**
  String get filePicker_directoryLoadFailed;

  /// File picker empty directory title.
  ///
  /// In en, this message translates to:
  /// **'Directory is empty'**
  String get filePicker_directoryEmpty;

  /// File picker folder type label.
  ///
  /// In en, this message translates to:
  /// **'Folder'**
  String get filePicker_folder;

  /// File picker generic file type label.
  ///
  /// In en, this message translates to:
  /// **'File'**
  String get filePicker_file;

  /// Task log empty title.
  ///
  /// In en, this message translates to:
  /// **'No logs'**
  String get taskLog_emptyTitle;

  /// Task log file not found title.
  ///
  /// In en, this message translates to:
  /// **'Log file not found'**
  String get taskLog_fileNotFoundTitle;

  /// Task log no record title.
  ///
  /// In en, this message translates to:
  /// **'No records for this task'**
  String get taskLog_noRecordTitle;

  /// Task log no record description.
  ///
  /// In en, this message translates to:
  /// **'This task may not have generated logs yet, or the log file may have been cleaned up.'**
  String get taskLog_noRecordDescription;

  /// Task log read failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to read task logs'**
  String get taskLog_readFailedTitle;

  /// Warning toast shown when there are no logs to export.
  ///
  /// In en, this message translates to:
  /// **'No logs to export'**
  String get taskLog_noExportableLogs;

  /// Error toast title when the share plugin is missing.
  ///
  /// In en, this message translates to:
  /// **'Share plugin is not registered'**
  String get taskLog_sharePluginMissing;

  /// Error toast description when the share plugin is missing.
  ///
  /// In en, this message translates to:
  /// **'Fully stop the app and run it again. Native plugins added later are not registered by hot reload or hot restart.'**
  String get taskLog_sharePluginMissingDescription;

  /// Error toast title when exporting task logs fails.
  ///
  /// In en, this message translates to:
  /// **'Export failed'**
  String get taskLog_exportFailed;

  /// Terminal exec dialog title.
  ///
  /// In en, this message translates to:
  /// **'Connect Terminal'**
  String get terminal_connectTitle;

  /// Terminal exec dialog subtitle with container id.
  ///
  /// In en, this message translates to:
  /// **'Container: {containerId}'**
  String terminal_containerSubtitle(String containerId);

  /// Terminal connect action label.
  ///
  /// In en, this message translates to:
  /// **'Connect'**
  String get terminal_connectAction;

  /// Terminal exec user field label.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get terminal_execUser;

  /// Terminal exec user placeholder.
  ///
  /// In en, this message translates to:
  /// **'Optional, defaults to root'**
  String get terminal_execUserPlaceholder;

  /// Terminal exec command field label.
  ///
  /// In en, this message translates to:
  /// **'Command'**
  String get terminal_execCommand;

  /// Terminal custom command option.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get terminal_custom;

  /// Terminal exec command placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter command'**
  String get terminal_execCommandPlaceholder;

  /// Terminal status message when server info loading fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to get server information'**
  String get terminal_serverInfoFailed;

  /// Terminal output when a connection error occurs.
  ///
  /// In en, this message translates to:
  /// **'Connection error: {error}'**
  String terminal_connectionErrorWithDetail(String error);

  /// Terminal status when a connection error occurs.
  ///
  /// In en, this message translates to:
  /// **'Connection Error'**
  String get terminal_connectionError;

  /// Terminal output when disconnected.
  ///
  /// In en, this message translates to:
  /// **'Disconnected'**
  String get terminal_disconnectedOutput;

  /// Terminal status when disconnected.
  ///
  /// In en, this message translates to:
  /// **'Disconnected'**
  String get terminal_disconnected;

  /// Terminal initialization failure status.
  ///
  /// In en, this message translates to:
  /// **'Initialization failed: {error}'**
  String terminal_initializationFailed(String error);

  /// Host terminal title.
  ///
  /// In en, this message translates to:
  /// **'Terminal - Host'**
  String get terminal_hostTitle;

  /// Database terminal title.
  ///
  /// In en, this message translates to:
  /// **'Terminal - {name}'**
  String terminal_databaseTitle(String name);

  /// Container terminal title.
  ///
  /// In en, this message translates to:
  /// **'Terminal - {containerId}'**
  String terminal_containerTitle(String containerId);

  /// Terminal connecting menu label.
  ///
  /// In en, this message translates to:
  /// **'Connecting'**
  String get terminal_connecting;

  /// Terminal menu item to copy selected text.
  ///
  /// In en, this message translates to:
  /// **'Copy Selection'**
  String get terminal_copySelection;

  /// Terminal menu item to paste clipboard text.
  ///
  /// In en, this message translates to:
  /// **'Paste to Terminal'**
  String get terminal_pasteToTerminal;

  /// Bottom tab label for servers.
  ///
  /// In en, this message translates to:
  /// **'Servers'**
  String get nav_servers;

  /// Bottom tab label for settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get nav_settings;

  /// Bottom tab label for overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get nav_overview;

  /// Bottom tab label for websites.
  ///
  /// In en, this message translates to:
  /// **'Websites'**
  String get nav_websites;

  /// Bottom tab label for files.
  ///
  /// In en, this message translates to:
  /// **'Files'**
  String get nav_files;

  /// Bottom tab label for containers.
  ///
  /// In en, this message translates to:
  /// **'Docker'**
  String get nav_containers;

  /// Bottom tab label for more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get nav_more;

  /// Bottom tab label for processes.
  ///
  /// In en, this message translates to:
  /// **'Processes'**
  String get nav_processes;

  /// Bottom tab label for network.
  ///
  /// In en, this message translates to:
  /// **'Network'**
  String get nav_network;

  /// Bottom tab label for firewall port rules.
  ///
  /// In en, this message translates to:
  /// **'Port Rules'**
  String get nav_portRules;

  /// Bottom tab label for firewall IP rules.
  ///
  /// In en, this message translates to:
  /// **'IP Rules'**
  String get nav_ipRules;

  /// Bottom tab label for installed apps.
  ///
  /// In en, this message translates to:
  /// **'Installed'**
  String get nav_installed;

  /// Bottom tab label for all apps.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get nav_all;

  /// Bottom tab label for updatable apps.
  ///
  /// In en, this message translates to:
  /// **'Updates'**
  String get nav_updates;

  /// Bottom tab label for list.
  ///
  /// In en, this message translates to:
  /// **'List'**
  String get nav_list;

  /// Bottom tab label for status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get nav_status;

  /// Bottom tab label for terminal.
  ///
  /// In en, this message translates to:
  /// **'Terminal'**
  String get nav_terminal;

  /// Bottom tab label for configuration.
  ///
  /// In en, this message translates to:
  /// **'Config'**
  String get nav_configuration;

  /// Bottom tab label for sessions.
  ///
  /// In en, this message translates to:
  /// **'Sessions'**
  String get nav_sessions;

  /// Bottom tab label for logs.
  ///
  /// In en, this message translates to:
  /// **'Logs'**
  String get nav_logs;

  /// Fallback title for the server detail page.
  ///
  /// In en, this message translates to:
  /// **'Panel Details'**
  String get serverDetail_title;

  /// Dashboard overview loading failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load overview'**
  String get dashboard_loadFailed;

  /// Dashboard server name fallback.
  ///
  /// In en, this message translates to:
  /// **'Server'**
  String get dashboard_serverFallback;

  /// Dashboard host details card title.
  ///
  /// In en, this message translates to:
  /// **'Host Details'**
  String get dashboard_hostDetailsTitle;

  /// Dashboard system row label.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get dashboard_system;

  /// Dashboard kernel row label.
  ///
  /// In en, this message translates to:
  /// **'Kernel'**
  String get dashboard_kernel;

  /// Dashboard CPU cores row label.
  ///
  /// In en, this message translates to:
  /// **'Cores'**
  String get dashboard_cpuCores;

  /// Dashboard CPU physical and logical core summary.
  ///
  /// In en, this message translates to:
  /// **'{physical} physical / {logical} logical'**
  String dashboard_cpuCoreSummary(int physical, int logical);

  /// Dashboard uptime metric label.
  ///
  /// In en, this message translates to:
  /// **'Uptime'**
  String get dashboard_uptime;

  /// Dashboard load metric label.
  ///
  /// In en, this message translates to:
  /// **'Load'**
  String get dashboard_load;

  /// Dashboard processes metric label and card title.
  ///
  /// In en, this message translates to:
  /// **'Processes'**
  String get dashboard_processes;

  /// Dashboard CPU architecture metric label.
  ///
  /// In en, this message translates to:
  /// **'Arch'**
  String get dashboard_arch;

  /// Dashboard resource usage card title.
  ///
  /// In en, this message translates to:
  /// **'Resource Usage'**
  String get dashboard_resourceUsageTitle;

  /// Dashboard memory metric label.
  ///
  /// In en, this message translates to:
  /// **'Memory'**
  String get dashboard_memory;

  /// Dashboard disk metric label.
  ///
  /// In en, this message translates to:
  /// **'Disk'**
  String get dashboard_disk;

  /// Dashboard network traffic card title.
  ///
  /// In en, this message translates to:
  /// **'Network Traffic'**
  String get dashboard_networkTrafficTitle;

  /// Dashboard upload traffic label.
  ///
  /// In en, this message translates to:
  /// **'Upload Traffic'**
  String get dashboard_trafficUp;

  /// Dashboard download traffic label.
  ///
  /// In en, this message translates to:
  /// **'Download Traffic'**
  String get dashboard_trafficDown;

  /// Dashboard realtime speed chart title.
  ///
  /// In en, this message translates to:
  /// **'Realtime Speed'**
  String get dashboard_realtimeSpeedTitle;

  /// Dashboard download speed label.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get dashboard_download;

  /// Dashboard upload speed label.
  ///
  /// In en, this message translates to:
  /// **'Upload'**
  String get dashboard_upload;

  /// Dashboard disk partitions card title.
  ///
  /// In en, this message translates to:
  /// **'Disk Partitions'**
  String get dashboard_diskPartitionsTitle;

  /// Dashboard disk IO card title.
  ///
  /// In en, this message translates to:
  /// **'Disk IO'**
  String get dashboard_diskIoTitle;

  /// Dashboard disk read label.
  ///
  /// In en, this message translates to:
  /// **'Read'**
  String get dashboard_read;

  /// Dashboard disk write label.
  ///
  /// In en, this message translates to:
  /// **'Write'**
  String get dashboard_write;

  /// Dashboard disk IO latency label.
  ///
  /// In en, this message translates to:
  /// **'Latency'**
  String get dashboard_latency;

  /// Dashboard card loading row label.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get dashboard_loading;

  /// Dashboard accelerator utilization detail.
  ///
  /// In en, this message translates to:
  /// **'Usage {percent}'**
  String dashboard_utilization(String percent);

  /// Dashboard accelerator memory detail.
  ///
  /// In en, this message translates to:
  /// **'VRAM {used}/{total}'**
  String dashboard_vram(String used, String total);

  /// Dashboard accelerator temperature detail.
  ///
  /// In en, this message translates to:
  /// **'Temp {temperature}°C'**
  String dashboard_temperature(String temperature);

  /// Dashboard uptime in minutes.
  ///
  /// In en, this message translates to:
  /// **'{minutes} min'**
  String dashboard_uptimeMinutes(int minutes);

  /// Dashboard uptime in hours and minutes.
  ///
  /// In en, this message translates to:
  /// **'{hours} h {minutes} min'**
  String dashboard_uptimeHoursMinutes(int hours, int minutes);

  /// Dashboard uptime in days and hours.
  ///
  /// In en, this message translates to:
  /// **'{days} d {hours} h'**
  String dashboard_uptimeDaysHours(int days, int hours);

  /// Files page title.
  ///
  /// In en, this message translates to:
  /// **'Files'**
  String get files_title;

  /// Files search field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Search files...'**
  String get files_searchPlaceholder;

  /// Files empty directory title.
  ///
  /// In en, this message translates to:
  /// **'Directory is empty'**
  String get files_directoryEmptyTitle;

  /// Files search empty state title.
  ///
  /// In en, this message translates to:
  /// **'No matching files'**
  String get files_noSearchResultsTitle;

  /// Files empty directory subtitle.
  ///
  /// In en, this message translates to:
  /// **'There is nothing in this folder'**
  String get files_directoryEmptySubtitle;

  /// Files search empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Try a different keyword'**
  String get files_noSearchResultsSubtitle;

  /// Files load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load files'**
  String get files_loadFailed;

  /// Toast shown when loading more file-related items fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to load more'**
  String get files_loadMoreFailed;

  /// Toast shown when loading a directory fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to load directory'**
  String get files_loadDirectoryFailed;

  /// Toast shown when refreshing files fails.
  ///
  /// In en, this message translates to:
  /// **'Refresh failed'**
  String get files_refreshFailed;

  /// Toast shown when searching files fails.
  ///
  /// In en, this message translates to:
  /// **'Search failed'**
  String get files_searchFailed;

  /// Files display options sheet title.
  ///
  /// In en, this message translates to:
  /// **'Display Options'**
  String get files_displayOptionsTitle;

  /// Files display options sort field section title.
  ///
  /// In en, this message translates to:
  /// **'Sort By'**
  String get files_sortByTitle;

  /// Files sort by name option.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get files_sortName;

  /// Files sort by size option.
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get files_sortSize;

  /// Files sort by modified time option.
  ///
  /// In en, this message translates to:
  /// **'Modified Time'**
  String get files_sortModifiedTime;

  /// Files display options sort order section title.
  ///
  /// In en, this message translates to:
  /// **'Sort Order'**
  String get files_sortOrderTitle;

  /// Files ascending sort order option.
  ///
  /// In en, this message translates to:
  /// **'Ascending'**
  String get files_sortAscending;

  /// Files descending sort order option.
  ///
  /// In en, this message translates to:
  /// **'Descending'**
  String get files_sortDescending;

  /// Files breadcrumb root directory label.
  ///
  /// In en, this message translates to:
  /// **'Root'**
  String get files_rootDirectory;

  /// Files multi-select selected count label.
  ///
  /// In en, this message translates to:
  /// **'{count} items selected'**
  String files_selectedCount(int count);

  /// Files multi-select sheet header subtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose an action below'**
  String get files_chooseAction;

  /// Files multi-select floating bar subtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap to expand action menu'**
  String get files_expandActionMenu;

  /// Files multi-select select all action.
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get files_selectAll;

  /// Files multi-select clear all selection action.
  ///
  /// In en, this message translates to:
  /// **'Clear Selection'**
  String get files_clearSelection;

  /// Files action label to move items.
  ///
  /// In en, this message translates to:
  /// **'Move'**
  String get files_actionMove;

  /// Files action label to copy items.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get files_actionCopy;

  /// Files action label to download one item.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get files_actionDownload;

  /// Files action label to download multiple items.
  ///
  /// In en, this message translates to:
  /// **'Batch Download'**
  String get files_actionBatchDownload;

  /// Files action label to package download items.
  ///
  /// In en, this message translates to:
  /// **'Package Download'**
  String get files_actionPackageDownload;

  /// Files action label for permissions.
  ///
  /// In en, this message translates to:
  /// **'Permissions'**
  String get files_actionPermissions;

  /// Files action label to compress items.
  ///
  /// In en, this message translates to:
  /// **'Compress'**
  String get files_actionCompress;

  /// Files action label to delete items.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get files_actionDelete;

  /// Files context menu action to open a directory.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get files_actionOpen;

  /// Files context menu action to preview an image.
  ///
  /// In en, this message translates to:
  /// **'Preview Image'**
  String get files_actionPreviewImage;

  /// Files context menu action to edit a file.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get files_actionEdit;

  /// Files context menu action to rename an item.
  ///
  /// In en, this message translates to:
  /// **'Rename'**
  String get files_actionRename;

  /// Files context menu action to copy the item path.
  ///
  /// In en, this message translates to:
  /// **'Copy Path'**
  String get files_actionCopyPath;

  /// Toast shown after copying a file path.
  ///
  /// In en, this message translates to:
  /// **'Path copied'**
  String get files_pathCopied;

  /// Files context menu submenu title for management actions.
  ///
  /// In en, this message translates to:
  /// **'Manage & Organize'**
  String get files_actionOrganize;

  /// Files context menu action to decompress an archive.
  ///
  /// In en, this message translates to:
  /// **'Decompress'**
  String get files_actionDecompress;

  /// Files context menu action to add an item to favorites.
  ///
  /// In en, this message translates to:
  /// **'Add Favorite'**
  String get files_actionAddFavorite;

  /// Files context menu action to remove an item from favorites.
  ///
  /// In en, this message translates to:
  /// **'Remove Favorite'**
  String get files_actionRemoveFavorite;

  /// Files context menu action to manage an existing share.
  ///
  /// In en, this message translates to:
  /// **'Manage Share'**
  String get files_actionManageShare;

  /// Files context menu action to create a share link.
  ///
  /// In en, this message translates to:
  /// **'Create Share Link'**
  String get files_actionCreateShare;

  /// Files context menu action to cancel a share.
  ///
  /// In en, this message translates to:
  /// **'Cancel Share'**
  String get files_actionCancelShare;

  /// Toast shown after cancelling a file share.
  ///
  /// In en, this message translates to:
  /// **'Share cancelled'**
  String get files_shareCancelled;

  /// Toast shown when cancelling a file share fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to cancel share: {error}'**
  String files_cancelShareFailed(String error);

  /// Files context menu action to download a file locally.
  ///
  /// In en, this message translates to:
  /// **'Download Locally'**
  String get files_actionDownloadToLocal;

  /// Files context menu action to view item details.
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get files_actionViewDetails;

  /// File browser picker title for choosing copy destination.
  ///
  /// In en, this message translates to:
  /// **'Copy To'**
  String get files_copyToTitle;

  /// File browser picker title for choosing move destination.
  ///
  /// In en, this message translates to:
  /// **'Move To'**
  String get files_moveToTitle;

  /// Toast shown when moving an item to the current path.
  ///
  /// In en, this message translates to:
  /// **'Target path cannot be the same as the current path'**
  String get files_moveCopySamePathError;

  /// Toast title shown when checking file name conflicts fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to check conflicts'**
  String get files_moveCopyCheckConflictFailed;

  /// Toast shown after copying files succeeds.
  ///
  /// In en, this message translates to:
  /// **'Copied'**
  String get files_copySuccess;

  /// Toast shown after moving files succeeds.
  ///
  /// In en, this message translates to:
  /// **'Moved'**
  String get files_moveSuccess;

  /// Generic file operation failure toast title.
  ///
  /// In en, this message translates to:
  /// **'Operation failed'**
  String get files_operationFailed;

  /// Toast shown when all duplicate files are skipped.
  ///
  /// In en, this message translates to:
  /// **'Skipped all duplicates'**
  String get files_moveCopySkippedAll;

  /// Move/copy collision sheet title.
  ///
  /// In en, this message translates to:
  /// **'Name Conflict'**
  String get files_moveCopyConflictTitle;

  /// Move/copy collision sheet description.
  ///
  /// In en, this message translates to:
  /// **'Selected files or folders have the same name. Choose how to continue.'**
  String get files_moveCopyConflictDescription;

  /// Move/copy collision action to overwrite one item.
  ///
  /// In en, this message translates to:
  /// **'Overwrite'**
  String get files_moveCopyOverwrite;

  /// Move/copy collision action to skip all duplicates.
  ///
  /// In en, this message translates to:
  /// **'Skip All'**
  String get files_moveCopySkipAll;

  /// Move/copy collision action to overwrite all duplicates.
  ///
  /// In en, this message translates to:
  /// **'Overwrite All'**
  String get files_moveCopyOverwriteAll;

  /// Files delete sheet title for multiple selected items.
  ///
  /// In en, this message translates to:
  /// **'Delete {count} selected items?'**
  String files_deleteBatchTitle(int count);

  /// Files delete sheet title for one item.
  ///
  /// In en, this message translates to:
  /// **'Delete this item?'**
  String get files_deleteSingleTitle;

  /// Files delete sheet hint when recycle bin is enabled.
  ///
  /// In en, this message translates to:
  /// **'Files will be moved to the server recycle bin and can be restored later.'**
  String get files_deleteToRecycleBinHint;

  /// Files delete sheet hint when recycle bin is unavailable or bypassed.
  ///
  /// In en, this message translates to:
  /// **'This cannot be undone. Files will be permanently removed from the server.'**
  String get files_deletePermanentHint;

  /// Toast shown when deleting files fails.
  ///
  /// In en, this message translates to:
  /// **'Delete failed'**
  String get files_deleteFailed;

  /// Toast shown when deleting one file succeeds.
  ///
  /// In en, this message translates to:
  /// **'Deleted'**
  String get files_deleteSuccess;

  /// Toast shown when batch deleting files succeeds.
  ///
  /// In en, this message translates to:
  /// **'Batch delete complete ({count})'**
  String files_batchDeleteSuccess(int count);

  /// Toast title when batch deleting files partially fails.
  ///
  /// In en, this message translates to:
  /// **'Some items failed to delete'**
  String get files_batchDeletePartialTitle;

  /// Toast description for partial batch delete results.
  ///
  /// In en, this message translates to:
  /// **'{successCount} succeeded, {failCount} failed'**
  String files_batchDeletePartialDescription(int successCount, int failCount);

  /// Toast shown after adding a file favorite.
  ///
  /// In en, this message translates to:
  /// **'Added to favorites'**
  String get files_favoriteAdded;

  /// Toast shown after removing a file favorite.
  ///
  /// In en, this message translates to:
  /// **'Removed from favorites'**
  String get files_favoriteRemoved;

  /// Toast shown when changing file favorite status fails.
  ///
  /// In en, this message translates to:
  /// **'Favorite operation failed'**
  String get files_favoriteFailed;

  /// Toast shown after renaming a file succeeds.
  ///
  /// In en, this message translates to:
  /// **'Renamed'**
  String get files_renameSuccess;

  /// Toast shown when renaming a file fails.
  ///
  /// In en, this message translates to:
  /// **'Rename failed'**
  String get files_renameFailed;

  /// Toast shown after saving a file in the editor succeeds.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get files_editorSaveSuccess;

  /// Toast title shown when saving a file in the editor fails.
  ///
  /// In en, this message translates to:
  /// **'Save failed'**
  String get files_editorSaveFailed;

  /// Editor load failure label.
  ///
  /// In en, this message translates to:
  /// **'Load failed: {error}'**
  String files_editorLoadFailed(String error);

  /// Editor menu action to open find and replace.
  ///
  /// In en, this message translates to:
  /// **'Find & Replace'**
  String get files_editorFindReplace;

  /// Editor menu action to close search.
  ///
  /// In en, this message translates to:
  /// **'Close Search'**
  String get files_editorCloseSearch;

  /// Editor menu action to enable editing.
  ///
  /// In en, this message translates to:
  /// **'Enable Editing'**
  String get files_editorEnableEditing;

  /// Editor menu action to enter read-only mode.
  ///
  /// In en, this message translates to:
  /// **'Read-only Mode'**
  String get files_editorReadOnlyMode;

  /// Editor find input placeholder.
  ///
  /// In en, this message translates to:
  /// **'Find'**
  String get files_editorFindPlaceholder;

  /// Editor previous match accessibility label.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get files_editorPreviousMatch;

  /// Editor next match accessibility label.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get files_editorNextMatch;

  /// Editor replace input placeholder.
  ///
  /// In en, this message translates to:
  /// **'Replace with'**
  String get files_editorReplaceWithPlaceholder;

  /// Editor replace current match action.
  ///
  /// In en, this message translates to:
  /// **'Replace'**
  String get files_editorReplace;

  /// Editor replace all action.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get files_editorReplaceAll;

  /// Files delete sheet force delete option title.
  ///
  /// In en, this message translates to:
  /// **'Delete Permanently'**
  String get files_deleteForceTitle;

  /// Files delete sheet force delete option subtitle.
  ///
  /// In en, this message translates to:
  /// **'Bypass the recycle bin. Files cannot be restored.'**
  String get files_deleteForceSubtitle;

  /// Files details sheet title.
  ///
  /// In en, this message translates to:
  /// **'File Properties'**
  String get files_detailsTitle;

  /// Toast shown when calculating a directory size fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to calculate size'**
  String get files_detailsCalculateSizeFailed;

  /// Files details basic information section title.
  ///
  /// In en, this message translates to:
  /// **'Basic Info'**
  String get files_detailsBasicInfo;

  /// Files details path row label.
  ///
  /// In en, this message translates to:
  /// **'Path'**
  String get files_detailsPath;

  /// Files details symlink target row label.
  ///
  /// In en, this message translates to:
  /// **'Link Target'**
  String get files_detailsLinkTarget;

  /// Files details type row label.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get files_detailsType;

  /// Files details directory type value.
  ///
  /// In en, this message translates to:
  /// **'Directory'**
  String get files_detailsDirectoryType;

  /// Files details file type value.
  ///
  /// In en, this message translates to:
  /// **'File'**
  String get files_detailsFileType;

  /// Files details size row label.
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get files_detailsSize;

  /// Files details directory size value before calculation.
  ///
  /// In en, this message translates to:
  /// **'Calculate'**
  String get files_detailsCalculate;

  /// Files details directory size calculation action label.
  ///
  /// In en, this message translates to:
  /// **'Tap to calculate'**
  String get files_detailsTapToCalculate;

  /// Files details modified time row label.
  ///
  /// In en, this message translates to:
  /// **'Modified Time'**
  String get files_detailsModifiedTime;

  /// Files details share code row label.
  ///
  /// In en, this message translates to:
  /// **'Share Code'**
  String get files_detailsShareCode;

  /// Files details permissions and owner section title.
  ///
  /// In en, this message translates to:
  /// **'Permissions & Owner'**
  String get files_detailsPermissionsOwner;

  /// Files details permission mode row label.
  ///
  /// In en, this message translates to:
  /// **'Permission Mode'**
  String get files_detailsPermissionMode;

  /// Files details owner row label.
  ///
  /// In en, this message translates to:
  /// **'Owner'**
  String get files_detailsOwner;

  /// Files details group row label.
  ///
  /// In en, this message translates to:
  /// **'Group'**
  String get files_detailsGroup;

  /// Files details error state title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load properties'**
  String get files_detailsLoadFailed;

  /// Create file sheet title.
  ///
  /// In en, this message translates to:
  /// **'New File'**
  String get files_createFileTitle;

  /// Create folder sheet title.
  ///
  /// In en, this message translates to:
  /// **'New Folder'**
  String get files_createDirectoryTitle;

  /// Create file validation error for empty name.
  ///
  /// In en, this message translates to:
  /// **'Name cannot be empty'**
  String get files_createNameRequired;

  /// Permission mode validation error.
  ///
  /// In en, this message translates to:
  /// **'Permission mode format is invalid'**
  String get files_permissionModeInvalid;

  /// Toast shown when loading users and groups fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to load users and groups'**
  String get files_permissionLoadUserGroupsFailed;

  /// Toast shown after updating permissions succeeds.
  ///
  /// In en, this message translates to:
  /// **'Permissions updated'**
  String get files_permissionUpdateSuccess;

  /// Toast title shown when updating permissions fails.
  ///
  /// In en, this message translates to:
  /// **'Submit failed'**
  String get files_permissionSubmitFailed;

  /// Batch permission sheet title.
  ///
  /// In en, this message translates to:
  /// **'Edit Permissions'**
  String get files_permissionBatchTitle;

  /// Single item permission sheet title.
  ///
  /// In en, this message translates to:
  /// **'Edit Permissions'**
  String get files_permissionSingleTitle;

  /// Permission mode input label.
  ///
  /// In en, this message translates to:
  /// **'Permission Mode'**
  String get files_permissionModeValue;

  /// Permission mode input placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. 0644'**
  String get files_permissionModePlaceholder;

  /// Permission sheet recursive subfile option label.
  ///
  /// In en, this message translates to:
  /// **'Also update child file attributes'**
  String get files_permissionApplyToSubfiles;

  /// Toast shown after creating a file or folder succeeds.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get files_createSuccess;

  /// Toast title shown when creating a file or folder fails.
  ///
  /// In en, this message translates to:
  /// **'Create failed'**
  String get files_createFailed;

  /// File name field label.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get files_nameLabel;

  /// Create file name placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter file name'**
  String get files_createFileNamePlaceholder;

  /// Create folder name placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter folder name'**
  String get files_createDirectoryNamePlaceholder;

  /// Permission settings section label.
  ///
  /// In en, this message translates to:
  /// **'Permissions'**
  String get files_permissionSettings;

  /// Permission matrix read column label.
  ///
  /// In en, this message translates to:
  /// **'Read'**
  String get files_permissionRead;

  /// Permission matrix write column label.
  ///
  /// In en, this message translates to:
  /// **'Write'**
  String get files_permissionWrite;

  /// Permission matrix execute column label.
  ///
  /// In en, this message translates to:
  /// **'Execute'**
  String get files_permissionExecute;

  /// Permission matrix owner row label.
  ///
  /// In en, this message translates to:
  /// **'Owner'**
  String get files_permissionOwner;

  /// Permission matrix group row label.
  ///
  /// In en, this message translates to:
  /// **'Group'**
  String get files_permissionGroup;

  /// Permission matrix public row label.
  ///
  /// In en, this message translates to:
  /// **'Public'**
  String get files_permissionPublic;

  /// Create file link settings section label.
  ///
  /// In en, this message translates to:
  /// **'Link Settings'**
  String get files_linkSettings;

  /// Create file link type label.
  ///
  /// In en, this message translates to:
  /// **'Link Type'**
  String get files_linkType;

  /// Soft link option label.
  ///
  /// In en, this message translates to:
  /// **'Soft Link'**
  String get files_softLink;

  /// Hard link option label.
  ///
  /// In en, this message translates to:
  /// **'Hard Link'**
  String get files_hardLink;

  /// Create link target path placeholder.
  ///
  /// In en, this message translates to:
  /// **'Select target path'**
  String get files_linkTargetPlaceholder;

  /// File picker title for selecting a link target.
  ///
  /// In en, this message translates to:
  /// **'Select Link Target'**
  String get files_selectLinkTarget;

  /// Generic file name label.
  ///
  /// In en, this message translates to:
  /// **'File Name'**
  String get files_fileName;

  /// Compress sheet title.
  ///
  /// In en, this message translates to:
  /// **'Compress Files'**
  String get files_compressTitle;

  /// Compress sheet submit action.
  ///
  /// In en, this message translates to:
  /// **'Compress'**
  String get files_compressAction;

  /// Compress sheet format label.
  ///
  /// In en, this message translates to:
  /// **'Archive Format'**
  String get files_compressFormat;

  /// Compress sheet destination path label.
  ///
  /// In en, this message translates to:
  /// **'Archive Path'**
  String get files_compressPath;

  /// Compress sheet empty file name error.
  ///
  /// In en, this message translates to:
  /// **'Enter a file name'**
  String get files_compressNameRequired;

  /// Compress sheet empty destination path error.
  ///
  /// In en, this message translates to:
  /// **'Enter an archive path'**
  String get files_compressPathRequired;

  /// Toast shown after starting a compression task.
  ///
  /// In en, this message translates to:
  /// **'Compression task started'**
  String get files_compressStarted;

  /// Toast title shown when compression fails.
  ///
  /// In en, this message translates to:
  /// **'Compression failed'**
  String get files_compressFailed;

  /// Compress sheet overwrite option title.
  ///
  /// In en, this message translates to:
  /// **'Overwrite existing files'**
  String get files_overwriteExistingFile;

  /// Generic file name input placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter file name'**
  String get files_fileNamePlaceholder;

  /// Generic target directory placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter target directory'**
  String get files_targetDirectoryPlaceholder;

  /// File picker title for selecting compression destination.
  ///
  /// In en, this message translates to:
  /// **'Select Archive Path'**
  String get files_selectCompressPath;

  /// Decompress sheet title.
  ///
  /// In en, this message translates to:
  /// **'Decompress File'**
  String get files_decompressTitle;

  /// Decompress sheet submit action.
  ///
  /// In en, this message translates to:
  /// **'Decompress'**
  String get files_decompressAction;

  /// Decompress sheet destination path label.
  ///
  /// In en, this message translates to:
  /// **'Decompress Path'**
  String get files_decompressPath;

  /// Decompress sheet empty destination path error.
  ///
  /// In en, this message translates to:
  /// **'Enter a decompression path'**
  String get files_decompressPathRequired;

  /// Toast shown after starting a decompression task.
  ///
  /// In en, this message translates to:
  /// **'Decompression task started'**
  String get files_decompressStarted;

  /// Toast title shown when decompression fails.
  ///
  /// In en, this message translates to:
  /// **'Decompression failed'**
  String get files_decompressFailed;

  /// Decompress sheet background task hint.
  ///
  /// In en, this message translates to:
  /// **'Tip: larger archives may take a while. Decompression runs in the background.'**
  String get files_decompressHint;

  /// Decompress sheet target directory placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter decompression target directory'**
  String get files_decompressTargetPlaceholder;

  /// File picker title for selecting decompression destination.
  ///
  /// In en, this message translates to:
  /// **'Select Decompression Path'**
  String get files_selectDecompressPath;

  /// Image viewer load failure title.
  ///
  /// In en, this message translates to:
  /// **'Unable to load image'**
  String get files_imageLoadFailed;

  /// Image viewer empty data label.
  ///
  /// In en, this message translates to:
  /// **'No data'**
  String get files_imageNoData;

  /// File share unsupported 1Panel version title.
  ///
  /// In en, this message translates to:
  /// **'Unsupported Version'**
  String get files_shareUnsupportedTitle;

  /// File share unsupported 1Panel version content.
  ///
  /// In en, this message translates to:
  /// **'This 1Panel version does not support file sharing. Update the panel and try again.'**
  String get files_shareUnsupportedContent;

  /// File share failure title.
  ///
  /// In en, this message translates to:
  /// **'Share Failed'**
  String get files_shareFailedTitle;

  /// File share configuration error title.
  ///
  /// In en, this message translates to:
  /// **'Configuration Error'**
  String get files_shareConfigErrorTitle;

  /// File share configuration error content.
  ///
  /// In en, this message translates to:
  /// **'Unable to get the server address. Check the connection status.'**
  String get files_shareConfigErrorContent;

  /// Generic file share error title.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get files_shareGenericErrorTitle;

  /// Text copied for a share link without password.
  ///
  /// In en, this message translates to:
  /// **'Share link: {link}'**
  String files_shareClipboardLink(String link);

  /// Text copied for a share link with password.
  ///
  /// In en, this message translates to:
  /// **'Share link: {link}, password: {password}'**
  String files_shareClipboardLinkPassword(String link, String password);

  /// File share sheet title.
  ///
  /// In en, this message translates to:
  /// **'Share File'**
  String get files_shareTitle;

  /// File share expiry field label.
  ///
  /// In en, this message translates to:
  /// **'Expires'**
  String get files_shareExpireLabel;

  /// File share optional password field label.
  ///
  /// In en, this message translates to:
  /// **'Access Password (optional)'**
  String get files_sharePasswordOptional;

  /// File share password field placeholder.
  ///
  /// In en, this message translates to:
  /// **'4-256 characters. Leave empty for none.'**
  String get files_sharePasswordPlaceholder;

  /// File share source file path label.
  ///
  /// In en, this message translates to:
  /// **'File path: {path}'**
  String files_shareFilePath(String path);

  /// File share result ready title.
  ///
  /// In en, this message translates to:
  /// **'Share link ready'**
  String get files_shareReady;

  /// File share details section title.
  ///
  /// In en, this message translates to:
  /// **'Share Details'**
  String get files_shareDetailsTitle;

  /// File share full path row label.
  ///
  /// In en, this message translates to:
  /// **'Full Path'**
  String get files_shareFullPath;

  /// File share code row label.
  ///
  /// In en, this message translates to:
  /// **'Share Code'**
  String get files_shareCode;

  /// File share access password row label.
  ///
  /// In en, this message translates to:
  /// **'Access Password'**
  String get files_shareAccessPassword;

  /// File share copy link action.
  ///
  /// In en, this message translates to:
  /// **'Copy Share Link'**
  String get files_shareCopyLink;

  /// File share update settings action.
  ///
  /// In en, this message translates to:
  /// **'Update Share Settings'**
  String get files_shareUpdateSettings;

  /// File share permanent expiry label.
  ///
  /// In en, this message translates to:
  /// **'Never expires'**
  String get files_shareExpirePermanent;

  /// File share expiry in minutes.
  ///
  /// In en, this message translates to:
  /// **'{minutes} min'**
  String files_shareExpireMinutes(int minutes);

  /// File share expiry in hours.
  ///
  /// In en, this message translates to:
  /// **'{hours} h'**
  String files_shareExpireHours(int hours);

  /// File share expiry in days.
  ///
  /// In en, this message translates to:
  /// **'{days} d'**
  String files_shareExpireDays(int days);

  /// File share list unsupported 1Panel version content.
  ///
  /// In en, this message translates to:
  /// **'This 1Panel version does not support managing file shares. Update the panel and try again.'**
  String get files_shareListUnsupportedContent;

  /// File share list empty state label.
  ///
  /// In en, this message translates to:
  /// **'No active shares'**
  String get files_shareListEmpty;

  /// File share list expiry date label.
  ///
  /// In en, this message translates to:
  /// **'Expires at {date}'**
  String files_shareExpireUntil(String date);

  /// File share list cancellation confirmation hint.
  ///
  /// In en, this message translates to:
  /// **'Tap the icon on the right to confirm cancellation'**
  String get files_shareCancelConfirmHint;

  /// Toast shown after copying a share link.
  ///
  /// In en, this message translates to:
  /// **'Share link copied'**
  String get files_shareLinkCopied;

  /// Recycle bin unsupported 1Panel version content.
  ///
  /// In en, this message translates to:
  /// **'This 1Panel version does not support the file recycle bin. Update the panel and try again.'**
  String get files_recycleUnsupportedContent;

  /// Recycle bin sheet title.
  ///
  /// In en, this message translates to:
  /// **'Recycle Bin'**
  String get files_recycleTitle;

  /// Recycle bin enabled status.
  ///
  /// In en, this message translates to:
  /// **'Recycle bin enabled'**
  String get files_recycleEnabled;

  /// Recycle bin disabled status.
  ///
  /// In en, this message translates to:
  /// **'Recycle bin disabled'**
  String get files_recycleDisabled;

  /// Recycle bin clear confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Empty Recycle Bin'**
  String get files_recycleClearTitle;

  /// Recycle bin clear confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Permanently delete all items in the recycle bin? This cannot be undone.'**
  String get files_recycleClearContent;

  /// Recycle bin clear confirmation action.
  ///
  /// In en, this message translates to:
  /// **'Empty'**
  String get files_recycleClearAction;

  /// Recycle bin empty state label.
  ///
  /// In en, this message translates to:
  /// **'Recycle bin is empty'**
  String get files_recycleEmpty;

  /// Recycle bin restore confirmation hint.
  ///
  /// In en, this message translates to:
  /// **'Tap again to confirm restore'**
  String get files_recycleConfirmRestore;

  /// Recycle bin permanent delete confirmation hint.
  ///
  /// In en, this message translates to:
  /// **'Tap again to permanently delete'**
  String get files_recycleConfirmDelete;

  /// Recycle bin item active action selection hint.
  ///
  /// In en, this message translates to:
  /// **'Choose an action'**
  String get files_recycleSelectAction;

  /// Toast shown after restoring a recycle bin item.
  ///
  /// In en, this message translates to:
  /// **'Restored: {name}'**
  String files_recycleRestored(String name);

  /// Toast shown when restoring a recycle bin item fails.
  ///
  /// In en, this message translates to:
  /// **'Restore failed'**
  String get files_recycleRestoreFailed;

  /// Toast shown after permanently deleting a recycle bin item.
  ///
  /// In en, this message translates to:
  /// **'Permanently deleted: {name}'**
  String files_recycleDeleted(String name);

  /// Toast shown after clearing the recycle bin starts.
  ///
  /// In en, this message translates to:
  /// **'Recycle bin clearing started in the background'**
  String get files_recycleClearStarted;

  /// Toast shown when clearing the recycle bin fails.
  ///
  /// In en, this message translates to:
  /// **'Clear failed'**
  String get files_recycleClearFailed;

  /// Toast shown when changing recycle bin status fails.
  ///
  /// In en, this message translates to:
  /// **'Setting failed'**
  String get files_recycleSettingFailed;

  /// Toast shown after cancelling a file share from the share list.
  ///
  /// In en, this message translates to:
  /// **'Share cancelled'**
  String get files_shareCancelSuccess;

  /// Toast shown when cancelling a file share from the share list fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to cancel share'**
  String get files_shareCancelFailed;

  /// Download progress sheet empty task label.
  ///
  /// In en, this message translates to:
  /// **'Task not found'**
  String get download_taskMissing;

  /// Download progress sheet batch title.
  ///
  /// In en, this message translates to:
  /// **'Batch Download'**
  String get download_batchTitle;

  /// Download progress sheet single file title.
  ///
  /// In en, this message translates to:
  /// **'Download File'**
  String get download_fileTitle;

  /// Download progress sheet batch task count.
  ///
  /// In en, this message translates to:
  /// **'{count} tasks'**
  String download_taskCount(int count);

  /// Download progress sheet completed hint.
  ///
  /// In en, this message translates to:
  /// **'Download completed. View it in Download Manager.'**
  String get download_completedHint;

  /// Download progress sheet ended hint.
  ///
  /// In en, this message translates to:
  /// **'Task ended'**
  String get download_finishedHint;

  /// Download progress sheet background hint.
  ///
  /// In en, this message translates to:
  /// **'Downloads continue in the background after closing this sheet'**
  String get download_backgroundHint;

  /// Download progress sheet manager entry title.
  ///
  /// In en, this message translates to:
  /// **'Manage Downloads'**
  String get download_managerEntryTitle;

  /// Download progress sheet manager entry subtitle.
  ///
  /// In en, this message translates to:
  /// **'View progress, share, and delete downloaded files'**
  String get download_managerEntrySubtitle;

  /// Download task pending metadata.
  ///
  /// In en, this message translates to:
  /// **'Waiting  •  {ext}  •  {size}'**
  String download_pendingMetadata(String ext, String size);

  /// Download task packaging metadata.
  ///
  /// In en, this message translates to:
  /// **'Packaging on server...  •  {ext}'**
  String download_packagingMetadata(String ext);

  /// Download failed fallback.
  ///
  /// In en, this message translates to:
  /// **'Download failed'**
  String get download_failed;

  /// Download task error when server packaging does not finish.
  ///
  /// In en, this message translates to:
  /// **'Server packaging timed out or failed'**
  String get download_packagingTimeoutFailed;

  /// Download task restored interrupted error label.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get download_interrupted;

  /// Download cancelled status.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get download_cancelled;

  /// Download completed metadata.
  ///
  /// In en, this message translates to:
  /// **'Downloaded locally  •  {ext}  •  {size}'**
  String download_completedMetadata(String ext, String size);

  /// Download manager page title.
  ///
  /// In en, this message translates to:
  /// **'Download Manager'**
  String get download_managerTitle;

  /// Download manager overflow menu label.
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get download_actionsMenu;

  /// Download manager action to clear completed records.
  ///
  /// In en, this message translates to:
  /// **'Clear Completed Records'**
  String get download_clearCompletedRecords;

  /// Download manager action to delete all downloaded files.
  ///
  /// In en, this message translates to:
  /// **'Delete All Files'**
  String get download_deleteAllFiles;

  /// Download manager active downloads section title.
  ///
  /// In en, this message translates to:
  /// **'Downloading'**
  String get download_activeSection;

  /// Download manager completed downloads section title.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get download_completedSection;

  /// Download manager empty state label.
  ///
  /// In en, this message translates to:
  /// **'No download tasks'**
  String get download_emptyTasks;

  /// Dialog title for deleting all downloads.
  ///
  /// In en, this message translates to:
  /// **'Delete All Downloads'**
  String get download_deleteAllTitle;

  /// Dialog content for deleting all downloads.
  ///
  /// In en, this message translates to:
  /// **'All downloaded files will be deleted from this device, and active tasks will be cancelled. This cannot be undone.'**
  String get download_deleteAllContent;

  /// Dialog action to delete all downloads.
  ///
  /// In en, this message translates to:
  /// **'Delete All'**
  String get download_deleteAllAction;

  /// Download manager pending task status.
  ///
  /// In en, this message translates to:
  /// **'Waiting...'**
  String get download_waiting;

  /// Dialog title for deleting one download.
  ///
  /// In en, this message translates to:
  /// **'Delete Download'**
  String get download_deleteTitle;

  /// Dialog content when deleting a downloaded file.
  ///
  /// In en, this message translates to:
  /// **'The file will be deleted from this device'**
  String get download_deleteFileContent;

  /// Dialog content when deleting a download record.
  ///
  /// In en, this message translates to:
  /// **'This download record will be removed'**
  String get download_deleteRecordContent;

  /// Remote download sheet title.
  ///
  /// In en, this message translates to:
  /// **'Remote Download'**
  String get remoteDownload_title;

  /// Remote download sheet subtitle.
  ///
  /// In en, this message translates to:
  /// **'Download asynchronously in the background on the 1Panel server'**
  String get remoteDownload_subtitle;

  /// Remote download start action.
  ///
  /// In en, this message translates to:
  /// **'Start Download'**
  String get remoteDownload_startAction;

  /// Remote download URL input placeholder.
  ///
  /// In en, this message translates to:
  /// **'Remote file URL (HTTP/HTTPS)'**
  String get remoteDownload_urlPlaceholder;

  /// Remote download file name input placeholder.
  ///
  /// In en, this message translates to:
  /// **'Save file name (required)'**
  String get remoteDownload_namePlaceholder;

  /// Remote download save path input placeholder.
  ///
  /// In en, this message translates to:
  /// **'Save directory'**
  String get remoteDownload_pathPlaceholder;

  /// Remote download ignore certificate switch title.
  ///
  /// In en, this message translates to:
  /// **'Ignore Untrusted Certificates'**
  String get remoteDownload_ignoreCertificateTitle;

  /// Remote download ignore certificate switch subtitle.
  ///
  /// In en, this message translates to:
  /// **'Enable for self-signed or expired certificate sites'**
  String get remoteDownload_ignoreCertificateSubtitle;

  /// Remote download explanatory text.
  ///
  /// In en, this message translates to:
  /// **'After creation, 1Panel will process the download asynchronously in the background. You can view progress in the server task center or the progress center below.'**
  String get remoteDownload_description;

  /// Remote download failure dialog title.
  ///
  /// In en, this message translates to:
  /// **'Failed to Create Download Task'**
  String get remoteDownload_createFailedTitle;

  /// Remote download save directory picker title.
  ///
  /// In en, this message translates to:
  /// **'Select Save Directory'**
  String get remoteDownload_selectSaveDirectory;

  /// Remote download progress center title.
  ///
  /// In en, this message translates to:
  /// **'Download Progress Center'**
  String get remoteDownload_progressCenterTitle;

  /// Remote download tracker empty title.
  ///
  /// In en, this message translates to:
  /// **'No remote download tasks'**
  String get remoteDownload_emptyTitle;

  /// Remote download tracker empty subtitle.
  ///
  /// In en, this message translates to:
  /// **'No background downloads are running'**
  String get remoteDownload_emptySubtitle;

  /// Remote download completed fallback task name.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get remoteDownload_completedName;

  /// Remote download task name while metadata is loading.
  ///
  /// In en, this message translates to:
  /// **'Resolving...'**
  String get remoteDownload_resolvingName;

  /// File upload sheet title.
  ///
  /// In en, this message translates to:
  /// **'Upload Files'**
  String get upload_title;

  /// File upload sheet target path subtitle.
  ///
  /// In en, this message translates to:
  /// **'Upload to {path}'**
  String upload_targetPath(String path);

  /// File upload start action.
  ///
  /// In en, this message translates to:
  /// **'Start Upload'**
  String get upload_startAction;

  /// File upload overwrite hint.
  ///
  /// In en, this message translates to:
  /// **'Files with the same name will be overwritten automatically'**
  String get upload_overwriteHint;

  /// File upload source menu item for photos.
  ///
  /// In en, this message translates to:
  /// **'Upload from Photos'**
  String get upload_fromAlbum;

  /// File upload source menu item for file picker.
  ///
  /// In en, this message translates to:
  /// **'Choose from Files'**
  String get upload_fromFiles;

  /// File upload add files button label.
  ///
  /// In en, this message translates to:
  /// **'Add Files'**
  String get upload_addFiles;

  /// File upload progress label.
  ///
  /// In en, this message translates to:
  /// **'Uploading... ({percent}%)'**
  String upload_uploadingProgress(String percent);

  /// File upload partial failure label.
  ///
  /// In en, this message translates to:
  /// **'Some uploads failed ({count} errors)'**
  String upload_partialFailedCount(int count);

  /// File upload all complete label.
  ///
  /// In en, this message translates to:
  /// **'All uploads complete'**
  String get upload_allComplete;

  /// File upload empty pending state.
  ///
  /// In en, this message translates to:
  /// **'No files waiting to upload'**
  String get upload_emptyPending;

  /// File upload summary success title.
  ///
  /// In en, this message translates to:
  /// **'Upload Complete'**
  String get upload_summaryCompleteTitle;

  /// File upload summary partial failure title.
  ///
  /// In en, this message translates to:
  /// **'Some Uploads Failed'**
  String get upload_summaryPartialFailedTitle;

  /// File upload summary success count.
  ///
  /// In en, this message translates to:
  /// **'{count} files uploaded'**
  String upload_summarySuccessCount(int count);

  /// File upload summary mixed success and failure count.
  ///
  /// In en, this message translates to:
  /// **'{successCount} succeeded, {failCount} failed'**
  String upload_summaryMixedCount(int successCount, int failCount);

  /// File upload failed fallback metadata.
  ///
  /// In en, this message translates to:
  /// **'Upload failed'**
  String get upload_failed;

  /// File upload cancelled metadata.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get upload_cancelled;

  /// Process management page title.
  ///
  /// In en, this message translates to:
  /// **'Processes'**
  String get process_title;

  /// Process page error when active server cannot be found.
  ///
  /// In en, this message translates to:
  /// **'Server not found'**
  String get process_serverMissing;

  /// Dialog title for stopping a process.
  ///
  /// In en, this message translates to:
  /// **'Stop Process'**
  String get process_stopTitle;

  /// Dialog content for stopping a process.
  ///
  /// In en, this message translates to:
  /// **'Stop PID {pid}?'**
  String process_stopContent(int pid);

  /// Dialog action for stopping a process.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get process_stopAction;

  /// Toast shown after sending a process stop request.
  ///
  /// In en, this message translates to:
  /// **'Stop request sent'**
  String get process_stopRequested;

  /// Toast shown when stopping a process fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to stop process'**
  String get process_stopFailed;

  /// Process search field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Search process name'**
  String get process_searchNamePlaceholder;

  /// Network connection search field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Search process name or port'**
  String get process_searchNameOrPortPlaceholder;

  /// Process page connection failure title.
  ///
  /// In en, this message translates to:
  /// **'Connection failed'**
  String get process_connectionFailed;

  /// Process page search empty state title.
  ///
  /// In en, this message translates to:
  /// **'No matching results'**
  String get process_noResults;

  /// Process page empty state title.
  ///
  /// In en, this message translates to:
  /// **'No data'**
  String get process_noData;

  /// Process page search empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Try a different search keyword'**
  String get process_noResultsSubtitle;

  /// Process page empty state subtitle when waiting for data.
  ///
  /// In en, this message translates to:
  /// **'Waiting for data'**
  String get process_waitingData;

  /// Process page loading state.
  ///
  /// In en, this message translates to:
  /// **'Connecting to process service'**
  String get process_connecting;

  /// Process detail loading state.
  ///
  /// In en, this message translates to:
  /// **'Reading process details'**
  String get process_readingDetail;

  /// Process detail read failure label.
  ///
  /// In en, this message translates to:
  /// **'Read failed'**
  String get process_readFailed;

  /// Process detail basic information section title.
  ///
  /// In en, this message translates to:
  /// **'Basic Info'**
  String get process_basicInfo;

  /// Process user label.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get process_user;

  /// Process status label.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get process_status;

  /// Process start time label.
  ///
  /// In en, this message translates to:
  /// **'Start Time'**
  String get process_startTime;

  /// Process list thread count label.
  ///
  /// In en, this message translates to:
  /// **'{count} threads'**
  String process_threads(int count);

  /// Process detail thread count label.
  ///
  /// In en, this message translates to:
  /// **'Threads'**
  String get process_threadCount;

  /// Process list connection count label.
  ///
  /// In en, this message translates to:
  /// **'{count} connections'**
  String process_connections(int count);

  /// Process detail connection count label.
  ///
  /// In en, this message translates to:
  /// **'Connections'**
  String get process_connectionCount;

  /// Process detail command line label.
  ///
  /// In en, this message translates to:
  /// **'Command Line'**
  String get process_commandLine;

  /// Process detail CPU and disk section title.
  ///
  /// In en, this message translates to:
  /// **'CPU / Disk'**
  String get process_cpuDisk;

  /// Process memory label.
  ///
  /// In en, this message translates to:
  /// **'Memory'**
  String get process_memory;

  /// Process detail disk read label.
  ///
  /// In en, this message translates to:
  /// **'Disk Read'**
  String get process_diskRead;

  /// Process detail disk write label.
  ///
  /// In en, this message translates to:
  /// **'Disk Write'**
  String get process_diskWrite;

  /// Process detail memory section title.
  ///
  /// In en, this message translates to:
  /// **'Memory Details'**
  String get process_memoryDetails;

  /// Process detail open files section title.
  ///
  /// In en, this message translates to:
  /// **'Open Files'**
  String get process_openFiles;

  /// Process detail network connections section title.
  ///
  /// In en, this message translates to:
  /// **'Network Connections'**
  String get process_networkConnections;

  /// Process detail environment variables section title.
  ///
  /// In en, this message translates to:
  /// **'Environment Variables'**
  String get process_environmentVariables;

  /// Process menu sort action.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get process_sort;

  /// Process sort by CPU option.
  ///
  /// In en, this message translates to:
  /// **'CPU Usage'**
  String get process_sortCpu;

  /// Process sort by memory option.
  ///
  /// In en, this message translates to:
  /// **'Memory'**
  String get process_sortMemory;

  /// Process sort by connections option.
  ///
  /// In en, this message translates to:
  /// **'Connections'**
  String get process_sortConnections;

  /// Toolbox page title.
  ///
  /// In en, this message translates to:
  /// **'Toolbox'**
  String get toolbox_title;

  /// Loading label while toolbox status is being read.
  ///
  /// In en, this message translates to:
  /// **'Reading toolbox status'**
  String get toolbox_loadingStatus;

  /// Toolbox quick settings section title.
  ///
  /// In en, this message translates to:
  /// **'Quick Settings'**
  String get toolbox_quickSettings;

  /// Device hostname row label.
  ///
  /// In en, this message translates to:
  /// **'Hostname'**
  String get toolbox_hostname;

  /// Device system user row label.
  ///
  /// In en, this message translates to:
  /// **'System User'**
  String get toolbox_systemUser;

  /// Device timezone row label.
  ///
  /// In en, this message translates to:
  /// **'Time Zone'**
  String get toolbox_timeZone;

  /// Device local time row label.
  ///
  /// In en, this message translates to:
  /// **'Local Time'**
  String get toolbox_localTime;

  /// Toolbox cache cleanup section and page title.
  ///
  /// In en, this message translates to:
  /// **'Cache Cleanup'**
  String get toolbox_cacheClean;

  /// Cache cleanup source row label.
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get toolbox_cleanSource;

  /// Cache cleanup source row value.
  ///
  /// In en, this message translates to:
  /// **'1Panel toolbox scan API'**
  String get toolbox_cleanSourceValue;

  /// Cache cleanup action row label.
  ///
  /// In en, this message translates to:
  /// **'Action'**
  String get toolbox_cleanAction;

  /// Cache cleanup action row value.
  ///
  /// In en, this message translates to:
  /// **'Scan cleanable items without deleting them'**
  String get toolbox_cleanActionValue;

  /// Action label to scan cleanable items.
  ///
  /// In en, this message translates to:
  /// **'Scan'**
  String get toolbox_scan;

  /// Toast title when cache cleanup scanning fails.
  ///
  /// In en, this message translates to:
  /// **'Scan failed'**
  String get toolbox_scanFailed;

  /// Tool installation status row label.
  ///
  /// In en, this message translates to:
  /// **'Installed'**
  String get toolbox_installed;

  /// Tool running status row label.
  ///
  /// In en, this message translates to:
  /// **'Running'**
  String get toolbox_running;

  /// Tool enabled status row label.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get toolbox_enabled;

  /// Tool version row label.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get toolbox_version;

  /// Tool port row label.
  ///
  /// In en, this message translates to:
  /// **'Port'**
  String get toolbox_port;

  /// Toolbox virus scan section title.
  ///
  /// In en, this message translates to:
  /// **'Virus Scan'**
  String get toolbox_virusScan;

  /// ClamAV running status row label.
  ///
  /// In en, this message translates to:
  /// **'ClamAV Running'**
  String get toolbox_clamAvRunning;

  /// FreshClam running status row label.
  ///
  /// In en, this message translates to:
  /// **'FreshClam Running'**
  String get toolbox_freshClamRunning;

  /// Virus database version row label.
  ///
  /// In en, this message translates to:
  /// **'Virus Database'**
  String get toolbox_virusDatabase;

  /// Empty state title when no cleanable items are found.
  ///
  /// In en, this message translates to:
  /// **'No cleanable items'**
  String get toolbox_noCleanItems;

  /// Cache cleanup group name for system cache.
  ///
  /// In en, this message translates to:
  /// **'System Cache'**
  String get toolbox_cleanGroupSystem;

  /// Cache cleanup group name for backup cache.
  ///
  /// In en, this message translates to:
  /// **'Backup Cache'**
  String get toolbox_cleanGroupBackup;

  /// Cache cleanup group name for upload cache.
  ///
  /// In en, this message translates to:
  /// **'Upload Cache'**
  String get toolbox_cleanGroupUpload;

  /// Cache cleanup group name for download cache.
  ///
  /// In en, this message translates to:
  /// **'Download Cache'**
  String get toolbox_cleanGroupDownload;

  /// Cache cleanup group name for system logs.
  ///
  /// In en, this message translates to:
  /// **'System Logs'**
  String get toolbox_cleanGroupSystemLog;

  /// Cache cleanup group name for container cache.
  ///
  /// In en, this message translates to:
  /// **'Container Cache'**
  String get toolbox_cleanGroupContainer;

  /// Disk management page title.
  ///
  /// In en, this message translates to:
  /// **'Disk Management'**
  String get disk_title;

  /// Loading label while disk information is being read.
  ///
  /// In en, this message translates to:
  /// **'Reading disk information'**
  String get disk_loadingInfo;

  /// Disk overview summary card title.
  ///
  /// In en, this message translates to:
  /// **'Disk Overview'**
  String get disk_overview;

  /// Disk overview total capacity subtitle.
  ///
  /// In en, this message translates to:
  /// **'Total capacity {capacity}'**
  String disk_totalCapacity(String capacity);

  /// Section title for unpartitioned disks.
  ///
  /// In en, this message translates to:
  /// **'Unpartitioned Disks'**
  String get disk_unpartitioned;

  /// Confirm sheet title for unmounting a disk.
  ///
  /// In en, this message translates to:
  /// **'Unmount Disk'**
  String get disk_unmountTitle;

  /// Confirm sheet content for unmounting a disk.
  ///
  /// In en, this message translates to:
  /// **'Unmount {mountPoint}? This action is not provided for system disks.'**
  String disk_unmountContent(String mountPoint);

  /// Action label for unmounting a disk.
  ///
  /// In en, this message translates to:
  /// **'Unmount'**
  String get disk_unmountAction;

  /// Toast shown after sending an unmount request.
  ///
  /// In en, this message translates to:
  /// **'Unmount request sent'**
  String get disk_unmountRequested;

  /// Toast title when unmounting a disk fails.
  ///
  /// In en, this message translates to:
  /// **'Unmount failed'**
  String get disk_unmountFailed;

  /// Disk mounted status label.
  ///
  /// In en, this message translates to:
  /// **'Mounted'**
  String get disk_mounted;

  /// Disk unmounted status label.
  ///
  /// In en, this message translates to:
  /// **'Unmounted'**
  String get disk_unmounted;

  /// Disk size chip label.
  ///
  /// In en, this message translates to:
  /// **'Size {value}'**
  String disk_size(String value);

  /// Disk used space chip label.
  ///
  /// In en, this message translates to:
  /// **'Used {value}'**
  String disk_used(String value);

  /// Disk available space chip label.
  ///
  /// In en, this message translates to:
  /// **'Available {value}'**
  String disk_available(String value);

  /// Disk mount point chip label.
  ///
  /// In en, this message translates to:
  /// **'Mount {value}'**
  String disk_mountPoint(String value);

  /// Disk filesystem chip label.
  ///
  /// In en, this message translates to:
  /// **'Filesystem {value}'**
  String disk_filesystem(String value);

  /// Error shown when the user reaches the free server limit.
  ///
  /// In en, this message translates to:
  /// **'The free version can add up to {freeServerLimit} panel(s). You already have {serverCount}.'**
  String purchases_serverLimitReached(int freeServerLimit, int serverCount);

  /// Purchase state message when local receipt unlocks the app offline.
  ///
  /// In en, this message translates to:
  /// **'Unlocked offline using this device\'s purchase receipt'**
  String get purchases_offlineUnlocked;

  /// Purchase state message when the build has no RevenueCat API key.
  ///
  /// In en, this message translates to:
  /// **'RevenueCat API Key is not configured for this build'**
  String get purchases_apiKeyMissing;

  /// Purchase state message when purchase service is unavailable but local receipt unlocks the app.
  ///
  /// In en, this message translates to:
  /// **'Purchase service is temporarily unavailable. Unlocked offline using this device\'s purchase receipt.'**
  String get purchases_serviceUnavailableOfflineUnlocked;

  /// Purchase state message when purchase service is unavailable.
  ///
  /// In en, this message translates to:
  /// **'Purchase service is temporarily unavailable. Allow this app to use the network, then try again.'**
  String get purchases_serviceUnavailableNetwork;

  /// Error shown when RevenueCat has no package in the current offering.
  ///
  /// In en, this message translates to:
  /// **'No purchasable package is available in the current RevenueCat Offering'**
  String get purchases_noPackageAvailable;

  /// Purchase state message when package loading fails.
  ///
  /// In en, this message translates to:
  /// **'Purchase packages cannot be loaded right now. Please try again later.'**
  String get purchases_packageLoadFailed;

  /// Error shown when purchase service is used before initialization.
  ///
  /// In en, this message translates to:
  /// **'Purchase service has not been initialized'**
  String get purchases_serviceNotInitialized;

  /// Log hub page title.
  ///
  /// In en, this message translates to:
  /// **'Log Audit'**
  String get log_hubTitle;

  /// Log hub panel logs section title.
  ///
  /// In en, this message translates to:
  /// **'Panel Logs'**
  String get log_panelLogs;

  /// Operation log page and menu title.
  ///
  /// In en, this message translates to:
  /// **'Operation Logs'**
  String get log_operationLog;

  /// Login log page and menu title.
  ///
  /// In en, this message translates to:
  /// **'Login Logs'**
  String get log_loginLog;

  /// System log page and menu title.
  ///
  /// In en, this message translates to:
  /// **'System Logs'**
  String get log_systemLog;

  /// Task log page and menu title.
  ///
  /// In en, this message translates to:
  /// **'Task Logs'**
  String get log_taskLog;

  /// SSH login log page and menu title.
  ///
  /// In en, this message translates to:
  /// **'SSH Login Logs'**
  String get log_sshLoginLog;

  /// Menu label for log page actions.
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get log_actions;

  /// Action label for clearing logs.
  ///
  /// In en, this message translates to:
  /// **'Clear Logs'**
  String get log_clearLogs;

  /// Search field placeholder for operation logs.
  ///
  /// In en, this message translates to:
  /// **'Search operation logs...'**
  String get log_searchOperationPlaceholder;

  /// Search field placeholder for login logs.
  ///
  /// In en, this message translates to:
  /// **'Search IP address...'**
  String get log_searchIpPlaceholder;

  /// Search field placeholder for SSH login logs.
  ///
  /// In en, this message translates to:
  /// **'Search address or user...'**
  String get log_searchSshPlaceholder;

  /// Empty state title for task logs.
  ///
  /// In en, this message translates to:
  /// **'No task logs'**
  String get log_noTaskLogs;

  /// Empty state subtitle for task logs.
  ///
  /// In en, this message translates to:
  /// **'Background task execution records will appear here'**
  String get log_noTaskLogsSubtitle;

  /// Empty state title for operation logs.
  ///
  /// In en, this message translates to:
  /// **'No operation logs'**
  String get log_noOperationLogs;

  /// Empty state subtitle for operation logs.
  ///
  /// In en, this message translates to:
  /// **'Operation logs from the panel will appear here'**
  String get log_noOperationLogsSubtitle;

  /// Empty state title for login logs.
  ///
  /// In en, this message translates to:
  /// **'No login logs'**
  String get log_noLoginLogs;

  /// Empty state subtitle for login logs.
  ///
  /// In en, this message translates to:
  /// **'Panel login activity will be recorded here'**
  String get log_noLoginLogsSubtitle;

  /// Empty state title for SSH login logs.
  ///
  /// In en, this message translates to:
  /// **'No SSH login logs'**
  String get log_noSshLoginLogs;

  /// Empty state subtitle for SSH login logs.
  ///
  /// In en, this message translates to:
  /// **'SSH login records will appear here'**
  String get log_noSshLoginLogsSubtitle;

  /// Empty state title when a selected system log file has no content.
  ///
  /// In en, this message translates to:
  /// **'No log content'**
  String get log_noSystemLogContent;

  /// Empty state subtitle when a selected system log file has no content.
  ///
  /// In en, this message translates to:
  /// **'The selected log file is empty'**
  String get log_noSystemLogContentSubtitle;

  /// Action sheet title for selecting a system log file.
  ///
  /// In en, this message translates to:
  /// **'Select Log File'**
  String get log_selectLogFile;

  /// Confirm dialog title for clearing login logs.
  ///
  /// In en, this message translates to:
  /// **'Clear Login Logs'**
  String get log_clearLoginTitle;

  /// Confirm dialog content for clearing login logs.
  ///
  /// In en, this message translates to:
  /// **'Clear all login logs? This action cannot be undone.'**
  String get log_clearLoginContent;

  /// Confirm dialog title for clearing operation logs.
  ///
  /// In en, this message translates to:
  /// **'Clear Operation Logs'**
  String get log_clearOperationTitle;

  /// Confirm dialog content for clearing operation logs.
  ///
  /// In en, this message translates to:
  /// **'Clear all operation logs? This action cannot be undone.'**
  String get log_clearOperationContent;

  /// Log status label for success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get log_success;

  /// Log status label for failure.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get log_failed;

  /// Log status label for executing tasks.
  ///
  /// In en, this message translates to:
  /// **'Executing'**
  String get log_executing;

  /// SSH log port metadata label.
  ///
  /// In en, this message translates to:
  /// **'Port {port}'**
  String log_port(String port);

  /// Toast title when reading a system log fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to read log'**
  String get log_readFailed;

  /// Toast shown after operation logs are cleared.
  ///
  /// In en, this message translates to:
  /// **'Operation logs cleared'**
  String get log_operationCleared;

  /// Toast shown after login logs are cleared.
  ///
  /// In en, this message translates to:
  /// **'Login logs cleared'**
  String get log_loginCleared;

  /// Toast title when clearing logs fails.
  ///
  /// In en, this message translates to:
  /// **'Clear failed'**
  String get log_clearFailed;

  /// More page section title for apps and services.
  ///
  /// In en, this message translates to:
  /// **'Apps & Services'**
  String get more_appsServices;

  /// More page app store entry title.
  ///
  /// In en, this message translates to:
  /// **'App Store'**
  String get more_appStoreTitle;

  /// More page app store entry subtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage installed apps, upgrades, and app settings'**
  String get more_appStoreSubtitle;

  /// More page terminal entry title.
  ///
  /// In en, this message translates to:
  /// **'Terminal'**
  String get more_terminalTitle;

  /// More page terminal entry subtitle.
  ///
  /// In en, this message translates to:
  /// **'Connect to the server and run terminal commands'**
  String get more_terminalSubtitle;

  /// More page section title for website services.
  ///
  /// In en, this message translates to:
  /// **'Website Services'**
  String get more_webServices;

  /// More page SSL management entry title.
  ///
  /// In en, this message translates to:
  /// **'Certificate Management'**
  String get more_sslTitle;

  /// More page SSL management entry subtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage SSL certificates, ACME accounts, and self-signed CAs'**
  String get more_sslSubtitle;

  /// More page runtimes entry title.
  ///
  /// In en, this message translates to:
  /// **'Runtimes'**
  String get more_runtimeTitle;

  /// More page runtimes entry subtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage PHP, Node.js, Java, and other runtimes'**
  String get more_runtimeSubtitle;

  /// More page databases entry title.
  ///
  /// In en, this message translates to:
  /// **'Databases'**
  String get more_databaseTitle;

  /// More page databases entry subtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage MySQL, PostgreSQL, Redis, and other databases'**
  String get more_databaseSubtitle;

  /// More page section title for operations management.
  ///
  /// In en, this message translates to:
  /// **'Operations'**
  String get more_operations;

  /// More page cron jobs entry title.
  ///
  /// In en, this message translates to:
  /// **'Cron Jobs'**
  String get more_cronjobTitle;

  /// More page cron jobs entry subtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage scheduled tasks, shell scripts, and automation'**
  String get more_cronjobSubtitle;

  /// More page panel settings entry title.
  ///
  /// In en, this message translates to:
  /// **'Panel Settings'**
  String get more_panelSettingsTitle;

  /// More page panel settings entry subtitle.
  ///
  /// In en, this message translates to:
  /// **'Configure panel security, notifications, backups, and snapshots'**
  String get more_panelSettingsSubtitle;

  /// More page log audit entry subtitle.
  ///
  /// In en, this message translates to:
  /// **'Panel logs, login logs, and website runtime logs'**
  String get more_logAuditSubtitle;

  /// More page system section title.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get more_system;

  /// More page firewall entry title.
  ///
  /// In en, this message translates to:
  /// **'Firewall'**
  String get more_firewallTitle;

  /// More page firewall entry subtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage system ports and allow/block lists'**
  String get more_firewallSubtitle;

  /// More page process management entry subtitle.
  ///
  /// In en, this message translates to:
  /// **'View and manage running system processes'**
  String get more_processSubtitle;

  /// More page SSH management entry title.
  ///
  /// In en, this message translates to:
  /// **'SSH Management'**
  String get more_sshTitle;

  /// More page SSH management entry subtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage SSH keys and remote connection settings'**
  String get more_sshSubtitle;

  /// Toast title when reading a saved server API key fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to read API Key'**
  String get servers_apiKeyReadFailed;

  /// Validation error when editing a server without a host.
  ///
  /// In en, this message translates to:
  /// **'Enter the host address'**
  String get servers_hostRequired;

  /// Validation error when adding a server without host or API key.
  ///
  /// In en, this message translates to:
  /// **'Enter the host address and API Key'**
  String get servers_hostApiKeyRequired;

  /// Toast shown after saving a server.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get servers_saved;

  /// Toast shown after adding a server.
  ///
  /// In en, this message translates to:
  /// **'Added successfully'**
  String get servers_added;

  /// Toast title when testing server connection fails.
  ///
  /// In en, this message translates to:
  /// **'Connection failed'**
  String get servers_connectionFailed;

  /// Toast description when testing server connection fails.
  ///
  /// In en, this message translates to:
  /// **'Check the configuration or API Key.\nError: {error}'**
  String servers_connectionFailedDescription(String error);

  /// Button label to stop connection testing.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get servers_stop;

  /// Add server sheet title while connection testing is in progress.
  ///
  /// In en, this message translates to:
  /// **'Connecting'**
  String get servers_connecting;

  /// Edit server sheet title.
  ///
  /// In en, this message translates to:
  /// **'Edit Panel'**
  String get servers_editPanel;

  /// Add server sheet title.
  ///
  /// In en, this message translates to:
  /// **'Add Panel'**
  String get servers_addPanel;

  /// Add server sheet connection settings section title.
  ///
  /// In en, this message translates to:
  /// **'Connection Settings'**
  String get servers_connectionSettings;

  /// Server name field label.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get servers_name;

  /// Server name field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Optional, for example: My Server'**
  String get servers_namePlaceholder;

  /// Server host field label.
  ///
  /// In en, this message translates to:
  /// **'Host Address'**
  String get servers_host;

  /// Server host field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Required, for example: 1.2.3.4'**
  String get servers_hostPlaceholder;

  /// Server port field label.
  ///
  /// In en, this message translates to:
  /// **'Port'**
  String get servers_port;

  /// Add server sheet security authentication section title.
  ///
  /// In en, this message translates to:
  /// **'Security Authentication'**
  String get servers_securityAuth;

  /// Hint explaining where to find a 1Panel API key.
  ///
  /// In en, this message translates to:
  /// **'You can generate an API Key in 1Panel under Panel Settings > Panel API. Check the IP allowlist: only IPs in the allowlist can access the panel API.'**
  String get servers_apiKeyHint;

  /// Loading placeholder while reading a saved API key.
  ///
  /// In en, this message translates to:
  /// **'Reading...'**
  String get servers_reading;

  /// Required field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get servers_required;

  /// Hint shown while sorting server cards.
  ///
  /// In en, this message translates to:
  /// **'Drag cards to reorder'**
  String get servers_sortHint;

  /// Empty state shown when there are no saved panels.
  ///
  /// In en, this message translates to:
  /// **'No panels added\nTap the button in the top-right corner to start'**
  String get servers_empty;

  /// Server list load failure message.
  ///
  /// In en, this message translates to:
  /// **'Load failed: {error}'**
  String servers_loadFailed(String error);

  /// Delete server confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Delete Server'**
  String get servers_deleteTitle;

  /// Delete server confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Delete \"{name}\"?'**
  String servers_deleteContent(String name);

  /// Server card online status label.
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get servers_online;

  /// Server card memory metric label.
  ///
  /// In en, this message translates to:
  /// **'Memory'**
  String get servers_memory;

  /// Server card disk metric label.
  ///
  /// In en, this message translates to:
  /// **'Disk'**
  String get servers_disk;

  /// Server card website count label.
  ///
  /// In en, this message translates to:
  /// **'Websites'**
  String get servers_websites;

  /// Server card database count label.
  ///
  /// In en, this message translates to:
  /// **'Databases'**
  String get servers_databases;

  /// Server card app count label.
  ///
  /// In en, this message translates to:
  /// **'Apps'**
  String get servers_apps;

  /// Server card task count label.
  ///
  /// In en, this message translates to:
  /// **'Tasks'**
  String get servers_tasks;

  /// Server context menu sort action.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get servers_sort;

  /// Server context menu edit action.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get servers_edit;

  /// Premium purchase hero subtitle.
  ///
  /// In en, this message translates to:
  /// **'One purchase, lifetime access to all features'**
  String get premium_heroSubtitle;

  /// Premium benefit title for unlimited panels.
  ///
  /// In en, this message translates to:
  /// **'Unlimited Panel Management'**
  String get premium_unlimitedTitle;

  /// Premium benefit description for unlimited panels.
  ///
  /// In en, this message translates to:
  /// **'Remove the 1-panel limit and add any number of 1Panel instances.'**
  String get premium_unlimitedDescription;

  /// Premium limit prompt hint with current server count.
  ///
  /// In en, this message translates to:
  /// **' (you currently have {serverCount} panels)'**
  String premium_currentServerCount(int serverCount);

  /// Premium benefit title for future features.
  ///
  /// In en, this message translates to:
  /// **'More Advanced Features'**
  String get premium_moreFeaturesTitle;

  /// Premium benefit text for desktop widgets.
  ///
  /// In en, this message translates to:
  /// **'Desktop widgets'**
  String get premium_desktopWidgetsFeature;

  /// Premium benefit highlighted hint that desktop widgets are free for all users.
  ///
  /// In en, this message translates to:
  /// **' (now free)'**
  String get premium_desktopWidgetsFreeHint;

  /// Premium benefit description suffix for future features.
  ///
  /// In en, this message translates to:
  /// **', multi-device sync, and more advanced features are in development.'**
  String get premium_moreFeaturesDescription;

  /// Premium benefit title for supporting the open source project.
  ///
  /// In en, this message translates to:
  /// **'Support Open Source'**
  String get premium_supportTitle;

  /// Premium benefit description for supporting the open source project.
  ///
  /// In en, this message translates to:
  /// **'Mono Dash is open source on GitHub. Your support helps keep the project maintained and new features moving forward.'**
  String get premium_supportDescription;

  /// Premium purchase price loading fallback.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get premium_loading;

  /// Premium purchase button label.
  ///
  /// In en, this message translates to:
  /// **'Unlock Now {price}'**
  String premium_unlockNow(String price);

  /// Premium purchase payment note.
  ///
  /// In en, this message translates to:
  /// **'One-time payment, lifetime access'**
  String get premium_oneTime;

  /// Premium restore purchases button label.
  ///
  /// In en, this message translates to:
  /// **'Restore Purchases'**
  String get premium_restore;

  /// Premium unlocked status title.
  ///
  /// In en, this message translates to:
  /// **'Premium Unlocked'**
  String get premium_unlockedTitle;

  /// Premium unlocked status description.
  ///
  /// In en, this message translates to:
  /// **'Thanks for your support. You currently have {serverCount} panels.'**
  String premium_unlockedDescription(int serverCount);

  /// Premium terms link label.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get premium_terms;

  /// Premium privacy policy link label.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get premium_privacy;

  /// Premium legal agreement text.
  ///
  /// In en, this message translates to:
  /// **'By purchasing, you agree to the terms and privacy policy above.'**
  String get premium_legalAgreement;

  /// Toast shown after a successful premium purchase.
  ///
  /// In en, this message translates to:
  /// **'Unlimited panels unlocked'**
  String get premium_unlockedToast;

  /// Toast shown when premium purchase does not unlock.
  ///
  /// In en, this message translates to:
  /// **'Purchase was not completed'**
  String get premium_purchaseIncomplete;

  /// Toast title when premium purchase fails.
  ///
  /// In en, this message translates to:
  /// **'Purchase failed'**
  String get premium_purchaseFailed;

  /// Toast shown after purchases are restored.
  ///
  /// In en, this message translates to:
  /// **'Purchases restored'**
  String get premium_restoredToast;

  /// Toast shown when restore finds no premium purchase.
  ///
  /// In en, this message translates to:
  /// **'No restorable purchase found'**
  String get premium_restoreNotFound;

  /// Toast title when purchase restore fails.
  ///
  /// In en, this message translates to:
  /// **'Restore failed'**
  String get premium_restoreFailed;

  /// Server detail file search placeholder.
  ///
  /// In en, this message translates to:
  /// **'Search files...'**
  String get serverDetail_searchFilesPlaceholder;

  /// Server detail website search placeholder.
  ///
  /// In en, this message translates to:
  /// **'Search websites...'**
  String get serverDetail_searchWebsitesPlaceholder;

  /// Tooltip and semantic label for recursive file search.
  ///
  /// In en, this message translates to:
  /// **'Include subdirectories'**
  String get serverDetail_includeSubdirectories;

  /// Tooltip for non-recursive file search.
  ///
  /// In en, this message translates to:
  /// **'Current directory only'**
  String get serverDetail_currentDirectoryOnly;

  /// Server detail overlay menu label.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get serverDetail_menu;

  /// Server detail menu group for creating items.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get serverDetail_new;

  /// Server detail files action to enter selection mode.
  ///
  /// In en, this message translates to:
  /// **'Select Multiple'**
  String get serverDetail_selectMultiple;

  /// Server detail files action to exit selection mode.
  ///
  /// In en, this message translates to:
  /// **'Exit Selection'**
  String get serverDetail_exitSelection;

  /// Server detail files action to upload images from photo library.
  ///
  /// In en, this message translates to:
  /// **'From Photos'**
  String get serverDetail_uploadFromPhotos;

  /// Server detail files action to upload from file picker.
  ///
  /// In en, this message translates to:
  /// **'From Files'**
  String get serverDetail_uploadFromFiles;

  /// Server detail files action to create a remote download upload source.
  ///
  /// In en, this message translates to:
  /// **'From Remote'**
  String get serverDetail_uploadFromRemote;

  /// Server detail files action to manage file shares.
  ///
  /// In en, this message translates to:
  /// **'Share Management'**
  String get serverDetail_shareManagement;

  /// Server detail files view settings menu title.
  ///
  /// In en, this message translates to:
  /// **'View Settings'**
  String get serverDetail_viewSettings;

  /// Server detail files list view option.
  ///
  /// In en, this message translates to:
  /// **'List View'**
  String get serverDetail_listView;

  /// Server detail files icon view option.
  ///
  /// In en, this message translates to:
  /// **'Icon View'**
  String get serverDetail_iconView;

  /// Server detail files action to hide hidden files.
  ///
  /// In en, this message translates to:
  /// **'Hide Hidden'**
  String get serverDetail_hideHiddenFiles;

  /// Server detail files action to show hidden files.
  ///
  /// In en, this message translates to:
  /// **'Show Hidden'**
  String get serverDetail_showAllFiles;

  /// Server detail files sort settings action.
  ///
  /// In en, this message translates to:
  /// **'Sort Settings'**
  String get serverDetail_sortSettings;

  /// Server detail files action to open a terminal.
  ///
  /// In en, this message translates to:
  /// **'Open Terminal'**
  String get serverDetail_openTerminal;

  /// Warning toast when OpenResty install info is unavailable.
  ///
  /// In en, this message translates to:
  /// **'OpenResty install information was not found'**
  String get serverDetail_openRestyInstallMissing;

  /// Confirmation content for OpenResty service operation.
  ///
  /// In en, this message translates to:
  /// **'{action} OpenResty service?'**
  String serverDetail_openRestyConfirmContent(String action);

  /// Toast shown after OpenResty operation succeeds.
  ///
  /// In en, this message translates to:
  /// **'OpenResty {action} succeeded'**
  String serverDetail_openRestySuccess(String action);

  /// Toast title when a named operation fails.
  ///
  /// In en, this message translates to:
  /// **'{action} failed'**
  String serverDetail_operationFailed(String action);

  /// OpenResty config editor title.
  ///
  /// In en, this message translates to:
  /// **'OpenResty Configuration'**
  String get serverDetail_openRestyConfigTitle;

  /// OpenResty config editor subtitle.
  ///
  /// In en, this message translates to:
  /// **'OpenResty main configuration'**
  String get serverDetail_openRestyConfigSubtitle;

  /// Create static website menu action.
  ///
  /// In en, this message translates to:
  /// **'Static Website'**
  String get serverDetail_createStaticWebsite;

  /// Create runtime website menu action.
  ///
  /// In en, this message translates to:
  /// **'Runtime'**
  String get serverDetail_createRuntimeWebsite;

  /// Create reverse proxy website menu action.
  ///
  /// In en, this message translates to:
  /// **'Reverse Proxy'**
  String get serverDetail_createReverseProxy;

  /// Create TCP/UDP proxy website menu action.
  ///
  /// In en, this message translates to:
  /// **'TCP/UDP Proxy'**
  String get serverDetail_createTcpUdpProxy;

  /// Website menu action to manage groups.
  ///
  /// In en, this message translates to:
  /// **'Manage Groups'**
  String get serverDetail_manageGroups;

  /// OpenResty status menu action.
  ///
  /// In en, this message translates to:
  /// **'Runtime Status'**
  String get serverDetail_runtimeStatus;

  /// Logs menu action.
  ///
  /// In en, this message translates to:
  /// **'Logs'**
  String get serverDetail_logs;

  /// Configuration edit menu action.
  ///
  /// In en, this message translates to:
  /// **'Edit Configuration'**
  String get serverDetail_configEdit;

  /// Performance tuning menu action.
  ///
  /// In en, this message translates to:
  /// **'Performance Tuning'**
  String get serverDetail_performanceTuning;

  /// Service operation menu group.
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get serverDetail_service;

  /// Start service action.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get serverDetail_start;

  /// Stop service action.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get serverDetail_stop;

  /// Restart service action.
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get serverDetail_restart;

  /// Reload service action.
  ///
  /// In en, this message translates to:
  /// **'Reload'**
  String get serverDetail_reload;

  /// Image menu pull image action.
  ///
  /// In en, this message translates to:
  /// **'Pull Image'**
  String get serverDetail_pullImage;

  /// Image menu import image action.
  ///
  /// In en, this message translates to:
  /// **'Import Image'**
  String get serverDetail_importImage;

  /// Image menu build image action.
  ///
  /// In en, this message translates to:
  /// **'Build Image'**
  String get serverDetail_buildImage;

  /// Image menu prune build cache action.
  ///
  /// In en, this message translates to:
  /// **'Prune Build Cache'**
  String get serverDetail_pruneBuildCache;

  /// Image menu prune images action.
  ///
  /// In en, this message translates to:
  /// **'Prune Images'**
  String get serverDetail_pruneImages;

  /// Settings page title.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings_title;

  /// Settings section title for purchases.
  ///
  /// In en, this message translates to:
  /// **'Purchases'**
  String get settings_premium_title;

  /// Title for the unlimited purchase entry.
  ///
  /// In en, this message translates to:
  /// **'Mono Dash Unlimited'**
  String get settings_premium_unlimitedTitle;

  /// Subtitle shown when unlimited panels are unlocked.
  ///
  /// In en, this message translates to:
  /// **'Unlimited panels unlocked'**
  String get settings_premium_unlimitedUnlocked;

  /// Subtitle shown when unlimited panels are locked.
  ///
  /// In en, this message translates to:
  /// **'Unlock unlimited panels and more features'**
  String get settings_premium_unlimitedLocked;

  /// Settings section title for appearance options.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settings_appearance_title;

  /// Settings row and picker title for app appearance mode.
  ///
  /// In en, this message translates to:
  /// **'Appearance Mode'**
  String get settings_appearance_modeTitle;

  /// Light appearance mode option.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settings_appearance_modeLight;

  /// Dark appearance mode option.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settings_appearance_modeDark;

  /// Settings row title for app icon selection.
  ///
  /// In en, this message translates to:
  /// **'App Icon'**
  String get settings_appearance_appIconTitle;

  /// Settings row title for server card style selection.
  ///
  /// In en, this message translates to:
  /// **'Card Style'**
  String get settings_appearance_cardStyleTitle;

  /// Settings row and page title for language selection.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settings_language_title;

  /// Settings row subtitle for language selection.
  ///
  /// In en, this message translates to:
  /// **'Choose the app display language'**
  String get settings_language_subtitle;

  /// Language settings section title.
  ///
  /// In en, this message translates to:
  /// **'Display Language'**
  String get settings_language_sectionTitle;

  /// Subtitle for following the system language.
  ///
  /// In en, this message translates to:
  /// **'Use the device language when supported'**
  String get settings_language_systemSubtitle;

  /// Language option label for Simplified Chinese.
  ///
  /// In en, this message translates to:
  /// **'Simplified Chinese'**
  String get settings_language_zh;

  /// Language option label for English.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get settings_language_en;

  /// Settings section title for network and security options.
  ///
  /// In en, this message translates to:
  /// **'Network & Security'**
  String get settings_network_title;

  /// Settings row title for allowing insecure connections.
  ///
  /// In en, this message translates to:
  /// **'Allow Insecure Connections'**
  String get settings_network_allowInsecureTitle;

  /// Settings row subtitle for allowing insecure connections.
  ///
  /// In en, this message translates to:
  /// **'Accept self-signed or untrusted certificates'**
  String get settings_network_allowInsecureSubtitle;

  /// Settings row title for request timeout.
  ///
  /// In en, this message translates to:
  /// **'Request Timeout'**
  String get settings_network_requestTimeoutTitle;

  /// Subtitle showing request timeout in seconds.
  ///
  /// In en, this message translates to:
  /// **'{seconds} s'**
  String settings_network_requestTimeoutSubtitle(int seconds);

  /// Settings section title for iCloud sync.
  ///
  /// In en, this message translates to:
  /// **'Sync'**
  String get settings_sync_title;

  /// Settings row title for iCloud sync.
  ///
  /// In en, this message translates to:
  /// **'iCloud Sync'**
  String get settings_sync_iCloudTitle;

  /// Subtitle shown when iCloud sync is disabled.
  ///
  /// In en, this message translates to:
  /// **'Sync servers and API keys, off by default'**
  String get settings_sync_disabledSubtitle;

  /// Subtitle shown when iCloud sync is enabled but has not succeeded yet.
  ///
  /// In en, this message translates to:
  /// **'Enabled, waiting for the first sync'**
  String get settings_sync_enabledWaitingSubtitle;

  /// Subtitle shown when iCloud is unavailable.
  ///
  /// In en, this message translates to:
  /// **'iCloud is unavailable. Check system iCloud and iCloud Keychain settings.'**
  String get settings_sync_unavailableSubtitle;

  /// Subtitle showing the last successful sync time.
  ///
  /// In en, this message translates to:
  /// **'Last synced: {time}'**
  String settings_sync_lastSucceeded(String time);

  /// Settings row title for manually starting sync.
  ///
  /// In en, this message translates to:
  /// **'Sync Now'**
  String get settings_sync_syncNowTitle;

  /// Settings row subtitle for manually starting sync.
  ///
  /// In en, this message translates to:
  /// **'Pull from iCloud and merge server info'**
  String get settings_sync_syncNowSubtitle;

  /// Subtitle showing the last sync attempt time.
  ///
  /// In en, this message translates to:
  /// **'Last attempt: {time}'**
  String settings_sync_lastAttempted(String time);

  /// Toast shown after enabling iCloud sync.
  ///
  /// In en, this message translates to:
  /// **'iCloud Sync is enabled'**
  String get settings_sync_enabledToast;

  /// Toast shown after disabling iCloud sync.
  ///
  /// In en, this message translates to:
  /// **'iCloud Sync is disabled'**
  String get settings_sync_disabledToast;

  /// Toast shown after sync succeeds.
  ///
  /// In en, this message translates to:
  /// **'Sync completed'**
  String get settings_sync_successToast;

  /// Toast shown after sync fails.
  ///
  /// In en, this message translates to:
  /// **'Sync failed'**
  String get settings_sync_failedToast;

  /// Settings row title for WebDAV configuration.
  ///
  /// In en, this message translates to:
  /// **'WebDAV Config'**
  String get settings_sync_webDavConfigTitle;

  /// Subtitle shown when WebDAV sync has no URL configured.
  ///
  /// In en, this message translates to:
  /// **'WebDAV URL is not configured'**
  String get settings_sync_webDavConfigMissing;

  /// Settings row title for WebDAV sync.
  ///
  /// In en, this message translates to:
  /// **'WebDAV Sync'**
  String get settings_sync_webDavTitle;

  /// Subtitle shown when WebDAV sync is disabled.
  ///
  /// In en, this message translates to:
  /// **'Sync server info. API keys are not uploaded by default'**
  String get settings_sync_webDavDisabledSubtitle;

  /// Settings row subtitle for manually starting WebDAV sync.
  ///
  /// In en, this message translates to:
  /// **'Pull from WebDAV and merge server info'**
  String get settings_sync_webDavSyncNowSubtitle;

  /// Toast shown after enabling WebDAV sync.
  ///
  /// In en, this message translates to:
  /// **'WebDAV Sync is enabled'**
  String get settings_sync_webDavEnabledToast;

  /// Toast shown after disabling WebDAV sync.
  ///
  /// In en, this message translates to:
  /// **'WebDAV Sync is disabled'**
  String get settings_sync_webDavDisabledToast;

  /// Description shown in the WebDAV configuration sheet.
  ///
  /// In en, this message translates to:
  /// **'WebDAV stores the server list in a remote JSON file. API keys are not uploaded by default. If you enable the API key option below, API keys will be synced in that file, so only use trusted WebDAV storage.'**
  String get settings_sync_webDavDescription;

  /// Label for the WebDAV URL field.
  ///
  /// In en, this message translates to:
  /// **'WebDAV URL'**
  String get settings_sync_webDavUrlLabel;

  /// Placeholder for the WebDAV URL field.
  ///
  /// In en, this message translates to:
  /// **'https://example.com/dav/mono-dash/'**
  String get settings_sync_webDavUrlPlaceholder;

  /// Label for the WebDAV username field.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get settings_sync_webDavUsernameLabel;

  /// Placeholder for the WebDAV username field.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get settings_sync_webDavUsernamePlaceholder;

  /// Label for the WebDAV password field.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get settings_sync_webDavPasswordLabel;

  /// Placeholder for the WebDAV password field.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get settings_sync_webDavPasswordPlaceholder;

  /// Validation message for an invalid WebDAV URL.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid http or https URL'**
  String get settings_sync_webDavUrlInvalid;

  /// Title for the WebDAV API key sync option.
  ///
  /// In en, this message translates to:
  /// **'Sync API Keys'**
  String get settings_sync_webDavSyncApiKeysTitle;

  /// Subtitle for the WebDAV API key sync option.
  ///
  /// In en, this message translates to:
  /// **'When enabled, API keys are written to the WebDAV sync file'**
  String get settings_sync_webDavSyncApiKeysSubtitle;

  /// Error description shown when reading the WebDAV sync file fails.
  ///
  /// In en, this message translates to:
  /// **'Could not read the WebDAV sync file (HTTP {status})'**
  String settings_sync_webDavErrorReadFailed(String status);

  /// Error description shown when writing the WebDAV sync file fails.
  ///
  /// In en, this message translates to:
  /// **'Could not write the WebDAV sync file (HTTP {status})'**
  String settings_sync_webDavErrorWriteFailed(String status);

  /// Error description shown when creating a WebDAV directory fails.
  ///
  /// In en, this message translates to:
  /// **'Could not create the WebDAV directory (HTTP {status})'**
  String settings_sync_webDavErrorDirectoryFailed(String status);

  /// Settings row title for custom request headers.
  ///
  /// In en, this message translates to:
  /// **'Custom Headers'**
  String get settings_network_customHeadersTitle;

  /// Subtitle shown when no custom headers are configured.
  ///
  /// In en, this message translates to:
  /// **'Not set'**
  String get settings_network_customHeadersEmpty;

  /// Subtitle showing how many custom headers are configured.
  ///
  /// In en, this message translates to:
  /// **'{count} set'**
  String settings_network_customHeadersCount(int count);

  /// SSH management page title.
  ///
  /// In en, this message translates to:
  /// **'SSH Management'**
  String get ssh_title;

  /// SSH configuration trailing menu label.
  ///
  /// In en, this message translates to:
  /// **'Manage'**
  String get ssh_manage;

  /// Action to refresh SSH configuration.
  ///
  /// In en, this message translates to:
  /// **'Refresh Config'**
  String get ssh_refreshConfig;

  /// Action and sheet title for full sshd configuration.
  ///
  /// In en, this message translates to:
  /// **'Full Config'**
  String get ssh_fullConfig;

  /// Menu item for SSH public key management.
  ///
  /// In en, this message translates to:
  /// **'Public Key Management'**
  String get ssh_publicKeyManagement;

  /// Menu item and editor title for authorized_keys.
  ///
  /// In en, this message translates to:
  /// **'Authorized Keys'**
  String get ssh_authorizedKeys;

  /// Placeholder for SSH login log search field.
  ///
  /// In en, this message translates to:
  /// **'Search address or user...'**
  String get ssh_logSearchPlaceholder;

  /// Menu item to search SSH logs.
  ///
  /// In en, this message translates to:
  /// **'Search Logs'**
  String get ssh_searchLogs;

  /// Menu item to export SSH logs.
  ///
  /// In en, this message translates to:
  /// **'Export Logs'**
  String get ssh_exportLogs;

  /// Menu item to refresh SSH log list.
  ///
  /// In en, this message translates to:
  /// **'Refresh List'**
  String get ssh_refreshList;

  /// Error when exported SSH log file download is empty.
  ///
  /// In en, this message translates to:
  /// **'File download failed or was empty'**
  String get ssh_downloadEmpty;

  /// Share title and subject for exported SSH login logs.
  ///
  /// In en, this message translates to:
  /// **'SSH Login Logs'**
  String get ssh_loginLogTitle;

  /// Toast title when exporting SSH logs fails.
  ///
  /// In en, this message translates to:
  /// **'Export failed'**
  String get ssh_exportFailed;

  /// SSH service status section title.
  ///
  /// In en, this message translates to:
  /// **'Service Status'**
  String get ssh_serviceStatus;

  /// SSH running status row title.
  ///
  /// In en, this message translates to:
  /// **'Running Status'**
  String get ssh_runningStatus;

  /// Default SSH service running message.
  ///
  /// In en, this message translates to:
  /// **'SSH service is running normally'**
  String get ssh_serviceRunningMessage;

  /// SSH service running status.
  ///
  /// In en, this message translates to:
  /// **'Running'**
  String get ssh_running;

  /// SSH service stopped status.
  ///
  /// In en, this message translates to:
  /// **'Stopped'**
  String get ssh_stopped;

  /// SSH port label.
  ///
  /// In en, this message translates to:
  /// **'Port'**
  String get ssh_port;

  /// SSH setting not configured placeholder.
  ///
  /// In en, this message translates to:
  /// **'Not Configured'**
  String get ssh_notConfigured;

  /// SSH listen address label.
  ///
  /// In en, this message translates to:
  /// **'Listen Address'**
  String get ssh_listenAddress;

  /// SSH current user label.
  ///
  /// In en, this message translates to:
  /// **'Current User'**
  String get ssh_currentUser;

  /// SSH auto start switch label.
  ///
  /// In en, this message translates to:
  /// **'Start on Boot'**
  String get ssh_autoStart;

  /// Action to start SSH service.
  ///
  /// In en, this message translates to:
  /// **'Start Service'**
  String get ssh_startService;

  /// Action to stop SSH service.
  ///
  /// In en, this message translates to:
  /// **'Stop Service'**
  String get ssh_stopService;

  /// Action to restart SSH service.
  ///
  /// In en, this message translates to:
  /// **'Restart Service'**
  String get ssh_restartService;

  /// Short start action label.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get ssh_start;

  /// Short stop action label.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get ssh_stop;

  /// Short restart action label.
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get ssh_restart;

  /// SSH authentication configuration section title.
  ///
  /// In en, this message translates to:
  /// **'Authentication'**
  String get ssh_authConfig;

  /// SSH password login switch label.
  ///
  /// In en, this message translates to:
  /// **'Password Login'**
  String get ssh_passwordLogin;

  /// SSH key login switch label.
  ///
  /// In en, this message translates to:
  /// **'Key Login'**
  String get ssh_keyLogin;

  /// SSH UseDNS switch label.
  ///
  /// In en, this message translates to:
  /// **'DNS Lookup (UseDNS)'**
  String get ssh_useDns;

  /// Confirm dialog title for SSH service operation.
  ///
  /// In en, this message translates to:
  /// **'{label} SSH'**
  String ssh_confirmOperationTitle(String label);

  /// Confirm dialog content for SSH service operation.
  ///
  /// In en, this message translates to:
  /// **'Run {operation}?'**
  String ssh_confirmOperationContent(String operation);

  /// Code editor title for SSH config file.
  ///
  /// In en, this message translates to:
  /// **'SSH Config File'**
  String get ssh_configFileTitle;

  /// Warning shown before editing full SSH configuration.
  ///
  /// In en, this message translates to:
  /// **'Full config edits sshd_config directly. SSH service will restart automatically after changes.'**
  String get ssh_fullConfigWarning;

  /// SSH config file list label.
  ///
  /// In en, this message translates to:
  /// **'Config File'**
  String get ssh_configFile;

  /// SSH config file priority label.
  ///
  /// In en, this message translates to:
  /// **'Priority {priority}'**
  String ssh_priority(int priority);

  /// Button to edit selected SSH config file.
  ///
  /// In en, this message translates to:
  /// **'Edit Config File'**
  String get ssh_editConfigFile;

  /// SSH root login policy picker title.
  ///
  /// In en, this message translates to:
  /// **'Root Login Policy'**
  String get ssh_rootLoginPolicy;

  /// PermitRootLogin yes label.
  ///
  /// In en, this message translates to:
  /// **'Allow Root Login'**
  String get ssh_rootLoginAllow;

  /// PermitRootLogin no label.
  ///
  /// In en, this message translates to:
  /// **'Deny Root Login'**
  String get ssh_rootLoginDeny;

  /// PermitRootLogin prohibit-password label.
  ///
  /// In en, this message translates to:
  /// **'Disable Password Login'**
  String get ssh_rootLoginProhibitPassword;

  /// PermitRootLogin forced-commands-only label.
  ///
  /// In en, this message translates to:
  /// **'Forced Commands Only'**
  String get ssh_rootLoginForcedCommandsOnly;

  /// SSH session disconnect dialog title.
  ///
  /// In en, this message translates to:
  /// **'Disconnect'**
  String get ssh_disconnectTitle;

  /// SSH session disconnect dialog content.
  ///
  /// In en, this message translates to:
  /// **'Disconnect SSH session PID {pid}?'**
  String ssh_disconnectContent(int pid);

  /// SSH session disconnect action label.
  ///
  /// In en, this message translates to:
  /// **'Disconnect'**
  String get ssh_disconnectAction;

  /// Toast shown after disconnecting SSH session.
  ///
  /// In en, this message translates to:
  /// **'Disconnected'**
  String get ssh_disconnected;

  /// Toast title when disconnecting SSH session fails.
  ///
  /// In en, this message translates to:
  /// **'Disconnect failed'**
  String get ssh_disconnectFailed;

  /// SSH session websocket connecting state.
  ///
  /// In en, this message translates to:
  /// **'Connecting to session service'**
  String get ssh_connectingSessions;

  /// SSH session connection failed title.
  ///
  /// In en, this message translates to:
  /// **'Connection failed'**
  String get ssh_connectionFailed;

  /// Empty state title for SSH sessions.
  ///
  /// In en, this message translates to:
  /// **'No Active Sessions'**
  String get ssh_noActiveSessions;

  /// Empty state subtitle for SSH sessions.
  ///
  /// In en, this message translates to:
  /// **'SSH sessions will appear here'**
  String get ssh_sessionsEmptySubtitle;

  /// SSH session item force disconnect button.
  ///
  /// In en, this message translates to:
  /// **'Force Disconnect'**
  String get ssh_forceDisconnect;

  /// SSH switch updating state.
  ///
  /// In en, this message translates to:
  /// **'Updating'**
  String get ssh_updating;

  /// SSH switch enabled state.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get ssh_enabled;

  /// SSH switch disabled state.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get ssh_disabled;

  /// SSH edit port sheet title.
  ///
  /// In en, this message translates to:
  /// **'Edit Port'**
  String get ssh_editPort;

  /// SSH port input placeholder.
  ///
  /// In en, this message translates to:
  /// **'22 or 22,2222'**
  String get ssh_portPlaceholder;

  /// SSH port input hint.
  ///
  /// In en, this message translates to:
  /// **'Separate multiple ports with commas, such as 22,2222'**
  String get ssh_portHint;

  /// SSH port validation error.
  ///
  /// In en, this message translates to:
  /// **'Port cannot be empty'**
  String get ssh_portRequired;

  /// SSH port validation error for malformed list.
  ///
  /// In en, this message translates to:
  /// **'Invalid port format'**
  String get ssh_portInvalidFormat;

  /// SSH port validation error for invalid range.
  ///
  /// In en, this message translates to:
  /// **'Port must be an integer from 1 to 65535'**
  String get ssh_portInvalidRange;

  /// SSH port validation error for duplicate port.
  ///
  /// In en, this message translates to:
  /// **'Port cannot be duplicated'**
  String get ssh_portDuplicate;

  /// SSH edit listen address sheet title.
  ///
  /// In en, this message translates to:
  /// **'Edit Listen Address'**
  String get ssh_editListenAddress;

  /// IPv4 address field label.
  ///
  /// In en, this message translates to:
  /// **'IPv4 Address'**
  String get ssh_ipv4Address;

  /// IPv6 address field label.
  ///
  /// In en, this message translates to:
  /// **'IPv6 Address'**
  String get ssh_ipv6Address;

  /// SSH listen address bind all hint.
  ///
  /// In en, this message translates to:
  /// **'Bind all listens on all network interfaces (0.0.0.0 / ::)'**
  String get ssh_bindAllHint;

  /// SSH listen address bind all switch label.
  ///
  /// In en, this message translates to:
  /// **'Bind All'**
  String get ssh_bindAll;

  /// SSH key management sheet title.
  ///
  /// In en, this message translates to:
  /// **'SSH Key Management'**
  String get ssh_certManageTitle;

  /// Empty state title for SSH keys.
  ///
  /// In en, this message translates to:
  /// **'No Keys'**
  String get ssh_certEmptyTitle;

  /// Empty state subtitle for SSH keys.
  ///
  /// In en, this message translates to:
  /// **'Tap + in the top right to create a key'**
  String get ssh_certEmptySubtitle;

  /// SSH key sync confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Sync Keys'**
  String get ssh_certSyncTitle;

  /// SSH key sync confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Scan keys from disk and sync them to the database?'**
  String get ssh_certSyncContent;

  /// SSH key sync action label.
  ///
  /// In en, this message translates to:
  /// **'Sync'**
  String get ssh_certSyncAction;

  /// SSH key encryption mode label.
  ///
  /// In en, this message translates to:
  /// **'Encryption Mode'**
  String get ssh_encryptionMode;

  /// SSH key passphrase label.
  ///
  /// In en, this message translates to:
  /// **'Passphrase'**
  String get ssh_passphrase;

  /// SSH key public key label.
  ///
  /// In en, this message translates to:
  /// **'Public Key'**
  String get ssh_publicKey;

  /// SSH key private key label.
  ///
  /// In en, this message translates to:
  /// **'Private Key'**
  String get ssh_privateKey;

  /// SSH key field value when key content has not synced.
  ///
  /// In en, this message translates to:
  /// **'Not Synced'**
  String get ssh_unsynced;

  /// SSH key edit form title.
  ///
  /// In en, this message translates to:
  /// **'Edit Key'**
  String get ssh_editKey;

  /// SSH key create form title.
  ///
  /// In en, this message translates to:
  /// **'Create Key'**
  String get ssh_createKey;

  /// SSH key name field label.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get ssh_name;

  /// SSH key create mode field label.
  ///
  /// In en, this message translates to:
  /// **'Create Mode'**
  String get ssh_createMode;

  /// SSH key optional passphrase field label.
  ///
  /// In en, this message translates to:
  /// **'Passphrase (Optional)'**
  String get ssh_passphraseOptional;

  /// SSH key passphrase field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Leave empty for no passphrase'**
  String get ssh_passphrasePlaceholder;

  /// SSH public key field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Paste public key content'**
  String get ssh_pastePublicKey;

  /// SSH private key field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Paste private key content'**
  String get ssh_pastePrivateKey;

  /// SSH key optional description field label.
  ///
  /// In en, this message translates to:
  /// **'Description (Optional)'**
  String get ssh_descriptionOptional;

  /// SSH key description placeholder.
  ///
  /// In en, this message translates to:
  /// **'Remarks'**
  String get ssh_remarksPlaceholder;

  /// SSH key encryption mode picker title.
  ///
  /// In en, this message translates to:
  /// **'Select Encryption Mode'**
  String get ssh_selectEncryptionMode;

  /// SSH key create mode option.
  ///
  /// In en, this message translates to:
  /// **'Generate Automatically'**
  String get ssh_generateAutomatically;

  /// SSH key create mode option.
  ///
  /// In en, this message translates to:
  /// **'Manual Input'**
  String get ssh_manualInput;

  /// SSH key validation error when name is empty.
  ///
  /// In en, this message translates to:
  /// **'Enter a name'**
  String get ssh_enterName;

  /// Toast shown after creating SSH key.
  ///
  /// In en, this message translates to:
  /// **'Key created'**
  String get ssh_certCreated;

  /// Toast title when SSH key creation fails.
  ///
  /// In en, this message translates to:
  /// **'Create failed'**
  String get ssh_createFailed;

  /// Toast shown after updating SSH key.
  ///
  /// In en, this message translates to:
  /// **'Key updated'**
  String get ssh_certUpdated;

  /// Toast title when SSH update fails.
  ///
  /// In en, this message translates to:
  /// **'Update failed'**
  String get ssh_updateFailed;

  /// Toast shown after deleting SSH key.
  ///
  /// In en, this message translates to:
  /// **'Key deleted'**
  String get ssh_certDeleted;

  /// Toast title when deleting SSH key fails.
  ///
  /// In en, this message translates to:
  /// **'Delete failed'**
  String get ssh_deleteFailed;

  /// Toast shown after syncing SSH keys.
  ///
  /// In en, this message translates to:
  /// **'Sync completed'**
  String get ssh_syncCompleted;

  /// Toast title when syncing SSH keys fails.
  ///
  /// In en, this message translates to:
  /// **'Sync failed'**
  String get ssh_syncFailed;

  /// Toast shown after an SSH operation succeeds.
  ///
  /// In en, this message translates to:
  /// **'Operation completed'**
  String get ssh_operationCompleted;

  /// Toast title when SSH operation fails.
  ///
  /// In en, this message translates to:
  /// **'Operation failed'**
  String get ssh_operationFailed;

  /// Toast shown after updating SSH configuration.
  ///
  /// In en, this message translates to:
  /// **'Configuration updated'**
  String get ssh_configUpdated;

  /// Runtime management page title.
  ///
  /// In en, this message translates to:
  /// **'Runtimes'**
  String get runtime_title;

  /// All runtimes filter label.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get runtime_all;

  /// Runtime page menu label.
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get runtime_action;

  /// Create new runtime menu label.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get runtime_new;

  /// Runtime search field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Search runtimes...'**
  String get runtime_searchPlaceholder;

  /// Warning shown when runtime container name is unavailable.
  ///
  /// In en, this message translates to:
  /// **'Runtime container name not found'**
  String get runtime_containerNameMissing;

  /// Runtime build log sheet title.
  ///
  /// In en, this message translates to:
  /// **'{name} Build Logs'**
  String runtime_buildLogTitle(String name);

  /// Empty state title when there are no runtimes.
  ///
  /// In en, this message translates to:
  /// **'No Runtimes'**
  String get runtime_emptyTitle;

  /// Empty state title when runtime search has no results.
  ///
  /// In en, this message translates to:
  /// **'No runtimes found'**
  String get runtime_noSearchResults;

  /// Empty state title for a selected runtime type.
  ///
  /// In en, this message translates to:
  /// **'No {type} runtimes yet'**
  String runtime_emptyTypeTitle(String type);

  /// Empty state subtitle when there are no runtimes.
  ///
  /// In en, this message translates to:
  /// **'Tap New in the top right to create a runtime'**
  String get runtime_emptySubtitle;

  /// Empty state subtitle for runtime search.
  ///
  /// In en, this message translates to:
  /// **'Try a different keyword'**
  String get runtime_noSearchResultsSubtitle;

  /// Empty state subtitle for a selected runtime type.
  ///
  /// In en, this message translates to:
  /// **'Create a {type} runtime from the top right'**
  String runtime_emptyTypeSubtitle(String type);

  /// Runtime edit sheet title.
  ///
  /// In en, this message translates to:
  /// **'Edit {type} Runtime'**
  String runtime_editTitle(String type);

  /// Runtime create sheet title.
  ///
  /// In en, this message translates to:
  /// **'Create {type} Runtime'**
  String runtime_createTitle(String type);

  /// Runtime action sheet service section title.
  ///
  /// In en, this message translates to:
  /// **'Service Management'**
  String get runtime_serviceManagement;

  /// Runtime start action label.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get runtime_start;

  /// Runtime stop action label.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get runtime_stop;

  /// Runtime restart action label.
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get runtime_restart;

  /// Runtime start action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Start runtime'**
  String get runtime_startDescription;

  /// Runtime stop action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Stop runtime'**
  String get runtime_stopDescription;

  /// Runtime restart action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Restart runtime'**
  String get runtime_restartDescription;

  /// Runtime action sheet tools section title.
  ///
  /// In en, this message translates to:
  /// **'App Tools'**
  String get runtime_appTools;

  /// Runtime project directory action title.
  ///
  /// In en, this message translates to:
  /// **'Project Directory'**
  String get runtime_projectDirectory;

  /// Runtime config directory action title.
  ///
  /// In en, this message translates to:
  /// **'Config Directory'**
  String get runtime_configDirectory;

  /// Runtime terminal action title.
  ///
  /// In en, this message translates to:
  /// **'Terminal'**
  String get runtime_terminal;

  /// Runtime terminal action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Run commands inside the container'**
  String get runtime_terminalDescription;

  /// Runtime edit action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Modify runtime configuration'**
  String get runtime_editDescription;

  /// Runtime action sheet log section title.
  ///
  /// In en, this message translates to:
  /// **'Logs'**
  String get runtime_logs;

  /// Runtime running logs action title.
  ///
  /// In en, this message translates to:
  /// **'Runtime Logs'**
  String get runtime_runLogs;

  /// Runtime running logs action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View container runtime logs'**
  String get runtime_runLogsDescription;

  /// Runtime build logs action title.
  ///
  /// In en, this message translates to:
  /// **'Build Logs'**
  String get runtime_buildLogs;

  /// Runtime build logs action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View build process logs'**
  String get runtime_buildLogsDescription;

  /// Runtime action sheet danger section title.
  ///
  /// In en, this message translates to:
  /// **'Danger Zone'**
  String get runtime_dangerZone;

  /// Runtime delete action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Delete this runtime'**
  String get runtime_deleteDescription;

  /// Runtime delete confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Delete Runtime'**
  String get runtime_deleteTitle;

  /// Runtime delete confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Delete runtime \"{name}\"?'**
  String runtime_deleteConfirm(String name);

  /// Runtime operation confirmation title.
  ///
  /// In en, this message translates to:
  /// **'{action} Runtime'**
  String runtime_operateTitle(String action);

  /// Runtime operation confirmation content.
  ///
  /// In en, this message translates to:
  /// **'{action} this runtime?'**
  String runtime_operateContent(String action);

  /// Runtime operation success toast.
  ///
  /// In en, this message translates to:
  /// **'{action} succeeded'**
  String runtime_operationSucceeded(String action);

  /// Runtime operation failure toast.
  ///
  /// In en, this message translates to:
  /// **'{action} failed'**
  String runtime_operationFailed(String action);

  /// Runtime delete success toast.
  ///
  /// In en, this message translates to:
  /// **'Deleted'**
  String get runtime_deleteSucceeded;

  /// Runtime delete failure toast.
  ///
  /// In en, this message translates to:
  /// **'Delete failed'**
  String get runtime_deleteFailed;

  /// Runtime form validation: name required.
  ///
  /// In en, this message translates to:
  /// **'Enter a name'**
  String get runtime_nameRequired;

  /// Runtime form validation: selected app unavailable.
  ///
  /// In en, this message translates to:
  /// **'Failed to load app'**
  String get runtime_appLoadFailed;

  /// Runtime form validation: version required.
  ///
  /// In en, this message translates to:
  /// **'Select a version'**
  String get runtime_versionRequired;

  /// Runtime form validation: config still loading.
  ///
  /// In en, this message translates to:
  /// **'App configuration is loading. Please wait.'**
  String get runtime_configLoading;

  /// Runtime form validation: container name invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid container name'**
  String get runtime_containerNameInvalid;

  /// Runtime form validation: code directory required.
  ///
  /// In en, this message translates to:
  /// **'Enter a code directory'**
  String get runtime_codeDirRequired;

  /// Runtime form validation: host port invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid host port'**
  String get runtime_hostPortInvalid;

  /// Runtime form validation: container port invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid container port'**
  String get runtime_containerPortInvalid;

  /// Runtime form validation: duplicate host port.
  ///
  /// In en, this message translates to:
  /// **'Host port {port} is duplicated'**
  String runtime_hostPortDuplicate(int port);

  /// Runtime form validation: duplicate container port.
  ///
  /// In en, this message translates to:
  /// **'Container port {port} is duplicated'**
  String runtime_containerPortDuplicate(int port);

  /// Runtime form save failure toast.
  ///
  /// In en, this message translates to:
  /// **'Save failed'**
  String get runtime_saveFailed;

  /// Runtime form create failure toast.
  ///
  /// In en, this message translates to:
  /// **'Create failed'**
  String get runtime_createFailed;

  /// Runtime form app selection section title.
  ///
  /// In en, this message translates to:
  /// **'App Selection'**
  String get runtime_appSelection;

  /// Runtime form basic configuration section title.
  ///
  /// In en, this message translates to:
  /// **'Basic Config'**
  String get runtime_basicConfig;

  /// Runtime form name field label.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get runtime_name;

  /// Runtime form container name field label.
  ///
  /// In en, this message translates to:
  /// **'Container Name'**
  String get runtime_containerName;

  /// Runtime form container name placeholder.
  ///
  /// In en, this message translates to:
  /// **'Leave empty to match the name'**
  String get runtime_containerNamePlaceholder;

  /// Runtime form project configuration section title.
  ///
  /// In en, this message translates to:
  /// **'Project Config'**
  String get runtime_projectConfig;

  /// Runtime form code directory field label.
  ///
  /// In en, this message translates to:
  /// **'Code Directory'**
  String get runtime_codeDirectory;

  /// Runtime file picker title for code directory.
  ///
  /// In en, this message translates to:
  /// **'Choose Code Directory'**
  String get runtime_chooseCodeDirectory;

  /// Runtime form start command field label.
  ///
  /// In en, this message translates to:
  /// **'Start Command'**
  String get runtime_startCommand;

  /// Runtime start command placeholder.
  ///
  /// In en, this message translates to:
  /// **'Example: {command}'**
  String runtime_startCommandExample(String command);

  /// Runtime form port mappings section title.
  ///
  /// In en, this message translates to:
  /// **'Port Mappings'**
  String get runtime_portMappings;

  /// Runtime form port public access hint.
  ///
  /// In en, this message translates to:
  /// **'Tap the lock icon to allow external port access'**
  String get runtime_portPublicHint;

  /// Runtime form environment variables section title.
  ///
  /// In en, this message translates to:
  /// **'Environment Variables'**
  String get runtime_environmentVariables;

  /// Runtime form mounts section title.
  ///
  /// In en, this message translates to:
  /// **'Mounts'**
  String get runtime_mounts;

  /// Runtime form host mappings section title.
  ///
  /// In en, this message translates to:
  /// **'Host Mappings'**
  String get runtime_hostMappings;

  /// Runtime form other section title.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get runtime_other;

  /// Runtime form remark label.
  ///
  /// In en, this message translates to:
  /// **'Remark'**
  String get runtime_remark;

  /// Generic optional placeholder for runtime forms.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get runtime_optional;

  /// Runtime form version field label.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get runtime_version;

  /// Runtime version picker loading apps state.
  ///
  /// In en, this message translates to:
  /// **'Loading apps...'**
  String get runtime_loadingApps;

  /// Runtime version picker loading state.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get runtime_loading;

  /// Runtime version picker empty state.
  ///
  /// In en, this message translates to:
  /// **'No versions available'**
  String get runtime_noVersions;

  /// Runtime form empty port mappings placeholder.
  ///
  /// In en, this message translates to:
  /// **'No port mappings added'**
  String get runtime_noPortMappings;

  /// Runtime form host port placeholder.
  ///
  /// In en, this message translates to:
  /// **'Host Port'**
  String get runtime_hostPort;

  /// Runtime form container port placeholder.
  ///
  /// In en, this message translates to:
  /// **'Container Port'**
  String get runtime_containerPort;

  /// Runtime form empty environment variables placeholder.
  ///
  /// In en, this message translates to:
  /// **'No environment variables added'**
  String get runtime_noEnvironmentVariables;

  /// Runtime form environment variable key placeholder.
  ///
  /// In en, this message translates to:
  /// **'Key'**
  String get runtime_envKey;

  /// Runtime form environment variable value placeholder.
  ///
  /// In en, this message translates to:
  /// **'Value'**
  String get runtime_envValue;

  /// Runtime form empty mounts placeholder.
  ///
  /// In en, this message translates to:
  /// **'No mounts added'**
  String get runtime_noMounts;

  /// Runtime form host path placeholder.
  ///
  /// In en, this message translates to:
  /// **'Host Path'**
  String get runtime_hostPath;

  /// Runtime file picker title for mount source path.
  ///
  /// In en, this message translates to:
  /// **'Choose Mount Path'**
  String get runtime_chooseMountPath;

  /// Runtime form container path placeholder.
  ///
  /// In en, this message translates to:
  /// **'Container Path'**
  String get runtime_containerPath;

  /// Runtime form empty host mappings placeholder.
  ///
  /// In en, this message translates to:
  /// **'No host mappings added'**
  String get runtime_noHostMappings;

  /// Runtime form hostname placeholder.
  ///
  /// In en, this message translates to:
  /// **'Hostname'**
  String get runtime_hostname;

  /// Runtime form IP address placeholder.
  ///
  /// In en, this message translates to:
  /// **'IP Address'**
  String get runtime_ipAddress;

  /// PHP runtime APT mirror section title.
  ///
  /// In en, this message translates to:
  /// **'APT Mirror Source'**
  String get runtime_aptMirrorSource;

  /// PHP runtime configuration section title.
  ///
  /// In en, this message translates to:
  /// **'PHP Config'**
  String get runtime_phpConfig;

  /// PHP runtime version field label.
  ///
  /// In en, this message translates to:
  /// **'PHP Version'**
  String get runtime_phpVersion;

  /// PHP-FPM port field label.
  ///
  /// In en, this message translates to:
  /// **'PHP-FPM Port'**
  String get runtime_phpFpmPort;

  /// PHP extension preset picker label.
  ///
  /// In en, this message translates to:
  /// **'Extension Preset'**
  String get runtime_extensionPreset;

  /// Runtime mirror source picker label.
  ///
  /// In en, this message translates to:
  /// **'Mirror Source'**
  String get runtime_mirrorSource;

  /// PHP extensions field label.
  ///
  /// In en, this message translates to:
  /// **'PHP Extensions'**
  String get runtime_phpExtensions;

  /// PHP extension input placeholder.
  ///
  /// In en, this message translates to:
  /// **'Add more'**
  String get runtime_addMore;

  /// Node runtime package config section title.
  ///
  /// In en, this message translates to:
  /// **'Package Config'**
  String get runtime_packageConfig;

  /// Node runtime package manager field label.
  ///
  /// In en, this message translates to:
  /// **'Package Manager'**
  String get runtime_packageManager;

  /// Node runtime start command section title.
  ///
  /// In en, this message translates to:
  /// **'Start Command'**
  String get runtime_startCommandSection;

  /// Node runtime run script field label.
  ///
  /// In en, this message translates to:
  /// **'Run Script'**
  String get runtime_runScript;

  /// Node runtime action to switch to built-in scripts.
  ///
  /// In en, this message translates to:
  /// **'Select Built-in Script'**
  String get runtime_selectBuiltinScript;

  /// Node runtime action to switch to custom command.
  ///
  /// In en, this message translates to:
  /// **'Custom Command'**
  String get runtime_customCommand;

  /// Node runtime custom script hint.
  ///
  /// In en, this message translates to:
  /// **'Enter a custom start command in Project Config above'**
  String get runtime_customScriptHint;

  /// Node runtime scripts loading state.
  ///
  /// In en, this message translates to:
  /// **'Loading scripts...'**
  String get runtime_loadingScripts;

  /// Node runtime scripts empty state.
  ///
  /// In en, this message translates to:
  /// **'No project scripts found'**
  String get runtime_noScripts;

  /// Node runtime NPM mirror source label.
  ///
  /// In en, this message translates to:
  /// **'NPM Mirror Source'**
  String get runtime_npmMirrorSource;

  /// Firewall page title.
  ///
  /// In en, this message translates to:
  /// **'Firewall'**
  String get firewall_title;

  /// Firewall base status load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load firewall status'**
  String get firewall_loadStatusFailed;

  /// Firewall service missing empty state title.
  ///
  /// In en, this message translates to:
  /// **'Firewalld / Ufw service not found'**
  String get firewall_serviceMissingTitle;

  /// Firewall service missing empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Install it before using this feature.'**
  String get firewall_serviceMissingSubtitle;

  /// Firewall refresh status action label.
  ///
  /// In en, this message translates to:
  /// **'Refresh Status'**
  String get firewall_refreshStatus;

  /// Firewall search port rules label.
  ///
  /// In en, this message translates to:
  /// **'Search Port Rules'**
  String get firewall_searchPortRules;

  /// Firewall search IP rules label.
  ///
  /// In en, this message translates to:
  /// **'Search IP Rules'**
  String get firewall_searchIpRules;

  /// Firewall service submenu label.
  ///
  /// In en, this message translates to:
  /// **'Firewall Service'**
  String get firewall_serviceMenu;

  /// Firewall create port rule action.
  ///
  /// In en, this message translates to:
  /// **'New Port Rule'**
  String get firewall_newPortRule;

  /// Firewall edit port rule sheet title.
  ///
  /// In en, this message translates to:
  /// **'Edit Port Rule'**
  String get firewall_editPortRule;

  /// Firewall create IP rule action.
  ///
  /// In en, this message translates to:
  /// **'New IP Rule'**
  String get firewall_newIpRule;

  /// Firewall edit IP rule sheet title.
  ///
  /// In en, this message translates to:
  /// **'Edit IP Rule'**
  String get firewall_editIpRule;

  /// Firewall exit selection mode action.
  ///
  /// In en, this message translates to:
  /// **'Exit Multi-select'**
  String get firewall_exitMultiSelect;

  /// Firewall select rules action.
  ///
  /// In en, this message translates to:
  /// **'Select Rules'**
  String get firewall_selectRules;

  /// Firewall importing state label.
  ///
  /// In en, this message translates to:
  /// **'Importing'**
  String get firewall_importing;

  /// Firewall import rules action label.
  ///
  /// In en, this message translates to:
  /// **'Import Rules'**
  String get firewall_importRules;

  /// Firewall filter strategy menu label.
  ///
  /// In en, this message translates to:
  /// **'Filter Strategy'**
  String get firewall_filterStrategy;

  /// Firewall all strategies filter label.
  ///
  /// In en, this message translates to:
  /// **'All Strategies'**
  String get firewall_allStrategies;

  /// Firewall refresh rules action label.
  ///
  /// In en, this message translates to:
  /// **'Refresh Rules'**
  String get firewall_refreshRules;

  /// Firewall start service action label.
  ///
  /// In en, this message translates to:
  /// **'Start Service'**
  String get firewall_startService;

  /// Firewall stop service action label.
  ///
  /// In en, this message translates to:
  /// **'Stop Service'**
  String get firewall_stopService;

  /// Firewall restart service action label.
  ///
  /// In en, this message translates to:
  /// **'Restart Service'**
  String get firewall_restartService;

  /// Firewall start confirm title.
  ///
  /// In en, this message translates to:
  /// **'Start Firewall'**
  String get firewall_startTitle;

  /// Firewall stop confirm title.
  ///
  /// In en, this message translates to:
  /// **'Stop Firewall'**
  String get firewall_stopTitle;

  /// Firewall restart confirm title.
  ///
  /// In en, this message translates to:
  /// **'Restart Firewall'**
  String get firewall_restartTitle;

  /// Firewall start confirm content.
  ///
  /// In en, this message translates to:
  /// **'Start the firewall service?'**
  String get firewall_startContent;

  /// Firewall stop confirm content.
  ///
  /// In en, this message translates to:
  /// **'Rules will be unavailable after stopping. Continue?'**
  String get firewall_stopContent;

  /// Firewall restart confirm content.
  ///
  /// In en, this message translates to:
  /// **'Restart the firewall service?'**
  String get firewall_restartContent;

  /// Firewall enable ping block action.
  ///
  /// In en, this message translates to:
  /// **'Enable Ping Block'**
  String get firewall_enableBanPing;

  /// Firewall disable ping block action.
  ///
  /// In en, this message translates to:
  /// **'Disable Ping Block'**
  String get firewall_disableBanPing;

  /// Firewall enable ping block confirm content.
  ///
  /// In en, this message translates to:
  /// **'External ping requests will be blocked. Continue?'**
  String get firewall_enableBanPingContent;

  /// Firewall disable ping block confirm content.
  ///
  /// In en, this message translates to:
  /// **'External clients will be able to ping this host. Continue?'**
  String get firewall_disableBanPingContent;

  /// Firewall initialize 1PANEL_BASIC action.
  ///
  /// In en, this message translates to:
  /// **'Initialize 1PANEL_BASIC'**
  String get firewall_initBasicChain;

  /// Firewall initialize iptables confirm title.
  ///
  /// In en, this message translates to:
  /// **'Initialize iptables'**
  String get firewall_initIptables;

  /// Firewall initialize base chain confirm content.
  ///
  /// In en, this message translates to:
  /// **'Initialize the 1PANEL_BASIC base chain?'**
  String get firewall_initBasicChainContent;

  /// Firewall bind 1PANEL_BASIC action.
  ///
  /// In en, this message translates to:
  /// **'Bind 1PANEL_BASIC'**
  String get firewall_bindBasicChain;

  /// Firewall unbind 1PANEL_BASIC action.
  ///
  /// In en, this message translates to:
  /// **'Unbind 1PANEL_BASIC'**
  String get firewall_unbindBasicChain;

  /// Firewall bind iptables base chain confirm title.
  ///
  /// In en, this message translates to:
  /// **'Bind iptables Base Chain'**
  String get firewall_bindIptablesTitle;

  /// Firewall unbind iptables base chain confirm title.
  ///
  /// In en, this message translates to:
  /// **'Unbind iptables Base Chain'**
  String get firewall_unbindIptablesTitle;

  /// Firewall bind base chain confirm content.
  ///
  /// In en, this message translates to:
  /// **'Bind the 1PANEL_BASIC base chain?'**
  String get firewall_bindBasicChainContent;

  /// Firewall unbind base chain confirm content.
  ///
  /// In en, this message translates to:
  /// **'Port and IP rules will be unavailable after unbinding. Continue?'**
  String get firewall_unbindBasicChainContent;

  /// Firewall operation success toast.
  ///
  /// In en, this message translates to:
  /// **'Operation succeeded'**
  String get firewall_operationSucceeded;

  /// Firewall operation failure toast.
  ///
  /// In en, this message translates to:
  /// **'Operation failed'**
  String get firewall_operationFailed;

  /// Firewall rule form section title.
  ///
  /// In en, this message translates to:
  /// **'Rule Info'**
  String get firewall_ruleInfo;

  /// Firewall port field label.
  ///
  /// In en, this message translates to:
  /// **'Port'**
  String get firewall_port;

  /// Firewall port input placeholder.
  ///
  /// In en, this message translates to:
  /// **'80, 8080-8090, or 80,443'**
  String get firewall_portPlaceholder;

  /// Firewall protocol field label.
  ///
  /// In en, this message translates to:
  /// **'Protocol'**
  String get firewall_protocol;

  /// Firewall strategy field label.
  ///
  /// In en, this message translates to:
  /// **'Strategy'**
  String get firewall_strategy;

  /// Firewall edit port rule hint.
  ///
  /// In en, this message translates to:
  /// **'Editing a rule does not change the port.'**
  String get firewall_editPortHint;

  /// Firewall create port rule hint.
  ///
  /// In en, this message translates to:
  /// **'Supports a single port, port range, or comma-separated port list.'**
  String get firewall_createPortHint;

  /// Firewall source section title.
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get firewall_source;

  /// Firewall source range field label.
  ///
  /// In en, this message translates to:
  /// **'Range'**
  String get firewall_range;

  /// Firewall address field label.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get firewall_address;

  /// Firewall source address placeholder.
  ///
  /// In en, this message translates to:
  /// **'Separate multiple addresses with commas. CIDR is supported.'**
  String get firewall_addressPlaceholder;

  /// Firewall optional description section title.
  ///
  /// In en, this message translates to:
  /// **'Description (Optional)'**
  String get firewall_descriptionOptional;

  /// Firewall description placeholder.
  ///
  /// In en, this message translates to:
  /// **'Optional note'**
  String get firewall_descriptionPlaceholder;

  /// Firewall accept strategy picker label.
  ///
  /// In en, this message translates to:
  /// **'Accept (Allow)'**
  String get firewall_acceptLabel;

  /// Firewall drop strategy picker label.
  ///
  /// In en, this message translates to:
  /// **'Drop (Deny)'**
  String get firewall_dropLabel;

  /// Firewall all addresses option label.
  ///
  /// In en, this message translates to:
  /// **'All Addresses'**
  String get firewall_allAddresses;

  /// Firewall specific address option label.
  ///
  /// In en, this message translates to:
  /// **'Specific Address'**
  String get firewall_specificAddress;

  /// Firewall port required validation.
  ///
  /// In en, this message translates to:
  /// **'Enter a port'**
  String get firewall_portRequired;

  /// Firewall source address required validation.
  ///
  /// In en, this message translates to:
  /// **'Enter a source address'**
  String get firewall_sourceAddressRequired;

  /// Firewall rule updated toast.
  ///
  /// In en, this message translates to:
  /// **'Rule updated'**
  String get firewall_ruleUpdated;

  /// Firewall rule added toast.
  ///
  /// In en, this message translates to:
  /// **'Rule added'**
  String get firewall_ruleAdded;

  /// Firewall port validation error.
  ///
  /// In en, this message translates to:
  /// **'Port lists and ranges cannot be mixed'**
  String get firewall_portListRangeMixed;

  /// Firewall port validation error.
  ///
  /// In en, this message translates to:
  /// **'Invalid port format'**
  String get firewall_portInvalidFormat;

  /// Firewall port range validation error.
  ///
  /// In en, this message translates to:
  /// **'Invalid port range format'**
  String get firewall_portRangeInvalidFormat;

  /// Firewall port range validation error.
  ///
  /// In en, this message translates to:
  /// **'Port range must be within 1-65535 and start cannot be greater than end'**
  String get firewall_portRangeInvalid;

  /// Firewall port validation error.
  ///
  /// In en, this message translates to:
  /// **'Port must be within 1-65535'**
  String get firewall_portInvalidRange;

  /// Firewall address validation error.
  ///
  /// In en, this message translates to:
  /// **'Invalid address format'**
  String get firewall_addressInvalidFormat;

  /// Firewall address validation error with value.
  ///
  /// In en, this message translates to:
  /// **'Invalid address format: {address}'**
  String firewall_addressInvalidValue(String address);

  /// Firewall IP rule address field label.
  ///
  /// In en, this message translates to:
  /// **'IP Address'**
  String get firewall_ipAddress;

  /// Firewall IP rule address placeholder.
  ///
  /// In en, this message translates to:
  /// **'192.168.1.100 or 10.0.0.0/8'**
  String get firewall_ipAddressPlaceholder;

  /// Firewall edit IP rule hint.
  ///
  /// In en, this message translates to:
  /// **'Editing a rule does not change the IP address.'**
  String get firewall_editIpHint;

  /// Firewall create IP rule hint.
  ///
  /// In en, this message translates to:
  /// **'Supports a single IP or CIDR range.'**
  String get firewall_createIpHint;

  /// Firewall IP rule validation error.
  ///
  /// In en, this message translates to:
  /// **'Enter an IP address'**
  String get firewall_ipRequired;

  /// Firewall multi-select selected count.
  ///
  /// In en, this message translates to:
  /// **'{count} rules selected'**
  String firewall_selectedRules(int count);

  /// Firewall multi-select sheet header subtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose an action below'**
  String get firewall_chooseAction;

  /// Firewall multi-select floating bar subtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap to open action menu'**
  String get firewall_expandActionMenu;

  /// Firewall select all action.
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get firewall_selectAll;

  /// Firewall clear selection action.
  ///
  /// In en, this message translates to:
  /// **'Clear All'**
  String get firewall_clearSelectAll;

  /// Firewall exporting state.
  ///
  /// In en, this message translates to:
  /// **'Exporting'**
  String get firewall_exporting;

  /// Firewall export action.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get firewall_export;

  /// Firewall import port rules sheet title.
  ///
  /// In en, this message translates to:
  /// **'Import Port Rules'**
  String get firewall_importPortRules;

  /// Firewall import selected count action.
  ///
  /// In en, this message translates to:
  /// **'Import {count}'**
  String firewall_importCount(int count);

  /// Firewall import success toast title.
  ///
  /// In en, this message translates to:
  /// **'Import succeeded'**
  String get firewall_importSucceeded;

  /// Firewall import success description.
  ///
  /// In en, this message translates to:
  /// **'{count} rules imported'**
  String firewall_importedCount(int count);

  /// Firewall partial import toast title.
  ///
  /// In en, this message translates to:
  /// **'Import partially succeeded'**
  String get firewall_importPartiallySucceeded;

  /// Firewall partial import toast description.
  ///
  /// In en, this message translates to:
  /// **'Succeeded {success}, failed {failed}'**
  String firewall_importPartialDescription(int success, int failed);

  /// Firewall import status: new rule.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get firewall_importStatusNew;

  /// Firewall import status: conflict.
  ///
  /// In en, this message translates to:
  /// **'Conflict'**
  String get firewall_importStatusConflict;

  /// Firewall import status: duplicate.
  ///
  /// In en, this message translates to:
  /// **'Duplicate'**
  String get firewall_importStatusDuplicate;

  /// Firewall import status: invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid'**
  String get firewall_importStatusInvalid;

  /// Firewall import candidate port title.
  ///
  /// In en, this message translates to:
  /// **'Port {port} ({protocol})'**
  String firewall_importPortTitle(String port, String protocol);

  /// Firewall import conflict subtitle.
  ///
  /// In en, this message translates to:
  /// **'Existing strategy {existing}, import strategy {incoming}'**
  String firewall_importConflictSubtitle(String existing, String incoming);

  /// Firewall import invalid item subtitle.
  ///
  /// In en, this message translates to:
  /// **'This item will not be imported'**
  String get firewall_importInvalidSubtitle;

  /// Firewall import candidate subtitle.
  ///
  /// In en, this message translates to:
  /// **'{address} · {strategy}'**
  String firewall_importCandidateSubtitle(String address, String strategy);

  /// Firewall rule action sheet management section title.
  ///
  /// In en, this message translates to:
  /// **'Rule Management'**
  String get firewall_ruleManagement;

  /// Firewall edit rule action.
  ///
  /// In en, this message translates to:
  /// **'Edit Rule'**
  String get firewall_editRule;

  /// Firewall edit port rule action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Modify protocol, strategy, source, and description'**
  String get firewall_editPortRuleDescription;

  /// Firewall edit IP rule action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Modify strategy and description'**
  String get firewall_editIpRuleDescription;

  /// Firewall change strategy to drop action.
  ///
  /// In en, this message translates to:
  /// **'Change to Drop'**
  String get firewall_changeToDrop;

  /// Firewall change strategy to accept action.
  ///
  /// In en, this message translates to:
  /// **'Change to Accept'**
  String get firewall_changeToAccept;

  /// Firewall deny port action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Deny access to this port'**
  String get firewall_denyThisPort;

  /// Firewall allow port action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Allow access to this port'**
  String get firewall_allowThisPort;

  /// Firewall deny IP action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Deny access from this address'**
  String get firewall_denyThisAddress;

  /// Firewall allow IP action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Allow access from this address'**
  String get firewall_allowThisAddress;

  /// Firewall occupied process action title.
  ///
  /// In en, this message translates to:
  /// **'Occupied Process'**
  String get firewall_occupiedProcess;

  /// Firewall occupied process action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View listening process details'**
  String get firewall_processDetails;

  /// Firewall delete rule action.
  ///
  /// In en, this message translates to:
  /// **'Delete Rule'**
  String get firewall_deleteRule;

  /// Firewall delete rule action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Remove this rule from the firewall'**
  String get firewall_removeThisRule;

  /// Firewall card protocol meta label.
  ///
  /// In en, this message translates to:
  /// **'Protocol'**
  String get firewall_protocolLabel;

  /// Firewall card source meta label.
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get firewall_sourceLabel;

  /// Firewall card occupied meta label.
  ///
  /// In en, this message translates to:
  /// **'Occupied'**
  String get firewall_occupiedLabel;

  /// Firewall card description meta label.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get firewall_descriptionLabel;

  /// Firewall port occupied fallback label.
  ///
  /// In en, this message translates to:
  /// **'Occupied'**
  String get firewall_occupied;

  /// Firewall port rules blocked state title.
  ///
  /// In en, this message translates to:
  /// **'Firewall not detected'**
  String get firewall_notDetected;

  /// Firewall blocked state title.
  ///
  /// In en, this message translates to:
  /// **'Firewall not initialized'**
  String get firewall_notInitialized;

  /// Firewall blocked state title.
  ///
  /// In en, this message translates to:
  /// **'Firewall not started'**
  String get firewall_notStarted;

  /// Firewall blocked state title.
  ///
  /// In en, this message translates to:
  /// **'iptables base chain is not bound'**
  String get firewall_basicChainUnbound;

  /// Firewall blocked state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Port rule operations require the firewall to be running.'**
  String get firewall_portRulesNeedActive;

  /// Firewall blocked state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Current iptables is not bound to 1PANEL_BASIC, so port rules are unavailable.'**
  String get firewall_iptablesUnboundSubtitle;

  /// Firewall blocked state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Initialize the firewall in 1Panel first.'**
  String get firewall_initializeFirst;

  /// Firewall port rules empty title.
  ///
  /// In en, this message translates to:
  /// **'No Port Rules'**
  String get firewall_noPortRules;

  /// Firewall port rules empty subtitle.
  ///
  /// In en, this message translates to:
  /// **'Create a rule or import existing rule JSON.'**
  String get firewall_noPortRulesSubtitle;

  /// Firewall IP rules empty title.
  ///
  /// In en, this message translates to:
  /// **'No IP Rules'**
  String get firewall_noIpRules;

  /// Firewall IP rules empty subtitle.
  ///
  /// In en, this message translates to:
  /// **'Create IP rules from the top-right menu.'**
  String get firewall_noIpRulesSubtitle;

  /// Firewall generic enable action label.
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get firewall_enableAction;

  /// Firewall generic disable action label.
  ///
  /// In en, this message translates to:
  /// **'Disable'**
  String get firewall_disableAction;

  /// Firewall create rule action.
  ///
  /// In en, this message translates to:
  /// **'Create Rule'**
  String get firewall_createRule;

  /// Firewall switch strategy confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Switch Strategy'**
  String get firewall_switchStrategyTitle;

  /// Firewall switch port strategy confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Change port {port} strategy to {strategy}?'**
  String firewall_switchPortStrategyContent(String port, String strategy);

  /// Firewall switch IP strategy confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Change {address} strategy to {strategy}?'**
  String firewall_switchIpStrategyContent(String address, String strategy);

  /// Firewall switch action label.
  ///
  /// In en, this message translates to:
  /// **'Switch'**
  String get firewall_switchAction;

  /// Firewall strategy update success toast.
  ///
  /// In en, this message translates to:
  /// **'Strategy updated'**
  String get firewall_strategyUpdated;

  /// Firewall strategy update failure toast.
  ///
  /// In en, this message translates to:
  /// **'Strategy update failed'**
  String get firewall_strategyUpdateFailed;

  /// Firewall delete port rule confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Delete Port Rule'**
  String get firewall_deletePortRule;

  /// Firewall delete port rule confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Delete port {port} ({protocol})?'**
  String firewall_deletePortRuleContent(String port, String protocol);

  /// Firewall delete IP rule confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Delete IP Rule'**
  String get firewall_deleteIpRule;

  /// Firewall delete IP rule confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Delete {address}?'**
  String firewall_deleteIpRuleContent(String address);

  /// Firewall rule deleted toast.
  ///
  /// In en, this message translates to:
  /// **'Rule deleted'**
  String get firewall_ruleDeleted;

  /// Firewall delete failure toast.
  ///
  /// In en, this message translates to:
  /// **'Delete failed'**
  String get firewall_deleteFailed;

  /// Firewall batch delete confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Batch Delete'**
  String get firewall_batchDeleteTitle;

  /// Firewall batch delete confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Delete the selected {count} port rules? The batch API will do its best and the list will refresh after completion.'**
  String firewall_batchDeleteContent(int count);

  /// Firewall batch delete success toast.
  ///
  /// In en, this message translates to:
  /// **'Batch delete submitted'**
  String get firewall_batchDeleteSubmitted;

  /// Firewall batch delete failure toast.
  ///
  /// In en, this message translates to:
  /// **'Batch delete failed'**
  String get firewall_batchDeleteFailed;

  /// Firewall export warning when no rules are selected.
  ///
  /// In en, this message translates to:
  /// **'Select rules to export first'**
  String get firewall_selectRulesToExport;

  /// Firewall export failure toast.
  ///
  /// In en, this message translates to:
  /// **'Export failed'**
  String get firewall_exportFailed;

  /// Firewall import failure toast.
  ///
  /// In en, this message translates to:
  /// **'Import failed'**
  String get firewall_importFailed;

  /// Firewall import validation error.
  ///
  /// In en, this message translates to:
  /// **'JSON root must be an array.'**
  String get firewall_jsonRootMustBeArray;

  /// Firewall import validation error.
  ///
  /// In en, this message translates to:
  /// **'Import item is not an object'**
  String get firewall_importItemNotObject;

  /// Firewall import validation error.
  ///
  /// In en, this message translates to:
  /// **'Missing port/protocol/strategy'**
  String get firewall_missingPortProtocolStrategy;

  /// Firewall import validation error.
  ///
  /// In en, this message translates to:
  /// **'Unsupported protocol: {protocol}'**
  String firewall_unsupportedProtocol(String protocol);

  /// Firewall import validation error.
  ///
  /// In en, this message translates to:
  /// **'Unsupported strategy: {strategy}'**
  String firewall_unsupportedStrategy(String strategy);

  /// Firewall port rule action sheet title.
  ///
  /// In en, this message translates to:
  /// **'Port {port}'**
  String firewall_portTitle(String port);

  /// Settings section title for general options.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get settings_general_title;

  /// Settings section title for security options.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get settings_security_title;

  /// Settings row and page title for app lock.
  ///
  /// In en, this message translates to:
  /// **'Launch Protection'**
  String get settings_appLock_title;

  /// Settings row subtitle when app lock is enabled.
  ///
  /// In en, this message translates to:
  /// **'Password or biometrics required'**
  String get settings_appLock_subtitleOn;

  /// Settings row subtitle when app lock is disabled.
  ///
  /// In en, this message translates to:
  /// **'Require PIN or biometrics when opening the app'**
  String get settings_appLock_subtitleOff;

  /// Navigation title for the app lock settings page.
  ///
  /// In en, this message translates to:
  /// **'Launch Protection'**
  String get settings_appLock_pageTitle;

  /// Description for enabling app lock.
  ///
  /// In en, this message translates to:
  /// **'Require a password or biometric verification before opening Mono Dash.'**
  String get settings_appLock_description;

  /// Password field label for app lock.
  ///
  /// In en, this message translates to:
  /// **'PIN'**
  String get settings_appLock_passwordLabel;

  /// Settings row title for enabling the app lock PIN.
  ///
  /// In en, this message translates to:
  /// **'PIN'**
  String get settings_appLock_passwordSwitchTitle;

  /// Confirm password field label for app lock.
  ///
  /// In en, this message translates to:
  /// **'Confirm PIN'**
  String get settings_appLock_confirmPasswordLabel;

  /// Current password field label for app lock.
  ///
  /// In en, this message translates to:
  /// **'Current PIN'**
  String get settings_appLock_currentPasswordLabel;

  /// New password field label for app lock.
  ///
  /// In en, this message translates to:
  /// **'New PIN'**
  String get settings_appLock_newPasswordLabel;

  /// Validation error for empty app lock password.
  ///
  /// In en, this message translates to:
  /// **'Enter your PIN'**
  String get settings_appLock_passwordRequired;

  /// Validation error for short app lock password.
  ///
  /// In en, this message translates to:
  /// **'Use a 6-digit PIN'**
  String get settings_appLock_passwordTooShort;

  /// Validation error when app lock PIN contains non-digits.
  ///
  /// In en, this message translates to:
  /// **'Use digits only'**
  String get settings_appLock_passwordDigitsOnly;

  /// Title for creating an app lock PIN.
  ///
  /// In en, this message translates to:
  /// **'Create a PIN'**
  String get settings_appLock_createPinTitle;

  /// Subtitle for creating an app lock PIN.
  ///
  /// In en, this message translates to:
  /// **'Enter 6 digits. This PIN is used when biometrics are unavailable.'**
  String get settings_appLock_createPinSubtitle;

  /// Title for confirming an app lock PIN.
  ///
  /// In en, this message translates to:
  /// **'Confirm your PIN'**
  String get settings_appLock_confirmPinTitle;

  /// Subtitle for confirming an app lock PIN.
  ///
  /// In en, this message translates to:
  /// **'Enter the PIN again to enable launch protection.'**
  String get settings_appLock_confirmPinSubtitle;

  /// Title for entering the current app lock PIN.
  ///
  /// In en, this message translates to:
  /// **'Enter current PIN'**
  String get settings_appLock_currentPinTitle;

  /// Subtitle for entering the current app lock PIN.
  ///
  /// In en, this message translates to:
  /// **'Verify the existing PIN before changing it.'**
  String get settings_appLock_currentPinSubtitle;

  /// Title for entering a new app lock PIN.
  ///
  /// In en, this message translates to:
  /// **'Enter new PIN'**
  String get settings_appLock_newPinTitle;

  /// Subtitle for entering a new app lock PIN.
  ///
  /// In en, this message translates to:
  /// **'Choose 6 digits.'**
  String get settings_appLock_newPinSubtitle;

  /// Validation error when app lock passwords differ.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get settings_appLock_passwordMismatch;

  /// Validation error for an incorrect app lock password.
  ///
  /// In en, this message translates to:
  /// **'Incorrect password'**
  String get settings_appLock_wrongPassword;

  /// Button label to enable app lock.
  ///
  /// In en, this message translates to:
  /// **'Enable Launch Protection'**
  String get settings_appLock_enableAction;

  /// Dialog title for disabling app lock.
  ///
  /// In en, this message translates to:
  /// **'Turn off launch protection?'**
  String get settings_appLock_disableTitle;

  /// Dialog content for disabling app lock.
  ///
  /// In en, this message translates to:
  /// **'Mono Dash will open without password or biometric verification.'**
  String get settings_appLock_disableContent;

  /// Destructive action label for disabling app lock.
  ///
  /// In en, this message translates to:
  /// **'Turn Off'**
  String get settings_appLock_disableAction;

  /// Title for verifying PIN before disabling app lock.
  ///
  /// In en, this message translates to:
  /// **'Enter PIN'**
  String get settings_appLock_disableVerifyTitle;

  /// Subtitle for verifying PIN before disabling app lock.
  ///
  /// In en, this message translates to:
  /// **'Verify your PIN to turn off launch protection.'**
  String get settings_appLock_disableVerifySubtitle;

  /// Toast shown after enabling app lock.
  ///
  /// In en, this message translates to:
  /// **'Launch protection enabled'**
  String get settings_appLock_enabledToast;

  /// Toast shown after disabling app lock.
  ///
  /// In en, this message translates to:
  /// **'Launch protection disabled'**
  String get settings_appLock_disabledToast;

  /// Toast shown after changing app lock password.
  ///
  /// In en, this message translates to:
  /// **'Password updated'**
  String get settings_appLock_passwordUpdatedToast;

  /// Settings row title for biometric app unlock.
  ///
  /// In en, this message translates to:
  /// **'Biometric Unlock'**
  String get settings_appLock_biometricTitle;

  /// Settings section title for biometric unlock options.
  ///
  /// In en, this message translates to:
  /// **'Biometrics'**
  String get settings_appLock_biometricSectionTitle;

  /// Settings row subtitle for biometric app unlock.
  ///
  /// In en, this message translates to:
  /// **'Use Face ID, Touch ID, or fingerprint'**
  String get settings_appLock_biometricSubtitle;

  /// Settings row subtitle when biometrics are unavailable.
  ///
  /// In en, this message translates to:
  /// **'No enrolled biometrics on this device'**
  String get settings_appLock_biometricUnavailable;

  /// Subtitle shown when biometric unlock requires PIN to be enabled first.
  ///
  /// In en, this message translates to:
  /// **'Turn on PIN first'**
  String get settings_appLock_biometricRequiresPassword;

  /// Biometric row title for Face ID.
  ///
  /// In en, this message translates to:
  /// **'Face ID'**
  String get settings_appLock_faceIdTitle;

  /// Biometric row title for fingerprint unlock.
  ///
  /// In en, this message translates to:
  /// **'Fingerprint'**
  String get settings_appLock_fingerprintTitle;

  /// Settings row title for changing app lock password.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get settings_appLock_changePassword;

  /// Settings row subtitle for changing app lock password.
  ///
  /// In en, this message translates to:
  /// **'Update the password used to unlock the app'**
  String get settings_appLock_changePasswordSubtitle;

  /// Reason shown in the system biometric prompt.
  ///
  /// In en, this message translates to:
  /// **'Unlock Mono Dash'**
  String get settings_appLock_authReason;

  /// Title on the app lock screen.
  ///
  /// In en, this message translates to:
  /// **'Mono Dash is locked'**
  String get settings_appLock_unlockTitle;

  /// Subtitle on the app lock screen.
  ///
  /// In en, this message translates to:
  /// **'Enter your PIN or use biometrics to continue.'**
  String get settings_appLock_unlockSubtitle;

  /// Button label to unlock the app.
  ///
  /// In en, this message translates to:
  /// **'Unlock'**
  String get settings_appLock_unlockAction;

  /// Button label to trigger biometric unlock.
  ///
  /// In en, this message translates to:
  /// **'Use Biometrics'**
  String get settings_appLock_useBiometric;

  /// Toast shown when biometric unlock fails.
  ///
  /// In en, this message translates to:
  /// **'Unable to verify biometrics'**
  String get settings_appLock_unlockFailed;

  /// Footnote explaining app lock interaction with widgets.
  ///
  /// In en, this message translates to:
  /// **'Home screen widgets refresh independently. Launch protection only protects the main app and does not block widget timeline refreshes.'**
  String get settings_appLock_widgetNote;

  /// Settings section title for playful launch protection options.
  ///
  /// In en, this message translates to:
  /// **'Mischief'**
  String get settings_appLock_mischiefSectionTitle;

  /// Settings row title for fake red/green PIN input feedback.
  ///
  /// In en, this message translates to:
  /// **'Terrible PIN Feedback'**
  String get settings_appLock_misleadingPinFeedbackTitle;

  /// Settings row subtitle explaining fake PIN feedback does not validate each digit.
  ///
  /// In en, this message translates to:
  /// **'Random red and green hints while typing; the PIN is still checked only when you confirm.'**
  String get settings_appLock_misleadingPinFeedbackSubtitle;

  /// Bottom sheet title for setting an app lock PIN.
  ///
  /// In en, this message translates to:
  /// **'Set PIN'**
  String get settings_appLock_setPinSheetTitle;

  /// Bottom sheet title for changing an app lock PIN.
  ///
  /// In en, this message translates to:
  /// **'Change PIN'**
  String get settings_appLock_changePinSheetTitle;

  /// Title for choosing whether to enable biometric unlock after setting PIN.
  ///
  /// In en, this message translates to:
  /// **'Use {method}?'**
  String settings_appLock_enableBiometricSheetTitle(String method);

  /// Subtitle for choosing whether to enable biometric unlock after setting PIN.
  ///
  /// In en, this message translates to:
  /// **'You can unlock Mono Dash with {method} after entering your PIN once.'**
  String settings_appLock_enableBiometricSheetSubtitle(String method);

  /// Settings row and page title for cache management.
  ///
  /// In en, this message translates to:
  /// **'Cache Management'**
  String get settings_cache_title;

  /// Settings row subtitle for cache management.
  ///
  /// In en, this message translates to:
  /// **'Clear local temporary files'**
  String get settings_cache_subtitle;

  /// Settings section title for help and about entries.
  ///
  /// In en, this message translates to:
  /// **'Help & About'**
  String get settings_help_title;

  /// Help entry title for contacting support.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get settings_help_contactTitle;

  /// Settings row subtitle for contacting support.
  ///
  /// In en, this message translates to:
  /// **'GitHub Issues and Telegram group'**
  String get settings_help_contactSubtitle;

  /// Contact support sheet title for the support group section.
  ///
  /// In en, this message translates to:
  /// **'GitHub Issues'**
  String get settings_contact_supportTitle;

  /// Contact support sheet content explaining where to discuss issues and submit feedback.
  ///
  /// In en, this message translates to:
  /// **'If you run into usage issues, submit them on GitHub Issues so they can be tracked.'**
  String get settings_contact_supportContent;

  /// Contact support sheet title for feedback requirements.
  ///
  /// In en, this message translates to:
  /// **'Telegram Group'**
  String get settings_contact_feedbackTitle;

  /// Contact support sheet content asking users to include the 1Panel version.
  ///
  /// In en, this message translates to:
  /// **'You can also join the Telegram group to discuss usage questions and share feedback.'**
  String get settings_contact_feedbackContent;

  /// Button label for opening the GitHub issue tracker.
  ///
  /// In en, this message translates to:
  /// **'Submit GitHub Issue'**
  String get settings_contact_submitIssue;

  /// Button label for opening the support group.
  ///
  /// In en, this message translates to:
  /// **'Join Telegram Group'**
  String get settings_contact_joinSupport;

  /// Toast shown when opening the support group link fails.
  ///
  /// In en, this message translates to:
  /// **'Unable to open the link'**
  String get settings_contact_openFailed;

  /// Help entry title for API key location.
  ///
  /// In en, this message translates to:
  /// **'Where to Find API Key'**
  String get settings_help_apiKeyTitle;

  /// Help dialog content explaining where to find an API key.
  ///
  /// In en, this message translates to:
  /// **'In 1Panel, go to Settings > Panel Settings > API, enable API access, generate an API Key, and enter it in the add panel form.'**
  String get settings_help_apiKeyContent;

  /// Help entry title for privacy and purchase information.
  ///
  /// In en, this message translates to:
  /// **'Privacy & Purchases'**
  String get settings_help_privacyTitle;

  /// Help dialog content explaining privacy and purchases.
  ///
  /// In en, this message translates to:
  /// **'Panel connection information is stored on this device. API Keys use secure system storage. Purchases are processed by the App Store or Google Play, and RevenueCat is only used to sync purchase status.'**
  String get settings_help_privacyContent;

  /// Settings row title for the Mono Dash source repository.
  ///
  /// In en, this message translates to:
  /// **'Source Code'**
  String get settings_help_openSourceTitle;

  /// Settings row subtitle for the Mono Dash source repository.
  ///
  /// In en, this message translates to:
  /// **'View the Mono Dash GitHub repository'**
  String get settings_help_openSourceSubtitle;

  /// Open source project sheet card title.
  ///
  /// In en, this message translates to:
  /// **'Mono Dash is open source'**
  String get settings_openSource_projectTitle;

  /// Open source project sheet content.
  ///
  /// In en, this message translates to:
  /// **'Mono Dash source code is hosted on GitHub. You can inspect the code, submit issues, or help improve this third-party mobile management client for 1Panel.'**
  String get settings_openSource_projectContent;

  /// Button label for opening the Mono Dash source repository.
  ///
  /// In en, this message translates to:
  /// **'Open GitHub Repository'**
  String get settings_openSource_openRepository;

  /// Button label for copying the Mono Dash source repository URL.
  ///
  /// In en, this message translates to:
  /// **'Copy Repository Link'**
  String get settings_openSource_copyRepositoryUrl;

  /// Help entry title for open source licenses.
  ///
  /// In en, this message translates to:
  /// **'Open Source Licenses'**
  String get settings_help_licensesTitle;

  /// Settings row subtitle for open source licenses.
  ///
  /// In en, this message translates to:
  /// **'Third-party component licenses'**
  String get settings_help_licensesSubtitle;

  /// Section title for application information on the open source licenses page.
  ///
  /// In en, this message translates to:
  /// **'Application'**
  String get settings_licenses_appSection;

  /// Section title for package list on the open source licenses page.
  ///
  /// In en, this message translates to:
  /// **'Components'**
  String get settings_licenses_componentsSection;

  /// Section title for license text on the license detail page.
  ///
  /// In en, this message translates to:
  /// **'License Text'**
  String get settings_licenses_licenseSection;

  /// Application version subtitle on the open source licenses page.
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String settings_licenses_versionSubtitle(String version);

  /// Package count badge on the open source licenses page.
  ///
  /// In en, this message translates to:
  /// **'{count} packages'**
  String settings_licenses_packageCount(int count);

  /// License entry count for a package.
  ///
  /// In en, this message translates to:
  /// **'{count} license entries'**
  String settings_licenses_entryCount(int count);

  /// Loading text for the open source licenses page.
  ///
  /// In en, this message translates to:
  /// **'Loading licenses...'**
  String get settings_licenses_loading;

  /// Empty state title for the open source licenses page.
  ///
  /// In en, this message translates to:
  /// **'No licenses found'**
  String get settings_licenses_emptyTitle;

  /// Empty state subtitle for the open source licenses page.
  ///
  /// In en, this message translates to:
  /// **'No registered license data is available.'**
  String get settings_licenses_emptySubtitle;

  /// Help entry title for about dialog.
  ///
  /// In en, this message translates to:
  /// **'About Mono Dash'**
  String get settings_help_aboutTitle;

  /// About dialog content.
  ///
  /// In en, this message translates to:
  /// **'A third-party mobile management tool for 1Panel.'**
  String get settings_help_aboutContent;

  /// Dialog title confirming insecure connections.
  ///
  /// In en, this message translates to:
  /// **'Allow insecure connections?'**
  String get settings_insecure_confirmTitle;

  /// Dialog content confirming insecure connections.
  ///
  /// In en, this message translates to:
  /// **'After enabling this, API requests for this panel will accept self-signed and untrusted certificates. This reduces connection security and should only be enabled for servers you trust.'**
  String get settings_insecure_confirmContent;

  /// Action label to enable insecure connections.
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get settings_insecure_enable;

  /// Placeholder for request timeout input.
  ///
  /// In en, this message translates to:
  /// **'For example: 60'**
  String get settings_timeout_placeholder;

  /// Description for request timeout input.
  ///
  /// In en, this message translates to:
  /// **'Used for all panel API requests in the app. Range: 5-300 seconds.'**
  String get settings_timeout_description;

  /// Validation error for empty request timeout.
  ///
  /// In en, this message translates to:
  /// **'Enter a timeout'**
  String get settings_timeout_errorEmpty;

  /// Validation error for out-of-range request timeout.
  ///
  /// In en, this message translates to:
  /// **'Enter a value from 5 to 300 seconds'**
  String get settings_timeout_errorRange;

  /// Toast shown after updating request timeout.
  ///
  /// In en, this message translates to:
  /// **'Request timeout updated'**
  String get settings_timeout_updated;

  /// Placeholder for custom headers input.
  ///
  /// In en, this message translates to:
  /// **'X-Header-Name: value'**
  String get settings_headers_placeholder;

  /// Description for custom headers input.
  ///
  /// In en, this message translates to:
  /// **'One header per line in Key: Value format. Leave empty to clear custom headers.'**
  String get settings_headers_description;

  /// Toast shown after clearing custom headers.
  ///
  /// In en, this message translates to:
  /// **'Custom headers cleared'**
  String get settings_headers_cleared;

  /// Toast shown after updating custom headers.
  ///
  /// In en, this message translates to:
  /// **'Custom headers updated'**
  String get settings_headers_updated;

  /// Validation error for malformed custom header line.
  ///
  /// In en, this message translates to:
  /// **'Line {line} must use Key: Value format'**
  String settings_headers_errorFormat(int line);

  /// Validation error for empty custom header name.
  ///
  /// In en, this message translates to:
  /// **'Line {line} header name cannot be empty'**
  String settings_headers_errorEmptyKey(int line);

  /// Validation error for empty custom header value.
  ///
  /// In en, this message translates to:
  /// **'Line {line} header value cannot be empty'**
  String settings_headers_errorEmptyValue(int line);

  /// Validation error for invalid custom header name.
  ///
  /// In en, this message translates to:
  /// **'Line {line} header name cannot contain spaces or colons'**
  String settings_headers_errorInvalidKey(int line);

  /// Cache sheet section title.
  ///
  /// In en, this message translates to:
  /// **'Local Cache'**
  String get settings_cache_sectionTitle;

  /// Cache sheet footer when there is no error.
  ///
  /// In en, this message translates to:
  /// **'Only system temporary directories and app cache directories are cleared. Saved panel information is not affected.'**
  String get settings_cache_footer;

  /// Cache sheet footer when reading cache size fails.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String settings_cache_errorFooter(String error);

  /// Cache size row title.
  ///
  /// In en, this message translates to:
  /// **'Cache Size'**
  String get settings_cache_sizeTitle;

  /// Clear cache row title and dialog title.
  ///
  /// In en, this message translates to:
  /// **'Clear Cache'**
  String get settings_cache_clearTitle;

  /// Cache size loading state.
  ///
  /// In en, this message translates to:
  /// **'Calculating...'**
  String get settings_cache_calculating;

  /// Cache size error state.
  ///
  /// In en, this message translates to:
  /// **'Read failed'**
  String get settings_cache_readFailed;

  /// Dialog content confirming cache clearing.
  ///
  /// In en, this message translates to:
  /// **'Will delete: local temporary cache files.\n\nWill not delete: panel configuration, API Keys, downloaded files, or purchase status.'**
  String get settings_cache_confirmContent;

  /// Action label to clear cache.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get settings_cache_clearAction;

  /// Toast shown after clearing cache.
  ///
  /// In en, this message translates to:
  /// **'Cache cleared'**
  String get settings_cache_cleared;

  /// Toast title shown when clearing cache fails.
  ///
  /// In en, this message translates to:
  /// **'Clear failed'**
  String get settings_cache_clearFailed;

  /// App icon settings section title.
  ///
  /// In en, this message translates to:
  /// **'Choose Icon'**
  String get settings_appIcon_selectTitle;

  /// Default app icon label.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get settings_appIcon_default;

  /// Dark app icon label.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settings_appIcon_dark;

  /// Adaptive app icon label.
  ///
  /// In en, this message translates to:
  /// **'Adaptive'**
  String get settings_appIcon_adaptive;

  /// Hint below app icon options.
  ///
  /// In en, this message translates to:
  /// **'Tip: icon changes may take a moment on some system versions.'**
  String get settings_appIcon_hint;

  /// Error message when alternate app icons are unsupported.
  ///
  /// In en, this message translates to:
  /// **'This platform does not support changing the app icon'**
  String get settings_appIcon_unsupported;

  /// Dialog title shown when changing app icon fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to Change Icon'**
  String get settings_appIcon_failedTitle;

  /// Card style settings section title.
  ///
  /// In en, this message translates to:
  /// **'Choose Style'**
  String get settings_cardStyle_selectTitle;

  /// Terminal server card style label.
  ///
  /// In en, this message translates to:
  /// **'Terminal'**
  String get settings_cardStyle_terminal;

  /// Simple server card style label.
  ///
  /// In en, this message translates to:
  /// **'Simple'**
  String get settings_cardStyle_simple;

  /// Panel settings menu page title.
  ///
  /// In en, this message translates to:
  /// **'Panel Settings'**
  String get panelSettings_title;

  /// Panel settings menu entry and page title.
  ///
  /// In en, this message translates to:
  /// **'Panel'**
  String get panelSettings_panel;

  /// Panel security settings menu entry and page title.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get panelSettings_security;

  /// Panel alert notifications menu entry and page title.
  ///
  /// In en, this message translates to:
  /// **'Alert Notifications'**
  String get panelSettings_alerts;

  /// Panel backup accounts menu entry and page title.
  ///
  /// In en, this message translates to:
  /// **'Backup Accounts'**
  String get panelSettings_backupAccounts;

  /// Panel snapshots menu entry and page title.
  ///
  /// In en, this message translates to:
  /// **'Snapshots'**
  String get panelSettings_snapshots;

  /// Panel about menu entry and page title.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get panelSettings_about;

  /// Panel basic information section title.
  ///
  /// In en, this message translates to:
  /// **'Basic Info'**
  String get panelSettings_basicInfo;

  /// Panel default access address setting title.
  ///
  /// In en, this message translates to:
  /// **'Default Access Address'**
  String get panelSettings_defaultAccessAddress;

  /// Panel settings empty value label.
  ///
  /// In en, this message translates to:
  /// **'Not Set'**
  String get panelSettings_notSet;

  /// Placeholder for panel default access address.
  ///
  /// In en, this message translates to:
  /// **'Enter the default access address'**
  String get panelSettings_defaultAccessAddressPlaceholder;

  /// Panel username setting title.
  ///
  /// In en, this message translates to:
  /// **'Panel Username'**
  String get panelSettings_panelUsername;

  /// Edit sheet title for changing the panel username.
  ///
  /// In en, this message translates to:
  /// **'Change Panel Username'**
  String get panelSettings_changePanelUsername;

  /// Placeholder for a new panel username.
  ///
  /// In en, this message translates to:
  /// **'Enter a new panel username'**
  String get panelSettings_newPanelUsernamePlaceholder;

  /// Panel login password setting title.
  ///
  /// In en, this message translates to:
  /// **'Panel Login Password'**
  String get panelSettings_panelLoginPassword;

  /// Panel login password setting subtitle.
  ///
  /// In en, this message translates to:
  /// **'Change the panel login password'**
  String get panelSettings_changePanelLoginPassword;

  /// Toast shown after the panel password is updated.
  ///
  /// In en, this message translates to:
  /// **'Password updated'**
  String get panelSettings_passwordUpdated;

  /// Toast shown when updating the panel password fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to update password'**
  String get panelSettings_passwordUpdateFailed;

  /// Section title for display settings that only affect the 1Panel web UI.
  ///
  /// In en, this message translates to:
  /// **'Display Settings (Web UI Only)'**
  String get panelSettings_displaySettingsWebOnly;

  /// Panel web UI theme setting title.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get panelSettings_theme;

  /// Light theme option.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get panelSettings_themeLight;

  /// Dark theme option.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get panelSettings_themeDark;

  /// Panel web UI language setting title.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get panelSettings_language;

  /// Chinese language option for the panel web UI.
  ///
  /// In en, this message translates to:
  /// **'Chinese'**
  String get panelSettings_languageZh;

  /// Traditional Chinese language option for the panel web UI.
  ///
  /// In en, this message translates to:
  /// **'Traditional Chinese'**
  String get panelSettings_languageZhHant;

  /// Japanese language option for the panel web UI.
  ///
  /// In en, this message translates to:
  /// **'Japanese'**
  String get panelSettings_languageJa;

  /// Malay language option for the panel web UI.
  ///
  /// In en, this message translates to:
  /// **'Malay'**
  String get panelSettings_languageMs;

  /// Portuguese Brazil language option for the panel web UI.
  ///
  /// In en, this message translates to:
  /// **'Portuguese (Brazil)'**
  String get panelSettings_languagePtBr;

  /// Panel tab navigation setting title.
  ///
  /// In en, this message translates to:
  /// **'Tab Navigation'**
  String get panelSettings_tabNavigation;

  /// Panel tab navigation setting subtitle.
  ///
  /// In en, this message translates to:
  /// **'Show page tabs in the top bar'**
  String get panelSettings_tabNavigationSubtitle;

  /// Panel security settings section title.
  ///
  /// In en, this message translates to:
  /// **'Security Settings'**
  String get panelSettings_securitySettings;

  /// Panel session timeout setting title.
  ///
  /// In en, this message translates to:
  /// **'Session Timeout'**
  String get panelSettings_sessionTimeout;

  /// Panel session timeout disabled label.
  ///
  /// In en, this message translates to:
  /// **'Never timeout'**
  String get panelSettings_neverTimeout;

  /// Duration in seconds.
  ///
  /// In en, this message translates to:
  /// **'{seconds} s'**
  String panelSettings_secondsValue(String seconds);

  /// Placeholder for panel session timeout.
  ///
  /// In en, this message translates to:
  /// **'0 = never timeout'**
  String get panelSettings_sessionTimeoutPlaceholder;

  /// Description for the panel session timeout field.
  ///
  /// In en, this message translates to:
  /// **'Set the panel login session timeout in seconds. Use 0 to never timeout.'**
  String get panelSettings_sessionTimeoutDescription;

  /// Panel preview program setting title.
  ///
  /// In en, this message translates to:
  /// **'Preview Program'**
  String get panelSettings_previewProgram;

  /// Panel preview program setting subtitle.
  ///
  /// In en, this message translates to:
  /// **'Get preview versions of 1Panel'**
  String get panelSettings_previewProgramSubtitle;

  /// Panel advanced settings section title.
  ///
  /// In en, this message translates to:
  /// **'Advanced Settings'**
  String get panelSettings_advancedSettings;

  /// Panel API interface setting title.
  ///
  /// In en, this message translates to:
  /// **'API Interface'**
  String get panelSettings_apiInterface;

  /// Enabled status label.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get panelSettings_enabled;

  /// Disabled status label.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get panelSettings_disabled;

  /// Toast shown after panel settings are updated.
  ///
  /// In en, this message translates to:
  /// **'Settings updated'**
  String get panelSettings_settingUpdated;

  /// Toast shown when updating panel settings fails.
  ///
  /// In en, this message translates to:
  /// **'Update failed'**
  String get panelSettings_updateFailed;

  /// Toast shown when saving panel settings fails.
  ///
  /// In en, this message translates to:
  /// **'Save failed'**
  String get panelSettings_saveFailed;

  /// Panel security access control section title.
  ///
  /// In en, this message translates to:
  /// **'Access Control'**
  String get panelSettings_accessControl;

  /// Panel port setting title.
  ///
  /// In en, this message translates to:
  /// **'Panel Port'**
  String get panelSettings_panelPort;

  /// Placeholder for entering a panel port.
  ///
  /// In en, this message translates to:
  /// **'Enter a port number (1-65535)'**
  String get panelSettings_portPlaceholder;

  /// Panel bind address setting title.
  ///
  /// In en, this message translates to:
  /// **'Bind Address'**
  String get panelSettings_bindAddress;

  /// Panel security entrance setting title.
  ///
  /// In en, this message translates to:
  /// **'Security Entrance'**
  String get panelSettings_securityEntrance;

  /// Placeholder for the security entrance field.
  ///
  /// In en, this message translates to:
  /// **'5-116 letters or digits'**
  String get panelSettings_securityEntrancePlaceholder;

  /// Validation error for panel security entrance length.
  ///
  /// In en, this message translates to:
  /// **'Length must be 5-116 characters'**
  String get panelSettings_securityEntranceLengthError;

  /// Panel IP whitelist setting title.
  ///
  /// In en, this message translates to:
  /// **'IP Whitelist'**
  String get panelSettings_ipWhitelist;

  /// Panel unrestricted access label.
  ///
  /// In en, this message translates to:
  /// **'Unrestricted'**
  String get panelSettings_unrestricted;

  /// Placeholder for panel IP whitelist.
  ///
  /// In en, this message translates to:
  /// **'One IP or CIDR per line'**
  String get panelSettings_ipWhitelistPlaceholder;

  /// Panel bind domain setting title.
  ///
  /// In en, this message translates to:
  /// **'Bind Domain'**
  String get panelSettings_bindDomain;

  /// Dialog title for disabling panel SSL.
  ///
  /// In en, this message translates to:
  /// **'Disable SSL'**
  String get panelSettings_closeSsl;

  /// Panel SSL setting title.
  ///
  /// In en, this message translates to:
  /// **'Panel SSL'**
  String get panelSettings_panelSsl;

  /// Confirmation content for disabling panel SSL.
  ///
  /// In en, this message translates to:
  /// **'After disabling SSL, the panel will be accessed over HTTP. Continue?'**
  String get panelSettings_closeSslContent;

  /// Toast shown after panel SSL is disabled.
  ///
  /// In en, this message translates to:
  /// **'SSL disabled'**
  String get panelSettings_sslDisabled;

  /// Generic panel settings operation failure toast title.
  ///
  /// In en, this message translates to:
  /// **'Operation failed'**
  String get panelSettings_operationFailed;

  /// Panel security policy section title.
  ///
  /// In en, this message translates to:
  /// **'Security Policy'**
  String get panelSettings_securityPolicy;

  /// Panel password expiration setting title.
  ///
  /// In en, this message translates to:
  /// **'Password Expiration'**
  String get panelSettings_passwordExpiration;

  /// Password expiration disabled label.
  ///
  /// In en, this message translates to:
  /// **'Never expires'**
  String get panelSettings_neverExpires;

  /// Duration in days.
  ///
  /// In en, this message translates to:
  /// **'{days} days'**
  String panelSettings_daysValue(String days);

  /// Edit sheet title for password expiration days.
  ///
  /// In en, this message translates to:
  /// **'Password Expiration Days'**
  String get panelSettings_passwordExpirationDays;

  /// Placeholder for password expiration days.
  ///
  /// In en, this message translates to:
  /// **'0 = never expires'**
  String get panelSettings_passwordExpirationPlaceholder;

  /// Panel password complexity setting title.
  ///
  /// In en, this message translates to:
  /// **'Password Complexity Check'**
  String get panelSettings_passwordComplexity;

  /// Panel password complexity setting subtitle.
  ///
  /// In en, this message translates to:
  /// **'Require uppercase and lowercase letters, numbers, and special characters'**
  String get panelSettings_passwordComplexitySubtitle;

  /// MFA section title.
  ///
  /// In en, this message translates to:
  /// **'MFA'**
  String get panelSettings_mfa;

  /// MFA setting title.
  ///
  /// In en, this message translates to:
  /// **'MFA Two-Factor Authentication'**
  String get panelSettings_mfaTwoFactor;

  /// Dialog title for disabling MFA.
  ///
  /// In en, this message translates to:
  /// **'Disable MFA'**
  String get panelSettings_closeMfa;

  /// Confirmation content for disabling MFA.
  ///
  /// In en, this message translates to:
  /// **'Disabling two-factor authentication reduces account security. Continue?'**
  String get panelSettings_closeMfaContent;

  /// Other settings section title.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get panelSettings_other;

  /// Panel unauthenticated response code setting title.
  ///
  /// In en, this message translates to:
  /// **'Unauthenticated Response Code'**
  String get panelSettings_noAuthResponseCode;

  /// Alert rules tab title.
  ///
  /// In en, this message translates to:
  /// **'Alert Rules'**
  String get panelSettings_alertList;

  /// Alert logs tab title.
  ///
  /// In en, this message translates to:
  /// **'Alert Logs'**
  String get panelSettings_alertLogs;

  /// Empty state for alert rules.
  ///
  /// In en, this message translates to:
  /// **'No alert rules'**
  String get panelSettings_noAlertRules;

  /// Alert card metadata text.
  ///
  /// In en, this message translates to:
  /// **'Type: {type}  Method: {method}'**
  String panelSettings_alertCardMeta(String type, String method);

  /// Toast shown after deleting an item.
  ///
  /// In en, this message translates to:
  /// **'Deleted'**
  String get panelSettings_deleted;

  /// Toast shown when deleting an item fails.
  ///
  /// In en, this message translates to:
  /// **'Delete failed'**
  String get panelSettings_deleteFailed;

  /// Toast shown after clearing alert logs.
  ///
  /// In en, this message translates to:
  /// **'Logs cleared'**
  String get panelSettings_logsCleared;

  /// Toast shown when clearing alert logs fails.
  ///
  /// In en, this message translates to:
  /// **'Clear failed'**
  String get panelSettings_clearFailed;

  /// Button label for clearing alert logs.
  ///
  /// In en, this message translates to:
  /// **'Clear Logs'**
  String get panelSettings_clearLogs;

  /// Empty state for alert logs.
  ///
  /// In en, this message translates to:
  /// **'No logs'**
  String get panelSettings_noLogs;

  /// Alert notification methods section title.
  ///
  /// In en, this message translates to:
  /// **'Notification Methods'**
  String get panelSettings_notificationMethods;

  /// Email notification setting title.
  ///
  /// In en, this message translates to:
  /// **'Email Notification'**
  String get panelSettings_emailNotification;

  /// SMTP notification setting subtitle.
  ///
  /// In en, this message translates to:
  /// **'Configure SMTP email delivery'**
  String get panelSettings_smtpSubtitle;

  /// Webhook notification setting subtitle.
  ///
  /// In en, this message translates to:
  /// **'Configure Webhook'**
  String get panelSettings_webhookSubtitle;

  /// WeCom notification setting title.
  ///
  /// In en, this message translates to:
  /// **'WeCom'**
  String get panelSettings_weCom;

  /// DingTalk notification setting title.
  ///
  /// In en, this message translates to:
  /// **'DingTalk'**
  String get panelSettings_dingTalk;

  /// Feishu notification setting title.
  ///
  /// In en, this message translates to:
  /// **'Feishu'**
  String get panelSettings_feishu;

  /// Todo toast for email notification configuration.
  ///
  /// In en, this message translates to:
  /// **'Email configuration is coming soon'**
  String get panelSettings_emailTodo;

  /// Todo toast for WeCom notification configuration.
  ///
  /// In en, this message translates to:
  /// **'WeCom configuration is coming soon'**
  String get panelSettings_weComTodo;

  /// Todo toast for DingTalk notification configuration.
  ///
  /// In en, this message translates to:
  /// **'DingTalk configuration is coming soon'**
  String get panelSettings_dingTalkTodo;

  /// Todo toast for Feishu notification configuration.
  ///
  /// In en, this message translates to:
  /// **'Feishu configuration is coming soon'**
  String get panelSettings_feishuTodo;

  /// Todo toast for Bark notification configuration.
  ///
  /// In en, this message translates to:
  /// **'Bark configuration is coming soon'**
  String get panelSettings_barkTodo;

  /// Backup account empty state title.
  ///
  /// In en, this message translates to:
  /// **'No backup accounts'**
  String get panelSettings_noBackupAccounts;

  /// Action and sheet title for adding a backup account.
  ///
  /// In en, this message translates to:
  /// **'Add Backup Account'**
  String get panelSettings_addBackupAccount;

  /// Sheet title for editing a backup account.
  ///
  /// In en, this message translates to:
  /// **'Edit Backup Account'**
  String get panelSettings_editBackupAccount;

  /// Toast shown after refreshing a backup account token.
  ///
  /// In en, this message translates to:
  /// **'Token refreshed'**
  String get panelSettings_tokenRefreshed;

  /// Toast shown when refreshing a backup account token fails.
  ///
  /// In en, this message translates to:
  /// **'Refresh failed'**
  String get panelSettings_refreshFailed;

  /// Dialog title for deleting a backup account.
  ///
  /// In en, this message translates to:
  /// **'Delete Backup Account'**
  String get panelSettings_deleteBackupAccount;

  /// Confirmation content for deleting a backup account.
  ///
  /// In en, this message translates to:
  /// **'Delete backup account \"{name}\"?'**
  String panelSettings_deleteBackupAccountConfirm(String name);

  /// Destructive confirm button label.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get panelSettings_confirmDelete;

  /// Backup account authentication section title.
  ///
  /// In en, this message translates to:
  /// **'Authentication'**
  String get panelSettings_authInfo;

  /// Backup account storage settings section title.
  ///
  /// In en, this message translates to:
  /// **'Storage Settings'**
  String get panelSettings_storageSettings;

  /// Backup account name field label.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get panelSettings_name;

  /// Placeholder for backup account name.
  ///
  /// In en, this message translates to:
  /// **'Enter account name'**
  String get panelSettings_namePlaceholder;

  /// Backup account type field label.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get panelSettings_type;

  /// Address field label.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get panelSettings_address;

  /// Server address placeholder.
  ///
  /// In en, this message translates to:
  /// **'Server address'**
  String get panelSettings_serverAddress;

  /// Username field label.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get panelSettings_username;

  /// SSH username placeholder.
  ///
  /// In en, this message translates to:
  /// **'SSH username'**
  String get panelSettings_sshUsername;

  /// Password field label.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get panelSettings_password;

  /// SSH password placeholder.
  ///
  /// In en, this message translates to:
  /// **'SSH password'**
  String get panelSettings_sshPassword;

  /// Private key field label.
  ///
  /// In en, this message translates to:
  /// **'Private Key'**
  String get panelSettings_privateKey;

  /// Private key placeholder.
  ///
  /// In en, this message translates to:
  /// **'Paste SSH private key'**
  String get panelSettings_privateKeyPlaceholder;

  /// Private key passphrase field label.
  ///
  /// In en, this message translates to:
  /// **'Key Passphrase'**
  String get panelSettings_keyPassphrase;

  /// Private key passphrase placeholder.
  ///
  /// In en, this message translates to:
  /// **'Private key passphrase (optional)'**
  String get panelSettings_keyPassphrasePlaceholder;

  /// WebDAV address placeholder.
  ///
  /// In en, this message translates to:
  /// **'WebDAV server address'**
  String get panelSettings_webdavAddress;

  /// WebDAV username placeholder.
  ///
  /// In en, this message translates to:
  /// **'WebDAV username'**
  String get panelSettings_webdavUsername;

  /// WebDAV password placeholder.
  ///
  /// In en, this message translates to:
  /// **'WebDAV password'**
  String get panelSettings_webdavPassword;

  /// UPYUN operator field label.
  ///
  /// In en, this message translates to:
  /// **'Operator'**
  String get panelSettings_operator;

  /// UPYUN operator placeholder.
  ///
  /// In en, this message translates to:
  /// **'UPYUN operator name'**
  String get panelSettings_upyunOperatorName;

  /// UPYUN operator password placeholder.
  ///
  /// In en, this message translates to:
  /// **'Operator password'**
  String get panelSettings_operatorPassword;

  /// Domain field label.
  ///
  /// In en, this message translates to:
  /// **'Domain'**
  String get panelSettings_domain;

  /// Refresh token placeholder.
  ///
  /// In en, this message translates to:
  /// **'Refresh Token from authorization'**
  String get panelSettings_refreshTokenPlaceholder;

  /// Aliyun Drive refresh token placeholder.
  ///
  /// In en, this message translates to:
  /// **'Aliyun Drive Refresh Token'**
  String get panelSettings_aliyunRefreshToken;

  /// Aliyun Drive ID placeholder.
  ///
  /// In en, this message translates to:
  /// **'Drive ID (drive_id)'**
  String get panelSettings_driveIdPlaceholder;

  /// OneDrive China region switch label.
  ///
  /// In en, this message translates to:
  /// **'21Vianet (China)'**
  String get panelSettings_cnRegion;

  /// Endpoint placeholder requiring a URL scheme.
  ///
  /// In en, this message translates to:
  /// **'Endpoint address (include scheme)'**
  String get panelSettings_endpointWithScheme;

  /// SFTP authentication method label.
  ///
  /// In en, this message translates to:
  /// **'Authentication Method'**
  String get panelSettings_authMode;

  /// Password authentication option.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get panelSettings_authPassword;

  /// Key authentication option.
  ///
  /// In en, this message translates to:
  /// **'Key'**
  String get panelSettings_authKey;

  /// Backup path field label.
  ///
  /// In en, this message translates to:
  /// **'Backup Path'**
  String get panelSettings_backupPath;

  /// Remote backup directory placeholder.
  ///
  /// In en, this message translates to:
  /// **'Remote backup directory'**
  String get panelSettings_remoteBackupDirectory;

  /// Optional field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get panelSettings_optional;

  /// UPYUN service name field label.
  ///
  /// In en, this message translates to:
  /// **'Service Name'**
  String get panelSettings_serviceName;

  /// Bucket picker placeholder.
  ///
  /// In en, this message translates to:
  /// **'Select Bucket'**
  String get panelSettings_selectBucket;

  /// Button label for loading bucket list.
  ///
  /// In en, this message translates to:
  /// **'Load Bucket'**
  String get panelSettings_loadBucket;

  /// Button label for testing backup account connection.
  ///
  /// In en, this message translates to:
  /// **'Test Connection'**
  String get panelSettings_testConnection;

  /// Button label for saving panel settings.
  ///
  /// In en, this message translates to:
  /// **'Save Settings'**
  String get panelSettings_saveSettings;

  /// Toast shown after a backup account connection succeeds.
  ///
  /// In en, this message translates to:
  /// **'Connection succeeded'**
  String get panelSettings_connectionSucceeded;

  /// Toast shown after a backup account connection fails.
  ///
  /// In en, this message translates to:
  /// **'Connection failed'**
  String get panelSettings_connectionFailed;

  /// Toast shown when bucket list is empty.
  ///
  /// In en, this message translates to:
  /// **'No Bucket found'**
  String get panelSettings_bucketNotFound;

  /// Validation message for empty backup account name.
  ///
  /// In en, this message translates to:
  /// **'Enter an account name'**
  String get panelSettings_enterAccountName;

  /// Validation message for empty refresh token.
  ///
  /// In en, this message translates to:
  /// **'Enter Refresh Token'**
  String get panelSettings_enterRefreshToken;

  /// Validation message for empty authentication information.
  ///
  /// In en, this message translates to:
  /// **'Enter authentication information'**
  String get panelSettings_enterAuthInfo;

  /// Toast shown after adding an item.
  ///
  /// In en, this message translates to:
  /// **'Added'**
  String get panelSettings_added;

  /// Toast shown after updating an item.
  ///
  /// In en, this message translates to:
  /// **'Updated'**
  String get panelSettings_updated;

  /// Snapshot empty state title.
  ///
  /// In en, this message translates to:
  /// **'No snapshots'**
  String get panelSettings_noSnapshots;

  /// Create snapshot page and action title.
  ///
  /// In en, this message translates to:
  /// **'Create Snapshot'**
  String get panelSettings_createSnapshot;

  /// Import snapshot menu item title.
  ///
  /// In en, this message translates to:
  /// **'Import Snapshot'**
  String get panelSettings_importSnapshot;

  /// Snapshot version label.
  ///
  /// In en, this message translates to:
  /// **'Version: {version}'**
  String panelSettings_snapshotVersion(String version);

  /// Snapshot log button label.
  ///
  /// In en, this message translates to:
  /// **'Log'**
  String get panelSettings_log;

  /// Snapshot restore button label.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get panelSettings_restore;

  /// Task log sheet title for a snapshot.
  ///
  /// In en, this message translates to:
  /// **'Snapshot: {name}'**
  String panelSettings_snapshotLogTitle(String name);

  /// Dialog title for restoring a snapshot.
  ///
  /// In en, this message translates to:
  /// **'Restore Snapshot'**
  String get panelSettings_restoreSnapshot;

  /// Confirmation content for restoring a snapshot.
  ///
  /// In en, this message translates to:
  /// **'Restore snapshot \"{name}\"? This may take some time.'**
  String panelSettings_restoreSnapshotConfirm(String name);

  /// Toast shown after snapshot restore starts.
  ///
  /// In en, this message translates to:
  /// **'Snapshot restore started'**
  String get panelSettings_snapshotRestoreStarted;

  /// Toast shown when restoring a snapshot fails.
  ///
  /// In en, this message translates to:
  /// **'Restore failed'**
  String get panelSettings_restoreFailed;

  /// Dialog title for deleting a snapshot.
  ///
  /// In en, this message translates to:
  /// **'Delete Snapshot'**
  String get panelSettings_deleteSnapshot;

  /// Confirmation content for deleting a snapshot.
  ///
  /// In en, this message translates to:
  /// **'Delete snapshot \"{name}\"?'**
  String panelSettings_deleteSnapshotConfirm(String name);

  /// Snapshot creation basic information section title.
  ///
  /// In en, this message translates to:
  /// **'Basic Info'**
  String get panelSettings_baseInfo;

  /// Snapshot description field label.
  ///
  /// In en, this message translates to:
  /// **'Remark'**
  String get panelSettings_remarkDescription;

  /// Snapshot compression password field label.
  ///
  /// In en, this message translates to:
  /// **'Compression Password'**
  String get panelSettings_compressionPassword;

  /// Snapshot storage accounts section title.
  ///
  /// In en, this message translates to:
  /// **'Storage Accounts'**
  String get panelSettings_storageAccounts;

  /// Snapshot data selection section title.
  ///
  /// In en, this message translates to:
  /// **'Data Content'**
  String get panelSettings_dataContent;

  /// Snapshot extra options section title.
  ///
  /// In en, this message translates to:
  /// **'Extra Options'**
  String get panelSettings_extraOptions;

  /// Snapshot Docker configuration option.
  ///
  /// In en, this message translates to:
  /// **'Docker Configuration'**
  String get panelSettings_dockerConfig;

  /// Snapshot monitor data option.
  ///
  /// In en, this message translates to:
  /// **'Monitor Data'**
  String get panelSettings_monitorData;

  /// Snapshot log files option.
  ///
  /// In en, this message translates to:
  /// **'Log Files'**
  String get panelSettings_logFiles;

  /// Snapshot operation log option.
  ///
  /// In en, this message translates to:
  /// **'Operation Log'**
  String get panelSettings_operationLog;

  /// Snapshot login log option.
  ///
  /// In en, this message translates to:
  /// **'Login Log'**
  String get panelSettings_loginLog;

  /// Snapshot system log option.
  ///
  /// In en, this message translates to:
  /// **'System Log'**
  String get panelSettings_systemLog;

  /// Snapshot task log option.
  ///
  /// In en, this message translates to:
  /// **'Task Log'**
  String get panelSettings_taskLog;

  /// Snapshot create empty storage account message.
  ///
  /// In en, this message translates to:
  /// **'Add a backup account in settings first'**
  String get panelSettings_addBackupAccountFirst;

  /// Snapshot download node row title.
  ///
  /// In en, this message translates to:
  /// **'Download Node'**
  String get panelSettings_downloadNode;

  /// Snapshot app data tree title.
  ///
  /// In en, this message translates to:
  /// **'App Data'**
  String get panelSettings_appData;

  /// Snapshot panel data tree title.
  ///
  /// In en, this message translates to:
  /// **'Panel Data'**
  String get panelSettings_panelData;

  /// Snapshot backup data tree title.
  ///
  /// In en, this message translates to:
  /// **'Backup Data'**
  String get panelSettings_backupData;

  /// Snapshot timeout setting title.
  ///
  /// In en, this message translates to:
  /// **'Timeout'**
  String get panelSettings_timeout;

  /// Validation message when no snapshot source account is selected.
  ///
  /// In en, this message translates to:
  /// **'Choose at least one source account'**
  String get panelSettings_chooseAtLeastOneSourceAccount;

  /// Validation message when no snapshot download account is selected.
  ///
  /// In en, this message translates to:
  /// **'Choose a download account'**
  String get panelSettings_chooseDownloadAccount;

  /// Validation message when no backup account is selected.
  ///
  /// In en, this message translates to:
  /// **'Choose at least one backup account'**
  String get panelSettings_chooseAtLeastOneBackupAccount;

  /// Picker title for choosing a snapshot download account.
  ///
  /// In en, this message translates to:
  /// **'Choose Download Account'**
  String get panelSettings_chooseDownloadAccountTitle;

  /// Seconds timeout unit.
  ///
  /// In en, this message translates to:
  /// **'Seconds'**
  String get panelSettings_second;

  /// Minutes timeout unit.
  ///
  /// In en, this message translates to:
  /// **'Minutes'**
  String get panelSettings_minute;

  /// Hours timeout unit.
  ///
  /// In en, this message translates to:
  /// **'Hours'**
  String get panelSettings_hour;

  /// Toast shown after snapshot creation starts.
  ///
  /// In en, this message translates to:
  /// **'Snapshot creation started'**
  String get panelSettings_snapshotCreateStarted;

  /// Toast shown when creating a snapshot fails.
  ///
  /// In en, this message translates to:
  /// **'Create failed'**
  String get panelSettings_createFailed;

  /// Snapshot import sheet title.
  ///
  /// In en, this message translates to:
  /// **'Sync Snapshot'**
  String get panelSettings_syncSnapshot;

  /// Snapshot import help text.
  ///
  /// In en, this message translates to:
  /// **'Import existing snapshot files from a backup account into panel management. Choose the backup account that stores snapshot files.'**
  String get panelSettings_importSnapshotHelp;

  /// Snapshot import empty backup account message.
  ///
  /// In en, this message translates to:
  /// **'No backup accounts. Add one first.'**
  String get panelSettings_noBackupAccountsAddFirst;

  /// Snapshot import backup account picker title.
  ///
  /// In en, this message translates to:
  /// **'Choose Backup Account'**
  String get panelSettings_selectBackupAccount;

  /// Snapshot import sync button label.
  ///
  /// In en, this message translates to:
  /// **'Sync'**
  String get panelSettings_sync;

  /// Toast shown after snapshot import sync starts.
  ///
  /// In en, this message translates to:
  /// **'Sync started'**
  String get panelSettings_syncStarted;

  /// Toast shown when snapshot import sync fails.
  ///
  /// In en, this message translates to:
  /// **'Sync failed'**
  String get panelSettings_syncFailed;

  /// Change password sheet title.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get panelSettings_changePassword;

  /// Current password field label.
  ///
  /// In en, this message translates to:
  /// **'Current Password'**
  String get panelSettings_currentPassword;

  /// Current password field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter the current password'**
  String get panelSettings_currentPasswordPlaceholder;

  /// New password field label.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get panelSettings_newPassword;

  /// New password field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter a new password'**
  String get panelSettings_newPasswordPlaceholder;

  /// Confirm new password field label.
  ///
  /// In en, this message translates to:
  /// **'Confirm New Password'**
  String get panelSettings_confirmNewPassword;

  /// Confirm new password field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter the new password again'**
  String get panelSettings_confirmNewPasswordPlaceholder;

  /// General section title.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get panelSettings_general;

  /// Enable API setting title.
  ///
  /// In en, this message translates to:
  /// **'Enable API'**
  String get panelSettings_enableApi;

  /// Enable API setting subtitle.
  ///
  /// In en, this message translates to:
  /// **'Allow access to panel features through the API'**
  String get panelSettings_enableApiSubtitle;

  /// API credentials section title.
  ///
  /// In en, this message translates to:
  /// **'Credentials'**
  String get panelSettings_credentials;

  /// API key field title.
  ///
  /// In en, this message translates to:
  /// **'API Key'**
  String get panelSettings_apiKey;

  /// Toast shown after copying an API key.
  ///
  /// In en, this message translates to:
  /// **'Key copied'**
  String get panelSettings_keyCopied;

  /// Reset API key action title.
  ///
  /// In en, this message translates to:
  /// **'Reset Key'**
  String get panelSettings_resetKey;

  /// Reset API key action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Generate a new API Key. The old key will become invalid.'**
  String get panelSettings_resetKeySubtitle;

  /// API IP whitelist placeholder.
  ///
  /// In en, this message translates to:
  /// **'Separate multiple IPs with line breaks. Empty means unrestricted.'**
  String get panelSettings_apiWhitelistPlaceholder;

  /// API validity time field title.
  ///
  /// In en, this message translates to:
  /// **'Validity (minutes)'**
  String get panelSettings_validityMinutes;

  /// API validity time field subtitle.
  ///
  /// In en, this message translates to:
  /// **'Valid time window for API requests'**
  String get panelSettings_apiValiditySubtitle;

  /// Minutes placeholder.
  ///
  /// In en, this message translates to:
  /// **'Minutes'**
  String get panelSettings_minutesPlaceholder;

  /// API interface security tip.
  ///
  /// In en, this message translates to:
  /// **'Tip: after enabling the API, set an IP whitelist to improve security.'**
  String get panelSettings_apiSecurityTip;

  /// Dialog title for resetting an API key.
  ///
  /// In en, this message translates to:
  /// **'Reset API Key?'**
  String get panelSettings_resetApiKeyTitle;

  /// Dialog content for resetting an API key.
  ///
  /// In en, this message translates to:
  /// **'After resetting, programs using the old key will no longer be able to access the API. Continue?'**
  String get panelSettings_resetApiKeyContent;

  /// Destructive confirm button label for resetting an API key.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get panelSettings_confirmReset;

  /// Toast shown after resetting an API key.
  ///
  /// In en, this message translates to:
  /// **'Key reset'**
  String get panelSettings_keyReset;

  /// Toast shown when resetting an API key fails.
  ///
  /// In en, this message translates to:
  /// **'Reset failed'**
  String get panelSettings_resetFailed;

  /// 1Panel product subtitle shown on the about page.
  ///
  /// In en, this message translates to:
  /// **'Modern Linux server operations management panel'**
  String get panelSettings_aboutProductSubtitle;

  /// About page links section title.
  ///
  /// In en, this message translates to:
  /// **'Links'**
  String get panelSettings_links;

  /// Official documentation link title.
  ///
  /// In en, this message translates to:
  /// **'Official Docs'**
  String get panelSettings_officialDocs;

  /// Community link title.
  ///
  /// In en, this message translates to:
  /// **'Community'**
  String get panelSettings_community;

  /// Community link subtitle.
  ///
  /// In en, this message translates to:
  /// **'Join community discussions'**
  String get panelSettings_communitySubtitle;

  /// Issue feedback link title.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get panelSettings_feedback;

  /// Issue feedback link subtitle.
  ///
  /// In en, this message translates to:
  /// **'Submit an Issue'**
  String get panelSettings_feedbackSubtitle;

  /// Client section title on the about page.
  ///
  /// In en, this message translates to:
  /// **'Client'**
  String get panelSettings_client;

  /// Client subtitle on the about page.
  ///
  /// In en, this message translates to:
  /// **'Third-party iOS management client'**
  String get panelSettings_clientSubtitle;

  /// Cron jobs page title.
  ///
  /// In en, this message translates to:
  /// **'Cron Jobs'**
  String get cronjobs_title;

  /// Cron jobs search field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Search cron jobs...'**
  String get cronjobs_searchPlaceholder;

  /// Cron jobs empty state title.
  ///
  /// In en, this message translates to:
  /// **'No cron jobs'**
  String get cronjobs_emptyTitle;

  /// Cron jobs empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Create cron jobs to automate operations tasks'**
  String get cronjobs_emptySubtitle;

  /// Create cron job action label.
  ///
  /// In en, this message translates to:
  /// **'New Task'**
  String get cronjobs_newTask;

  /// Cron jobs search empty state title.
  ///
  /// In en, this message translates to:
  /// **'No Results'**
  String get cronjobs_noSearchResults;

  /// Cron jobs search empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'No cron jobs match \"{query}\"'**
  String cronjobs_noSearchResultsSubtitle(String query);

  /// Cron job type label for shell scripts.
  ///
  /// In en, this message translates to:
  /// **'Shell Script'**
  String get cronjobs_typeShell;

  /// Cron job type label for app backup.
  ///
  /// In en, this message translates to:
  /// **'App Backup'**
  String get cronjobs_typeApp;

  /// Cron job type label for website backup.
  ///
  /// In en, this message translates to:
  /// **'Website Backup'**
  String get cronjobs_typeWebsite;

  /// Cron job type label for database backup.
  ///
  /// In en, this message translates to:
  /// **'Database Backup'**
  String get cronjobs_typeDatabase;

  /// Cron job type label for directory backup.
  ///
  /// In en, this message translates to:
  /// **'Directory Backup'**
  String get cronjobs_typeDirectory;

  /// Cron job type label for log backup.
  ///
  /// In en, this message translates to:
  /// **'Log Backup'**
  String get cronjobs_typeLog;

  /// Cron job type label for URL request.
  ///
  /// In en, this message translates to:
  /// **'URL Request'**
  String get cronjobs_typeCurl;

  /// Cron job type label for website log rotation.
  ///
  /// In en, this message translates to:
  /// **'Log Rotation'**
  String get cronjobs_typeCutWebsiteLog;

  /// Cron job type label for disk cleanup.
  ///
  /// In en, this message translates to:
  /// **'Disk Cleanup'**
  String get cronjobs_typeClean;

  /// Cron job type label for system snapshot.
  ///
  /// In en, this message translates to:
  /// **'System Snapshot'**
  String get cronjobs_typeSnapshot;

  /// Cron job type label for time sync.
  ///
  /// In en, this message translates to:
  /// **'Time Sync'**
  String get cronjobs_typeNtp;

  /// Cron job type label for IP sync.
  ///
  /// In en, this message translates to:
  /// **'IP Sync'**
  String get cronjobs_typeSyncIpGroup;

  /// Cron job type label for log cleanup.
  ///
  /// In en, this message translates to:
  /// **'Log Cleanup'**
  String get cronjobs_typeCleanLog;

  /// Cron job enabled status label.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get cronjobs_statusEnabled;

  /// Cron job disabled status label.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get cronjobs_statusDisabled;

  /// Cron job pending status label.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get cronjobs_statusPending;

  /// Cron job backup retention copy count.
  ///
  /// In en, this message translates to:
  /// **'Keep {count} copies'**
  String cronjobs_retentionCopies(int count);

  /// Cron job card label when the job has never run.
  ///
  /// In en, this message translates to:
  /// **'Not executed yet'**
  String get cronjobs_notExecutedYet;

  /// Cron job record success status.
  ///
  /// In en, this message translates to:
  /// **'Run succeeded'**
  String get cronjobs_runSuccess;

  /// Cron job record failed status.
  ///
  /// In en, this message translates to:
  /// **'Run failed'**
  String get cronjobs_runFailed;

  /// Cron job record status success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get cronjobs_statusSuccess;

  /// Cron job record status failed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get cronjobs_statusFailed;

  /// Cron job record status waiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting'**
  String get cronjobs_statusWaiting;

  /// Cron job record status unexecuted.
  ///
  /// In en, this message translates to:
  /// **'Not Executed'**
  String get cronjobs_statusUnexecuted;

  /// Cron job execution records sheet title.
  ///
  /// In en, this message translates to:
  /// **'{name} - Execution Records'**
  String cronjobs_recordsTitle(String name);

  /// Cron job records empty state title.
  ///
  /// In en, this message translates to:
  /// **'No execution records'**
  String get cronjobs_noRecordsTitle;

  /// Cron job records empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'This task has not been executed yet'**
  String get cronjobs_noRecordsSubtitle;

  /// Default cron job record message for success.
  ///
  /// In en, this message translates to:
  /// **'Task executed successfully'**
  String get cronjobs_taskRunSuccess;

  /// Default cron job record message when details are empty.
  ///
  /// In en, this message translates to:
  /// **'No details'**
  String get cronjobs_noDetails;

  /// Cron job execution log sheet title.
  ///
  /// In en, this message translates to:
  /// **'Execution Log'**
  String get cronjobs_executionLog;

  /// Cron job action sheet task management section title.
  ///
  /// In en, this message translates to:
  /// **'Task Management'**
  String get cronjobs_management;

  /// Enable cron job action label.
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get cronjobs_enable;

  /// Disable cron job action label.
  ///
  /// In en, this message translates to:
  /// **'Disable'**
  String get cronjobs_disable;

  /// Enable cron job action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Enable this cron job'**
  String get cronjobs_enableSubtitle;

  /// Disable cron job action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Pause this cron job'**
  String get cronjobs_disableSubtitle;

  /// Run cron job once action label.
  ///
  /// In en, this message translates to:
  /// **'Run Now'**
  String get cronjobs_runOnce;

  /// Run cron job once action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Trigger one manual execution'**
  String get cronjobs_runOnceSubtitle;

  /// Edit cron job action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Modify cron job configuration'**
  String get cronjobs_editSubtitle;

  /// Cron job execution records action label.
  ///
  /// In en, this message translates to:
  /// **'Execution Records'**
  String get cronjobs_records;

  /// Cron job execution records action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View historical execution records and logs'**
  String get cronjobs_recordsSubtitle;

  /// Danger zone section title.
  ///
  /// In en, this message translates to:
  /// **'Danger Zone'**
  String get cronjobs_dangerZone;

  /// Delete cron job action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Delete this cron job'**
  String get cronjobs_deleteSubtitle;

  /// Delete cron job confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Delete Cron Job'**
  String get cronjobs_deleteTitle;

  /// Delete cron job confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Delete cron job \"{name}\"?'**
  String cronjobs_deleteConfirm(String name);

  /// Enable cron job confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Enable Cron Job'**
  String get cronjobs_enableTitle;

  /// Disable cron job confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Disable Cron Job'**
  String get cronjobs_disableTitle;

  /// Enable cron job confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Enable this cron job?'**
  String get cronjobs_enableConfirm;

  /// Disable cron job confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Disable this cron job?'**
  String get cronjobs_disableConfirm;

  /// Toast shown after enabling a cron job.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get cronjobs_enableSucceeded;

  /// Toast shown after disabling a cron job.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get cronjobs_disableSucceeded;

  /// Toast shown when enabling a cron job fails.
  ///
  /// In en, this message translates to:
  /// **'Enable failed'**
  String get cronjobs_enableFailed;

  /// Toast shown when disabling a cron job fails.
  ///
  /// In en, this message translates to:
  /// **'Disable failed'**
  String get cronjobs_disableFailed;

  /// Toast shown after manually triggering a cron job.
  ///
  /// In en, this message translates to:
  /// **'Execution triggered'**
  String get cronjobs_runTriggered;

  /// Toast shown when manually triggering a cron job fails.
  ///
  /// In en, this message translates to:
  /// **'Trigger failed'**
  String get cronjobs_runTriggerFailed;

  /// Toast shown after deleting a cron job.
  ///
  /// In en, this message translates to:
  /// **'Deleted'**
  String get cronjobs_deleteSucceeded;

  /// Toast shown when deleting a cron job fails.
  ///
  /// In en, this message translates to:
  /// **'Delete failed'**
  String get cronjobs_deleteFailed;

  /// Cron expression description for every N minutes.
  ///
  /// In en, this message translates to:
  /// **'Every {n} minutes'**
  String cronjobs_everyMinutes(String n);

  /// Cron expression description for every N seconds.
  ///
  /// In en, this message translates to:
  /// **'Every {n} seconds'**
  String cronjobs_everySeconds(String n);

  /// Cron expression description for hourly schedule.
  ///
  /// In en, this message translates to:
  /// **'Every hour at minute {minute}'**
  String cronjobs_everyHourAtMinute(String minute);

  /// Cron expression description for daily schedule.
  ///
  /// In en, this message translates to:
  /// **'Daily at {time}'**
  String cronjobs_dailyAt(String time);

  /// Cron expression description for every N hours.
  ///
  /// In en, this message translates to:
  /// **'Every {n} hours'**
  String cronjobs_everyHours(String n);

  /// Cron expression description for weekly schedule.
  ///
  /// In en, this message translates to:
  /// **'Every {weekday} at {time}'**
  String cronjobs_weeklyAt(String weekday, String time);

  /// Cron expression description for monthly schedule.
  ///
  /// In en, this message translates to:
  /// **'Monthly on day {day} at {time}'**
  String cronjobs_monthlyAt(String day, String time);

  /// Cron expression description for every N days.
  ///
  /// In en, this message translates to:
  /// **'Every {n} days at {time}'**
  String cronjobs_everyDaysAt(String n, String time);

  /// Sunday label in cron expression descriptions.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get cronjobs_weekdaySun;

  /// Monday label in cron expression descriptions.
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get cronjobs_weekdayMon;

  /// Tuesday label in cron expression descriptions.
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get cronjobs_weekdayTue;

  /// Wednesday label in cron expression descriptions.
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get cronjobs_weekdayWed;

  /// Thursday label in cron expression descriptions.
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get cronjobs_weekdayThu;

  /// Friday label in cron expression descriptions.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get cronjobs_weekdayFri;

  /// Saturday label in cron expression descriptions.
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get cronjobs_weekdaySat;

  /// Fallback weekday label in cron expression descriptions.
  ///
  /// In en, this message translates to:
  /// **'Day {day}'**
  String cronjobs_weekdayFallback(String day);

  /// Cron job form title for creating a task.
  ///
  /// In en, this message translates to:
  /// **'New Cron Job'**
  String get cronjobs_formCreateTitle;

  /// Cron job form title for editing a task.
  ///
  /// In en, this message translates to:
  /// **'Edit Cron Job'**
  String get cronjobs_formEditTitle;

  /// Cron job form basic information section title.
  ///
  /// In en, this message translates to:
  /// **'Basic Info'**
  String get cronjobs_basicInfo;

  /// Cron job task name field label.
  ///
  /// In en, this message translates to:
  /// **'Task Name'**
  String get cronjobs_taskName;

  /// Cron job schedule section title.
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get cronjobs_schedule;

  /// Cron expression field label.
  ///
  /// In en, this message translates to:
  /// **'Cron Expression'**
  String get cronjobs_cronExpression;

  /// Custom cron expression switch label.
  ///
  /// In en, this message translates to:
  /// **'Custom Expression'**
  String get cronjobs_customExpression;

  /// Cron job execution settings section title.
  ///
  /// In en, this message translates to:
  /// **'Execution Settings'**
  String get cronjobs_executionSettings;

  /// Retain copies field label.
  ///
  /// In en, this message translates to:
  /// **'Retain Copies'**
  String get cronjobs_retainCopies;

  /// Retry times field label.
  ///
  /// In en, this message translates to:
  /// **'Retry Times'**
  String get cronjobs_retryTimes;

  /// Ignore errors switch label.
  ///
  /// In en, this message translates to:
  /// **'Ignore Errors'**
  String get cronjobs_ignoreErrors;

  /// Shell script configuration section title.
  ///
  /// In en, this message translates to:
  /// **'Script Configuration'**
  String get cronjobs_scriptConfig;

  /// Run shell command in container switch label.
  ///
  /// In en, this message translates to:
  /// **'Run in Container'**
  String get cronjobs_runInContainer;

  /// Container selector label.
  ///
  /// In en, this message translates to:
  /// **'Container'**
  String get cronjobs_container;

  /// Container selector placeholder.
  ///
  /// In en, this message translates to:
  /// **'Choose Container'**
  String get cronjobs_chooseContainer;

  /// Custom command switch label.
  ///
  /// In en, this message translates to:
  /// **'Custom Command'**
  String get cronjobs_customCommand;

  /// Command field label.
  ///
  /// In en, this message translates to:
  /// **'Command'**
  String get cronjobs_command;

  /// Custom executor switch label.
  ///
  /// In en, this message translates to:
  /// **'Custom Executor'**
  String get cronjobs_customExecutor;

  /// Executor field label.
  ///
  /// In en, this message translates to:
  /// **'Executor'**
  String get cronjobs_executor;

  /// Run user selector label.
  ///
  /// In en, this message translates to:
  /// **'Run User'**
  String get cronjobs_runUser;

  /// Script source selector label.
  ///
  /// In en, this message translates to:
  /// **'Script Source'**
  String get cronjobs_scriptSource;

  /// Manual script source option.
  ///
  /// In en, this message translates to:
  /// **'Manual Edit'**
  String get cronjobs_scriptSourceManual;

  /// Script library source option.
  ///
  /// In en, this message translates to:
  /// **'Script Library'**
  String get cronjobs_scriptSourceLibrary;

  /// File path source option.
  ///
  /// In en, this message translates to:
  /// **'File Path'**
  String get cronjobs_scriptSourceFilePath;

  /// Script content field label.
  ///
  /// In en, this message translates to:
  /// **'Script Content'**
  String get cronjobs_scriptContent;

  /// Edit script sheet title.
  ///
  /// In en, this message translates to:
  /// **'Edit Script'**
  String get cronjobs_editScript;

  /// Placeholder shown when script content is empty.
  ///
  /// In en, this message translates to:
  /// **'Tap to edit script...'**
  String get cronjobs_tapToEditScript;

  /// Script selector label.
  ///
  /// In en, this message translates to:
  /// **'Script'**
  String get cronjobs_script;

  /// Script selector placeholder.
  ///
  /// In en, this message translates to:
  /// **'Choose Script'**
  String get cronjobs_chooseScript;

  /// Script file selector label.
  ///
  /// In en, this message translates to:
  /// **'Script File'**
  String get cronjobs_scriptFile;

  /// File selector placeholder.
  ///
  /// In en, this message translates to:
  /// **'Choose File'**
  String get cronjobs_chooseFile;

  /// File picker title for choosing a script file.
  ///
  /// In en, this message translates to:
  /// **'Choose Script File'**
  String get cronjobs_chooseScriptFile;

  /// App field label.
  ///
  /// In en, this message translates to:
  /// **'App'**
  String get cronjobs_app;

  /// Website field label.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get cronjobs_website;

  /// All websites option label.
  ///
  /// In en, this message translates to:
  /// **'All websites (all)'**
  String get cronjobs_allWebsites;

  /// Database type field label.
  ///
  /// In en, this message translates to:
  /// **'Database Type'**
  String get cronjobs_databaseType;

  /// Database field label.
  ///
  /// In en, this message translates to:
  /// **'Database'**
  String get cronjobs_database;

  /// Database backup arguments label.
  ///
  /// In en, this message translates to:
  /// **'Backup Arguments'**
  String get cronjobs_backupArgs;

  /// Help text for MySQL backup arguments.
  ///
  /// In en, this message translates to:
  /// **'Backup arguments for MySQL databases'**
  String get cronjobs_mysqlArgsHelp;

  /// Directory backup type field label.
  ///
  /// In en, this message translates to:
  /// **'Backup Type'**
  String get cronjobs_backupType;

  /// Directory option label.
  ///
  /// In en, this message translates to:
  /// **'Directory'**
  String get cronjobs_directory;

  /// File option label.
  ///
  /// In en, this message translates to:
  /// **'File'**
  String get cronjobs_file;

  /// Backup directory field label.
  ///
  /// In en, this message translates to:
  /// **'Backup Directory'**
  String get cronjobs_backupDirectory;

  /// Directory selector placeholder and picker title.
  ///
  /// In en, this message translates to:
  /// **'Choose Directory'**
  String get cronjobs_chooseDirectory;

  /// Add file action label.
  ///
  /// In en, this message translates to:
  /// **'Add File'**
  String get cronjobs_addFile;

  /// Add URL action label.
  ///
  /// In en, this message translates to:
  /// **'Add URL'**
  String get cronjobs_addUrl;

  /// Include images switch label for snapshot tasks.
  ///
  /// In en, this message translates to:
  /// **'Include Images'**
  String get cronjobs_includeImages;

  /// Exclude apps selector label.
  ///
  /// In en, this message translates to:
  /// **'Exclude Apps'**
  String get cronjobs_excludeApps;

  /// Cleanup scope selector label.
  ///
  /// In en, this message translates to:
  /// **'Cleanup Scope'**
  String get cronjobs_cleanScope;

  /// Website logs cleanup scope label.
  ///
  /// In en, this message translates to:
  /// **'Website Logs'**
  String get cronjobs_websiteLogs;

  /// Backup settings section title.
  ///
  /// In en, this message translates to:
  /// **'Backup Settings'**
  String get cronjobs_backupSettings;

  /// Compression password field label.
  ///
  /// In en, this message translates to:
  /// **'Compression Password'**
  String get cronjobs_compressionPassword;

  /// Compression password placeholder.
  ///
  /// In en, this message translates to:
  /// **'Leave empty for no encryption'**
  String get cronjobs_emptyMeansNoEncryption;

  /// Backup account selector label.
  ///
  /// In en, this message translates to:
  /// **'Backup Account'**
  String get cronjobs_backupAccount;

  /// Backup account selector placeholder.
  ///
  /// In en, this message translates to:
  /// **'Choose Backup Account'**
  String get cronjobs_chooseBackupAccount;

  /// Download account selector label.
  ///
  /// In en, this message translates to:
  /// **'Download Account'**
  String get cronjobs_downloadAccount;

  /// Download account selector placeholder.
  ///
  /// In en, this message translates to:
  /// **'Choose Download Account'**
  String get cronjobs_chooseDownloadAccount;

  /// Exclusion rules section title.
  ///
  /// In en, this message translates to:
  /// **'Exclusion Rules'**
  String get cronjobs_exclusionRules;

  /// Add exclusion rule action and dialog title.
  ///
  /// In en, this message translates to:
  /// **'Add Exclusion Rule'**
  String get cronjobs_addExclusionRule;

  /// Exclusion rule text field placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. *.log, .git'**
  String get cronjobs_exclusionRulePlaceholder;

  /// Task type selector label.
  ///
  /// In en, this message translates to:
  /// **'Task Type'**
  String get cronjobs_taskType;

  /// Frequency selector label.
  ///
  /// In en, this message translates to:
  /// **'Frequency'**
  String get cronjobs_frequency;

  /// Weekday selector label.
  ///
  /// In en, this message translates to:
  /// **'Choose Weekday'**
  String get cronjobs_chooseWeekday;

  /// Day of month selector label.
  ///
  /// In en, this message translates to:
  /// **'Choose Date'**
  String get cronjobs_chooseDate;

  /// Day interval selector label.
  ///
  /// In en, this message translates to:
  /// **'Interval Days'**
  String get cronjobs_intervalDays;

  /// Execution time selector label.
  ///
  /// In en, this message translates to:
  /// **'Execution Time'**
  String get cronjobs_executionTime;

  /// Time picker title.
  ///
  /// In en, this message translates to:
  /// **'Choose Time'**
  String get cronjobs_chooseTime;

  /// Minute interval selector label.
  ///
  /// In en, this message translates to:
  /// **'Interval Minutes'**
  String get cronjobs_intervalMinutes;

  /// Hour interval selector label.
  ///
  /// In en, this message translates to:
  /// **'Interval Hours'**
  String get cronjobs_intervalHours;

  /// Timeout field label.
  ///
  /// In en, this message translates to:
  /// **'Timeout'**
  String get cronjobs_timeout;

  /// Seconds unit label.
  ///
  /// In en, this message translates to:
  /// **'Seconds'**
  String get cronjobs_seconds;

  /// Generic picker placeholder using a field label.
  ///
  /// In en, this message translates to:
  /// **'Choose {label}'**
  String cronjobs_selectLabel(String label);

  /// Monthly frequency option.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get cronjobs_specPerMonth;

  /// Weekly frequency option.
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get cronjobs_specPerWeek;

  /// Daily frequency option.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get cronjobs_specPerDay;

  /// Hourly frequency option.
  ///
  /// In en, this message translates to:
  /// **'Hourly'**
  String get cronjobs_specPerHour;

  /// Every N days frequency option.
  ///
  /// In en, this message translates to:
  /// **'Every N Days'**
  String get cronjobs_specPerNDay;

  /// Every N hours frequency option.
  ///
  /// In en, this message translates to:
  /// **'Every N Hours'**
  String get cronjobs_specPerNHour;

  /// Every N minutes frequency option.
  ///
  /// In en, this message translates to:
  /// **'Every N Minutes'**
  String get cronjobs_specPerNMinute;

  /// App Store page title.
  ///
  /// In en, this message translates to:
  /// **'App Store'**
  String get appStore_title;

  /// App Store search field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Search apps...'**
  String get appStore_searchPlaceholder;

  /// App Store search menu item.
  ///
  /// In en, this message translates to:
  /// **'Search Apps'**
  String get appStore_searchApps;

  /// Menu item and task log title for syncing remote app catalog.
  ///
  /// In en, this message translates to:
  /// **'Update Remote Apps'**
  String get appStore_syncRemoteApps;

  /// Fallback error message when syncing remote app catalog fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to update remote apps'**
  String get appStore_syncRemoteAppsFailed;

  /// Menu item and task log title for syncing local apps.
  ///
  /// In en, this message translates to:
  /// **'Sync Local Apps'**
  String get appStore_syncLocalApps;

  /// Fallback error message when syncing local apps fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to sync local apps'**
  String get appStore_syncLocalAppsFailed;

  /// Menu item for viewing ignored app updates.
  ///
  /// In en, this message translates to:
  /// **'View Ignored Apps'**
  String get appStore_viewIgnoredApps;

  /// Empty state for app catalog search results.
  ///
  /// In en, this message translates to:
  /// **'No matching apps'**
  String get appStore_noMatchingApps;

  /// Error message when app catalog loading fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to load all apps'**
  String get appStore_loadAllAppsFailed;

  /// All filter label in app catalog.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get appStore_allFilter;

  /// Empty state for installed app search results.
  ///
  /// In en, this message translates to:
  /// **'No matching installed apps'**
  String get appStore_noMatchingInstalledApps;

  /// Empty state for installed apps.
  ///
  /// In en, this message translates to:
  /// **'No installed apps'**
  String get appStore_noInstalledApps;

  /// Error message when installed app store loading fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to load App Store'**
  String get appStore_loadStoreFailed;

  /// Empty state title when no installed app has updates.
  ///
  /// In en, this message translates to:
  /// **'No updates available'**
  String get appStore_noUpdatableApps;

  /// Empty state title when update search has no results.
  ///
  /// In en, this message translates to:
  /// **'No related apps found'**
  String get appStore_noRelatedApps;

  /// Empty state subtitle when no installed app has updates.
  ///
  /// In en, this message translates to:
  /// **'All apps are already up to date'**
  String get appStore_allAppsUpToDate;

  /// Empty state subtitle for no app search results.
  ///
  /// In en, this message translates to:
  /// **'Try another search term'**
  String get appStore_tryAnotherSearch;

  /// Fallback error when loading more apps fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to load more'**
  String get appStore_loadMoreFailed;

  /// Fallback error when searching apps fails.
  ///
  /// In en, this message translates to:
  /// **'App search failed'**
  String get appStore_searchFailed;

  /// Toast shown after favoriting an installed app.
  ///
  /// In en, this message translates to:
  /// **'Added to favorites'**
  String get appStore_addedFavorite;

  /// Toast shown after unfavoriting an installed app.
  ///
  /// In en, this message translates to:
  /// **'Removed from favorites'**
  String get appStore_removedFavorite;

  /// Generic app store operation failure fallback.
  ///
  /// In en, this message translates to:
  /// **'Operation failed'**
  String get appStore_operationFailed;

  /// Toast shown after app rebuild starts.
  ///
  /// In en, this message translates to:
  /// **'Rebuild started'**
  String get appStore_rebuildStarted;

  /// Fallback error when rebuilding an app fails.
  ///
  /// In en, this message translates to:
  /// **'Rebuild failed'**
  String get appStore_rebuildFailed;

  /// Toast shown after app restart command is sent.
  ///
  /// In en, this message translates to:
  /// **'Restart command sent'**
  String get appStore_restartSent;

  /// Fallback error when restarting an app fails.
  ///
  /// In en, this message translates to:
  /// **'Restart failed'**
  String get appStore_restartFailed;

  /// Toast shown after app stop command is sent.
  ///
  /// In en, this message translates to:
  /// **'Stop command sent'**
  String get appStore_stopSent;

  /// Fallback error when stopping an app fails.
  ///
  /// In en, this message translates to:
  /// **'Stop failed'**
  String get appStore_stopFailed;

  /// Toast shown after app start command is sent.
  ///
  /// In en, this message translates to:
  /// **'Start command sent'**
  String get appStore_startSent;

  /// Fallback error when starting an app fails.
  ///
  /// In en, this message translates to:
  /// **'Start failed'**
  String get appStore_startFailed;

  /// Fallback error when refreshing app store fails.
  ///
  /// In en, this message translates to:
  /// **'Refresh failed'**
  String get appStore_refreshFailed;

  /// Error title when loading more app backups fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to load more backups'**
  String get appStore_loadMoreBackupsFailed;

  /// Error shown when an installed app container id is empty.
  ///
  /// In en, this message translates to:
  /// **'Failed to get container id'**
  String get appStore_containerIdFailed;

  /// Warning shown when Docker is not installed.
  ///
  /// In en, this message translates to:
  /// **'Docker container service was not detected. App installation and runtime require Docker.'**
  String get appStore_dockerNotFoundWarning;

  /// Warning shown when Docker is installed but inactive.
  ///
  /// In en, this message translates to:
  /// **'Docker container service is not running. App installation and runtime require Docker.'**
  String get appStore_dockerNotRunningWarning;

  /// Warning shown when Docker status is abnormal.
  ///
  /// In en, this message translates to:
  /// **'Docker container service status is abnormal. App installation and runtime may be unavailable.'**
  String get appStore_dockerAbnormalWarning;

  /// Rebuild installed app confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Rebuild App'**
  String get appStore_rebuildApp;

  /// Rebuild installed app confirmation message.
  ///
  /// In en, this message translates to:
  /// **'Rebuild \"{name}\"? The app container will be recreated and service may be interrupted.'**
  String appStore_rebuildConfirm(String name);

  /// Rebuild app confirm button.
  ///
  /// In en, this message translates to:
  /// **'Rebuild'**
  String get appStore_rebuild;

  /// Restart installed app confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Restart App'**
  String get appStore_restartApp;

  /// Restart installed app confirmation message.
  ///
  /// In en, this message translates to:
  /// **'Restart \"{name}\"? Service will be briefly interrupted.'**
  String appStore_restartConfirm(String name);

  /// Restart app confirm button.
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get appStore_restart;

  /// Stop installed app confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Stop App'**
  String get appStore_stopApp;

  /// Stop installed app confirmation message.
  ///
  /// In en, this message translates to:
  /// **'Stop \"{name}\"?'**
  String appStore_stopConfirm(String name);

  /// Stop app confirm button.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get appStore_stop;

  /// Start installed app confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Start App'**
  String get appStore_startApp;

  /// Start installed app confirmation message.
  ///
  /// In en, this message translates to:
  /// **'Start \"{name}\"?'**
  String appStore_startConfirm(String name);

  /// Start app confirm button.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get appStore_start;

  /// Uninstall installed app dialog title.
  ///
  /// In en, this message translates to:
  /// **'Uninstall App'**
  String get appStore_uninstallApp;

  /// Uninstall installed app confirmation message.
  ///
  /// In en, this message translates to:
  /// **'Uninstall \"{name}\" from the server?'**
  String appStore_uninstallConfirm(String name);

  /// Uninstall app confirm button.
  ///
  /// In en, this message translates to:
  /// **'Uninstall'**
  String get appStore_confirmUninstall;

  /// Force uninstall option label.
  ///
  /// In en, this message translates to:
  /// **'Force uninstall'**
  String get appStore_forceUninstall;

  /// Force uninstall option description.
  ///
  /// In en, this message translates to:
  /// **'Force deletion ignores errors during deletion and finally removes metadata'**
  String get appStore_forceUninstallDescription;

  /// Delete app backups uninstall option label.
  ///
  /// In en, this message translates to:
  /// **'Delete backups'**
  String get appStore_deleteBackups;

  /// Delete app backups uninstall option description.
  ///
  /// In en, this message translates to:
  /// **'Also delete all backup files associated with this app'**
  String get appStore_deleteBackupsDescription;

  /// Delete app images uninstall option label.
  ///
  /// In en, this message translates to:
  /// **'Delete images'**
  String get appStore_deleteImages;

  /// Delete app images uninstall option description.
  ///
  /// In en, this message translates to:
  /// **'Delete images related to this app. Failed deletion tasks will not stop the process.'**
  String get appStore_deleteImagesDescription;

  /// Task log title while uninstalling an app.
  ///
  /// In en, this message translates to:
  /// **'Uninstalling {name}'**
  String appStore_uninstallingTitle(String name);

  /// Error shown when submitting uninstall request fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to submit uninstall request: {error}'**
  String appStore_uninstallRequestFailed(String error);

  /// Dialog title for choosing an app install version.
  ///
  /// In en, this message translates to:
  /// **'Choose Install Version'**
  String get appStore_selectInstallVersion;

  /// Installed app current version label.
  ///
  /// In en, this message translates to:
  /// **'Current version: {version}'**
  String appStore_currentVersion(String version);

  /// Update card label when a new app version is found.
  ///
  /// In en, this message translates to:
  /// **'New version found'**
  String get appStore_newVersionFound;

  /// Ignore app update action label.
  ///
  /// In en, this message translates to:
  /// **'Ignore'**
  String get appStore_ignore;

  /// Update app action label.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get appStore_update;

  /// Ignore update dialog title.
  ///
  /// In en, this message translates to:
  /// **'Ignore Update'**
  String get appStore_ignoreUpdate;

  /// Ignore update dialog subtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose the update ignore scope'**
  String get appStore_ignoreUpdateSubtitle;

  /// Ignore update confirm button.
  ///
  /// In en, this message translates to:
  /// **'Ignore'**
  String get appStore_confirmIgnore;

  /// Ignore all future versions option label.
  ///
  /// In en, this message translates to:
  /// **'Ignore all future versions'**
  String get appStore_ignoreAllVersions;

  /// Ignore specific version option label.
  ///
  /// In en, this message translates to:
  /// **'Ignore a specific version'**
  String get appStore_ignoreSpecificVersion;

  /// Error shown when fetching app update versions fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch versions: {error}'**
  String appStore_fetchVersionsFailed(String error);

  /// Toast shown after ignoring an app update.
  ///
  /// In en, this message translates to:
  /// **'Update ignored'**
  String get appStore_updateIgnored;

  /// Generic app store operation failure with error details.
  ///
  /// In en, this message translates to:
  /// **'Operation failed: {error}'**
  String appStore_operationFailedWithError(String error);

  /// Installed app action sheet app info section title.
  ///
  /// In en, this message translates to:
  /// **'App Info'**
  String get appStore_appInfo;

  /// Installed app install directory action title.
  ///
  /// In en, this message translates to:
  /// **'Install Directory'**
  String get appStore_installDirectory;

  /// Installed app directory unavailable label.
  ///
  /// In en, this message translates to:
  /// **'Directory unavailable'**
  String get appStore_directoryUnavailable;

  /// Installed app backup section title.
  ///
  /// In en, this message translates to:
  /// **'Backup'**
  String get appStore_backup;

  /// Run installed app backup action title.
  ///
  /// In en, this message translates to:
  /// **'Run Backup'**
  String get appStore_runBackup;

  /// Run installed app backup action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Create a backup of the current app'**
  String get appStore_runBackupSubtitle;

  /// Installed app runtime control section title.
  ///
  /// In en, this message translates to:
  /// **'Runtime Control'**
  String get appStore_runtimeControl;

  /// Rebuild app action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Recreate app containers'**
  String get appStore_rebuildSubtitle;

  /// Restart app action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Restart app services'**
  String get appStore_restartSubtitle;

  /// Stop running app action title.
  ///
  /// In en, this message translates to:
  /// **'Stop App'**
  String get appStore_stopRunningApp;

  /// Start stopped app action title.
  ///
  /// In en, this message translates to:
  /// **'Start App'**
  String get appStore_enableApp;

  /// Stop running app action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Stop the currently running app'**
  String get appStore_stopRunningSubtitle;

  /// Start app action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Start the current app'**
  String get appStore_startCurrentSubtitle;

  /// Installed app maintenance section title.
  ///
  /// In en, this message translates to:
  /// **'Maintenance'**
  String get appStore_maintenance;

  /// Modify installed app params action title.
  ///
  /// In en, this message translates to:
  /// **'Modify Parameters'**
  String get appStore_modifyParams;

  /// Modify installed app params action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Adjust app install parameters'**
  String get appStore_modifyParamsSubtitle;

  /// Open installed app terminal action title.
  ///
  /// In en, this message translates to:
  /// **'Terminal'**
  String get appStore_runTerminal;

  /// Open installed app terminal action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Enter app container'**
  String get appStore_enterContainer;

  /// View installed app logs action title.
  ///
  /// In en, this message translates to:
  /// **'View Logs'**
  String get appStore_viewLogs;

  /// View installed app logs action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View app runtime logs'**
  String get appStore_viewLogsSubtitle;

  /// View installed app install log action title.
  ///
  /// In en, this message translates to:
  /// **'Install Log'**
  String get appStore_installLog;

  /// View installed app install log action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View app install and deployment records'**
  String get appStore_installLogSubtitle;

  /// Installed app install log task sheet title.
  ///
  /// In en, this message translates to:
  /// **'Install Log: {name}'**
  String appStore_installLogTitle(String name);

  /// Uninstall installed app action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Remove app and related resources'**
  String get appStore_uninstallSubtitle;

  /// Fallback app description.
  ///
  /// In en, this message translates to:
  /// **'No description'**
  String get appStore_noDescription;

  /// Error title when fetching app version information fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch version information'**
  String get appStore_fetchVersionInfoFailed;

  /// Install app action label.
  ///
  /// In en, this message translates to:
  /// **'Install'**
  String get appStore_install;

  /// Installed app status label.
  ///
  /// In en, this message translates to:
  /// **'Installed'**
  String get appStore_installed;

  /// Not installed app status label.
  ///
  /// In en, this message translates to:
  /// **'Not Installed'**
  String get appStore_notInstalled;

  /// Error title when loading app details fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to load details'**
  String get appStore_loadDetailsFailed;

  /// App detail introduction section title.
  ///
  /// In en, this message translates to:
  /// **'App Introduction'**
  String get appStore_intro;

  /// App detail app key label.
  ///
  /// In en, this message translates to:
  /// **'App Key'**
  String get appStore_appKey;

  /// App detail architectures label.
  ///
  /// In en, this message translates to:
  /// **'Architectures'**
  String get appStore_architectures;

  /// App detail GPU support label.
  ///
  /// In en, this message translates to:
  /// **'GPU Support'**
  String get appStore_gpuSupport;

  /// Supported value label.
  ///
  /// In en, this message translates to:
  /// **'Supported'**
  String get appStore_supported;

  /// Unsupported value label.
  ///
  /// In en, this message translates to:
  /// **'Not Supported'**
  String get appStore_notSupported;

  /// App detail latest version label.
  ///
  /// In en, this message translates to:
  /// **'Latest Version'**
  String get appStore_latestVersion;

  /// App detail website link label.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get appStore_officialWebsite;

  /// App detail documentation link label.
  ///
  /// In en, this message translates to:
  /// **'Docs'**
  String get appStore_documentation;

  /// Installed app running status label.
  ///
  /// In en, this message translates to:
  /// **'Running'**
  String get appStore_statusRunning;

  /// Installed app rebuilding status label.
  ///
  /// In en, this message translates to:
  /// **'Rebuilding'**
  String get appStore_statusRebuilding;

  /// Installed app stopped status label.
  ///
  /// In en, this message translates to:
  /// **'Stopped'**
  String get appStore_statusStopped;

  /// Installed app error status label.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get appStore_statusError;

  /// Installed app port not configured label.
  ///
  /// In en, this message translates to:
  /// **'{label} not configured'**
  String appStore_portNotConfigured(String label);

  /// Installed app unknown install date label.
  ///
  /// In en, this message translates to:
  /// **'Installed: Unknown'**
  String get appStore_installedUnknown;

  /// Installed app installed today label.
  ///
  /// In en, this message translates to:
  /// **'Installed: Today'**
  String get appStore_installedToday;

  /// Installed app installed days ago label.
  ///
  /// In en, this message translates to:
  /// **'Installed: {days} days'**
  String appStore_installedDays(int days);

  /// Error shown when loading ignored app list fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to load ignored apps: {error}'**
  String appStore_loadIgnoredFailed(String error);

  /// Toast shown after cancelling ignored update.
  ///
  /// In en, this message translates to:
  /// **'Ignore cancelled'**
  String get appStore_cancelIgnored;

  /// Error shown when cancelling ignored update fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to cancel ignore: {error}'**
  String appStore_cancelIgnoreFailed(String error);

  /// Ignored app updates sheet title.
  ///
  /// In en, this message translates to:
  /// **'Ignored Apps'**
  String get appStore_ignoredApps;

  /// Ignored app updates empty state.
  ///
  /// In en, this message translates to:
  /// **'No ignored apps'**
  String get appStore_noIgnoredApps;

  /// Ignored app scope for all versions.
  ///
  /// In en, this message translates to:
  /// **'Ignoring all versions'**
  String get appStore_ignoredAllVersions;

  /// Ignored app scope for a specific version.
  ///
  /// In en, this message translates to:
  /// **'Ignoring version: {version}'**
  String appStore_ignoredVersion(String version);

  /// Cancel ignored app update action label.
  ///
  /// In en, this message translates to:
  /// **'Cancel Ignore'**
  String get appStore_cancelIgnore;

  /// Error shown when app store settings load fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to get configuration: {error}'**
  String appStore_getConfigFailed(String error);

  /// Error shown when app store settings update fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to update configuration: {error}'**
  String appStore_updateConfigFailed(String error);

  /// App Store settings uninstall section title.
  ///
  /// In en, this message translates to:
  /// **'App Uninstall'**
  String get appStore_settingsUninstall;

  /// App Store setting label for deleting backups on uninstall.
  ///
  /// In en, this message translates to:
  /// **'Uninstall app - delete backups'**
  String get appStore_settingsDeleteBackupLabel;

  /// App Store setting subtitle for deleting backups on uninstall.
  ///
  /// In en, this message translates to:
  /// **'Automatically delete this app\'s backup files when uninstalling'**
  String get appStore_settingsDeleteBackupSubtitle;

  /// App Store setting label for deleting images on uninstall.
  ///
  /// In en, this message translates to:
  /// **'Uninstall app - delete images'**
  String get appStore_settingsDeleteImageLabel;

  /// App Store setting subtitle for deleting images on uninstall.
  ///
  /// In en, this message translates to:
  /// **'Try to delete images related to this app when uninstalling'**
  String get appStore_settingsDeleteImageSubtitle;

  /// App Store settings update section title.
  ///
  /// In en, this message translates to:
  /// **'App Update'**
  String get appStore_settingsUpdate;

  /// App Store setting label for backing up before upgrade.
  ///
  /// In en, this message translates to:
  /// **'Back up app before upgrade'**
  String get appStore_settingsUpgradeBackupLabel;

  /// App Store setting subtitle for backing up before upgrade.
  ///
  /// In en, this message translates to:
  /// **'Automatically create a backup before app upgrades'**
  String get appStore_settingsUpgradeBackupSubtitle;

  /// App Store settings install section title.
  ///
  /// In en, this message translates to:
  /// **'App Install'**
  String get appStore_settingsInstall;

  /// App Store setting label for allowing port access during install.
  ///
  /// In en, this message translates to:
  /// **'Allow external port access by default'**
  String get appStore_settingsInstallOpenPortLabel;

  /// App Store setting subtitle for allowing port access during install.
  ///
  /// In en, this message translates to:
  /// **'Allow firewall access to app ports by default during install'**
  String get appStore_settingsInstallOpenPortSubtitle;

  /// No description provided for @appStore_backupSheetTitle.
  ///
  /// In en, this message translates to:
  /// **'{name} Backups'**
  String appStore_backupSheetTitle(String name);

  /// App Store backup sheet error title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load backups'**
  String get appStore_loadBackupsFailed;

  /// App Store backup creation failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to create backup'**
  String get appStore_createBackupFailed;

  /// Fallback text for an empty backup remark.
  ///
  /// In en, this message translates to:
  /// **'No remark'**
  String get appStore_noRemark;

  /// Backup record run directory label.
  ///
  /// In en, this message translates to:
  /// **'Run Directory'**
  String get appStore_runDirectory;

  /// Restore action label.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get appStore_restore;

  /// Restore backup dialog title.
  ///
  /// In en, this message translates to:
  /// **'Restore Backup'**
  String get appStore_restoreBackup;

  /// Restore backup failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to restore backup'**
  String get appStore_restoreBackupFailed;

  /// Delete backup dialog title.
  ///
  /// In en, this message translates to:
  /// **'Delete Backup'**
  String get appStore_deleteBackup;

  /// No description provided for @appStore_deleteBackupConfirm.
  ///
  /// In en, this message translates to:
  /// **'Delete backup file {fileName}? This action cannot be undone.'**
  String appStore_deleteBackupConfirm(String fileName);

  /// Backup deletion success toast.
  ///
  /// In en, this message translates to:
  /// **'Backup deleted'**
  String get appStore_deletedBackup;

  /// Backup deletion failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete backup'**
  String get appStore_deleteBackupFailed;

  /// Backup dialog confirm button.
  ///
  /// In en, this message translates to:
  /// **'Start Backup'**
  String get appStore_startBackup;

  /// Backup compression password placeholder.
  ///
  /// In en, this message translates to:
  /// **'Compression password (optional)'**
  String get appStore_compressionPasswordOptional;

  /// Backup description placeholder.
  ///
  /// In en, this message translates to:
  /// **'Description (optional)'**
  String get appStore_descriptionOptional;

  /// Restore dialog confirm button.
  ///
  /// In en, this message translates to:
  /// **'Start Restore'**
  String get appStore_startRestore;

  /// Restore backup password hint.
  ///
  /// In en, this message translates to:
  /// **'Leave blank if the backup has no compression password.'**
  String get appStore_restorePasswordHint;

  /// Restore password placeholder.
  ///
  /// In en, this message translates to:
  /// **'Restore password (optional)'**
  String get appStore_restorePasswordOptional;

  /// Install form validation message for empty name.
  ///
  /// In en, this message translates to:
  /// **'Name cannot be empty'**
  String get appStore_nameRequired;

  /// No description provided for @appStore_cpuLimitExceeded.
  ///
  /// In en, this message translates to:
  /// **'CPU limit exceeds system core count ({cpu} cores)'**
  String appStore_cpuLimitExceeded(num cpu);

  /// No description provided for @appStore_memoryLimitExceeded.
  ///
  /// In en, this message translates to:
  /// **'Memory limit exceeds system limit ({max} MB)'**
  String appStore_memoryLimitExceeded(num max);

  /// No description provided for @appStore_installingApp.
  ///
  /// In en, this message translates to:
  /// **'Installing {name}'**
  String appStore_installingApp(String name);

  /// No description provided for @appStore_installRequestFailed.
  ///
  /// In en, this message translates to:
  /// **'Install request failed: {error}'**
  String appStore_installRequestFailed(Object error);

  /// Install app sheet title.
  ///
  /// In en, this message translates to:
  /// **'Install App'**
  String get appStore_installApp;

  /// Install config load error title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load install configuration'**
  String get appStore_loadInstallConfigFailed;

  /// Install form basic settings section title.
  ///
  /// In en, this message translates to:
  /// **'Basic Settings'**
  String get appStore_basicSettings;

  /// Generic app install name field label.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get appStore_name;

  /// App runtime name placeholder.
  ///
  /// In en, this message translates to:
  /// **'App runtime name'**
  String get appStore_appRunNamePlaceholder;

  /// Advanced settings section title.
  ///
  /// In en, this message translates to:
  /// **'Advanced Settings'**
  String get appStore_advancedSettings;

  /// Container name field label.
  ///
  /// In en, this message translates to:
  /// **'Container Name'**
  String get appStore_containerName;

  /// Container name placeholder for automatic generation.
  ///
  /// In en, this message translates to:
  /// **'Leave blank to generate automatically'**
  String get appStore_autoGeneratedPlaceholder;

  /// External port access option label.
  ///
  /// In en, this message translates to:
  /// **'External Port Access'**
  String get appStore_externalPortAccess;

  /// External port access option subtitle.
  ///
  /// In en, this message translates to:
  /// **'Allowing external port access will try to open firewall ports'**
  String get appStore_externalPortAccessSubtitle;

  /// CPU limit field label.
  ///
  /// In en, this message translates to:
  /// **'CPU Limit'**
  String get appStore_cpuLimit;

  /// No description provided for @appStore_cpuMaxUnit.
  ///
  /// In en, this message translates to:
  /// **'cores (max {max})'**
  String appStore_cpuMaxUnit(num max);

  /// Memory limit field label.
  ///
  /// In en, this message translates to:
  /// **'Memory Limit'**
  String get appStore_memoryLimit;

  /// No description provided for @appStore_memoryMaxUnit.
  ///
  /// In en, this message translates to:
  /// **'MB (max {max})'**
  String appStore_memoryMaxUnit(num max);

  /// Container images and compose section title.
  ///
  /// In en, this message translates to:
  /// **'Container Images and Compose'**
  String get appStore_imageCompose;

  /// Pull image option label.
  ///
  /// In en, this message translates to:
  /// **'Pull Image'**
  String get appStore_pullImage;

  /// Pull image option subtitle.
  ///
  /// In en, this message translates to:
  /// **'Run docker pull before starting the app'**
  String get appStore_pullImageSubtitle;

  /// Edit compose option label.
  ///
  /// In en, this message translates to:
  /// **'Edit Compose'**
  String get appStore_editCompose;

  /// Edit compose option subtitle.
  ///
  /// In en, this message translates to:
  /// **'Enable this to manually adjust Docker Compose configuration'**
  String get appStore_editComposeSubtitle;

  /// Restart policy field label.
  ///
  /// In en, this message translates to:
  /// **'Restart Policy'**
  String get appStore_restartPolicy;

  /// Restart policy always option.
  ///
  /// In en, this message translates to:
  /// **'Always restart'**
  String get appStore_restartAlways;

  /// Restart policy no option.
  ///
  /// In en, this message translates to:
  /// **'Do not restart'**
  String get appStore_restartNo;

  /// Restart policy on-failure option.
  ///
  /// In en, this message translates to:
  /// **'Restart on failure'**
  String get appStore_restartOnFailure;

  /// Restart policy unless-stopped option.
  ///
  /// In en, this message translates to:
  /// **'Restart unless manually stopped'**
  String get appStore_restartUnlessStopped;

  /// Restart policy on-failure explanatory hint.
  ///
  /// In en, this message translates to:
  /// **'Note: restart when the container exits with a non-zero code, 5 retries by default'**
  String get appStore_restartOnFailureHint;

  /// Confirm update dialog title.
  ///
  /// In en, this message translates to:
  /// **'Confirm Update'**
  String get appStore_confirmUpdate;

  /// Confirm update dialog subtitle.
  ///
  /// In en, this message translates to:
  /// **'Updating parameters will rebuild the app container and may briefly interrupt service. Continue?'**
  String get appStore_confirmUpdateSubtitle;

  /// Continue action label.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get appStore_continue;

  /// Parameter update success toast.
  ///
  /// In en, this message translates to:
  /// **'Parameters updated. App is rebuilding.'**
  String get appStore_paramsUpdateSuccess;

  /// No description provided for @appStore_updateParamsFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to update parameters: {error}'**
  String appStore_updateParamsFailed(Object error);

  /// Parameter config load error title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load parameter configuration'**
  String get appStore_loadParamsConfigFailed;

  /// Basic parameters section title.
  ///
  /// In en, this message translates to:
  /// **'Basic Parameters'**
  String get appStore_basicParams;

  /// Container display name placeholder.
  ///
  /// In en, this message translates to:
  /// **'Container display name'**
  String get appStore_containerDisplayNamePlaceholder;

  /// Bind host IP field label.
  ///
  /// In en, this message translates to:
  /// **'Bind Host IP'**
  String get appStore_bindHostIp;

  /// Default empty IP placeholder.
  ///
  /// In en, this message translates to:
  /// **'Blank by default (0.0.0.0)'**
  String get appStore_defaultEmptyIpPlaceholder;

  /// No description provided for @appStore_loadVersionInfoFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to load version information: {error}'**
  String appStore_loadVersionInfoFailed(Object error);

  /// No description provided for @appStore_getVersionDetailsFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to get version details: {error}'**
  String appStore_getVersionDetailsFailed(Object error);

  /// No description provided for @appStore_updateAppTaskTitle.
  ///
  /// In en, this message translates to:
  /// **'Update App: {name}'**
  String appStore_updateAppTaskTitle(String name);

  /// No description provided for @appStore_upgradeTaskFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to submit upgrade task: {error}'**
  String appStore_upgradeTaskFailed(Object error);

  /// Upgrade target version section title.
  ///
  /// In en, this message translates to:
  /// **'Target Version'**
  String get appStore_targetVersion;

  /// Upgrade options section title.
  ///
  /// In en, this message translates to:
  /// **'Upgrade Options'**
  String get appStore_upgradeOptions;

  /// Backup before upgrade option label.
  ///
  /// In en, this message translates to:
  /// **'Back up app before upgrade'**
  String get appStore_backupBeforeUpgrade;

  /// Backup before upgrade option subtitle.
  ///
  /// In en, this message translates to:
  /// **'If the upgrade fails, the backup will be used for automatic rollback. Check Audit Logs - System Logs for the failure reason.'**
  String get appStore_backupBeforeUpgradeSubtitle;

  /// Custom docker compose option label.
  ///
  /// In en, this message translates to:
  /// **'Custom docker-compose.yml'**
  String get appStore_customCompose;

  /// Custom docker compose option subtitle.
  ///
  /// In en, this message translates to:
  /// **'Use a custom docker-compose.yml file. This may cause app upgrade failure. Avoid it unless necessary.'**
  String get appStore_customComposeSubtitle;

  /// Docker compose content section title.
  ///
  /// In en, this message translates to:
  /// **'Docker Compose Content'**
  String get appStore_dockerComposeContent;

  /// Upgrade now button label.
  ///
  /// In en, this message translates to:
  /// **'Upgrade Now'**
  String get appStore_upgradeNow;

  /// Relative SSL certificate expiry label.
  ///
  /// In en, this message translates to:
  /// **'{time} expires'**
  String websites_sslExpiresRelative(String time);

  /// Runtime website validation when primary domain or alias is empty.
  ///
  /// In en, this message translates to:
  /// **'Primary domain and alias are required'**
  String get websites_primaryDomainAliasRequired;

  /// Runtime website validation when no runtime is selected.
  ///
  /// In en, this message translates to:
  /// **'Select a runtime'**
  String get websites_selectRuntime;

  /// Runtime website validation when SSL is enabled without certificate.
  ///
  /// In en, this message translates to:
  /// **'Select a certificate after enabling SSL'**
  String get websites_sslCertificateRequired;

  /// Runtime website validation when FTP is enabled without account.
  ///
  /// In en, this message translates to:
  /// **'Enter an FTP account after enabling FTP'**
  String get websites_ftpAccountRequired;

  /// Runtime website validation when no runtime port is selected.
  ///
  /// In en, this message translates to:
  /// **'Select a port'**
  String get websites_selectPort;

  /// Runtime website validation when no database service is selected.
  ///
  /// In en, this message translates to:
  /// **'Select a database service'**
  String get websites_selectDatabaseService;

  /// Reverse proxy validation when proxy address is empty.
  ///
  /// In en, this message translates to:
  /// **'Proxy address is required'**
  String get websites_proxyAddressRequired;

  /// Website create validation when alias is empty.
  ///
  /// In en, this message translates to:
  /// **'Alias is required'**
  String get websites_aliasRequired;

  /// TCP/UDP proxy validation when listening port is empty.
  ///
  /// In en, this message translates to:
  /// **'Listening port is required'**
  String get websites_streamPortsRequired;

  /// TCP/UDP proxy validation when backend server list is empty.
  ///
  /// In en, this message translates to:
  /// **'At least one backend server is required'**
  String get websites_backendServerRequired;

  /// TCP/UDP proxy validation when a server address is empty.
  ///
  /// In en, this message translates to:
  /// **'Server address is required'**
  String get websites_serverAddressRequired;

  /// Runtime website validation when database name is empty.
  ///
  /// In en, this message translates to:
  /// **'Enter a database name'**
  String get websites_databaseNameRequired;

  /// Runtime website validation when database username is empty.
  ///
  /// In en, this message translates to:
  /// **'Enter a database username'**
  String get websites_databaseUsernameRequired;

  /// Runtime website validation when database password is empty.
  ///
  /// In en, this message translates to:
  /// **'Enter a database password'**
  String get websites_databasePasswordRequired;

  /// Website creation success toast title.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get websites_createSuccess;

  /// Runtime website creation success toast description.
  ///
  /// In en, this message translates to:
  /// **'Runtime website {alias} ({domain}) has been added'**
  String websites_runtimeSiteCreated(String alias, String domain);

  /// Static website creation success toast description.
  ///
  /// In en, this message translates to:
  /// **'Static website {alias} ({domain}) has been added'**
  String websites_staticSiteCreated(String alias, String domain);

  /// Reverse proxy creation success toast description.
  ///
  /// In en, this message translates to:
  /// **'Reverse proxy {alias} ({domain}) has been added'**
  String websites_proxySiteCreated(String alias, String domain);

  /// TCP/UDP proxy creation success toast description.
  ///
  /// In en, this message translates to:
  /// **'TCP/UDP proxy {alias} has been added'**
  String websites_tunnelSiteCreated(String alias);

  /// Website creation failure toast title.
  ///
  /// In en, this message translates to:
  /// **'Create failed'**
  String get websites_createFailed;

  /// Generic website retry later message.
  ///
  /// In en, this message translates to:
  /// **'Please try again later'**
  String get websites_tryAgainLater;

  /// Generic website warning toast title.
  ///
  /// In en, this message translates to:
  /// **'Notice'**
  String get websites_notice;

  /// Create runtime website page title.
  ///
  /// In en, this message translates to:
  /// **'New Runtime Website'**
  String get websites_createRuntimeSite;

  /// Create static website page title.
  ///
  /// In en, this message translates to:
  /// **'New Static Website'**
  String get websites_createStaticSite;

  /// Create reverse proxy website page title.
  ///
  /// In en, this message translates to:
  /// **'New Reverse Proxy'**
  String get websites_createProxySite;

  /// Create TCP/UDP proxy page title.
  ///
  /// In en, this message translates to:
  /// **'New TCP/UDP Proxy'**
  String get websites_createTunnelSite;

  /// Website create basic configuration section title.
  ///
  /// In en, this message translates to:
  /// **'Basic Configuration'**
  String get websites_basicConfig;

  /// Website primary domain field label.
  ///
  /// In en, this message translates to:
  /// **'Primary Domain'**
  String get websites_primaryDomain;

  /// Website alias field label.
  ///
  /// In en, this message translates to:
  /// **'Alias'**
  String get websites_alias;

  /// Website alias placeholder.
  ///
  /// In en, this message translates to:
  /// **'Website directory folder name (cannot be changed after creation)'**
  String get websites_aliasPlaceholder;

  /// Website root path hint.
  ///
  /// In en, this message translates to:
  /// **'Relative to root directory: {path}/'**
  String websites_relativeToRoot(String path);

  /// Website group field label.
  ///
  /// In en, this message translates to:
  /// **'Group'**
  String get websites_group;

  /// Website HTTP port field label.
  ///
  /// In en, this message translates to:
  /// **'HTTP Port'**
  String get websites_httpPort;

  /// Website runtime exposed port field label.
  ///
  /// In en, this message translates to:
  /// **'Port'**
  String get websites_port;

  /// Website runtime section and field label.
  ///
  /// In en, this message translates to:
  /// **'Runtime'**
  String get websites_runtime;

  /// Create database switch label on website create form.
  ///
  /// In en, this message translates to:
  /// **'Create Database'**
  String get websites_createDatabase;

  /// Database service field label on website create form.
  ///
  /// In en, this message translates to:
  /// **'Database Service'**
  String get websites_databaseService;

  /// Database name field label on website create form.
  ///
  /// In en, this message translates to:
  /// **'Database Name'**
  String get websites_databaseName;

  /// SSL and access section title on website create form.
  ///
  /// In en, this message translates to:
  /// **'SSL & Access'**
  String get websites_sslAndAccess;

  /// Reverse proxy create settings section title.
  ///
  /// In en, this message translates to:
  /// **'Reverse Proxy Settings'**
  String get websites_proxySettings;

  /// Reverse proxy protocol field label.
  ///
  /// In en, this message translates to:
  /// **'Protocol'**
  String get websites_protocol;

  /// Reverse proxy address field label.
  ///
  /// In en, this message translates to:
  /// **'Proxy Address'**
  String get websites_proxyAddress;

  /// TCP/UDP proxy alias placeholder.
  ///
  /// In en, this message translates to:
  /// **'Load balancing name (cannot be changed after creation)'**
  String get websites_loadBalancingNamePlaceholder;

  /// TCP/UDP proxy listening port field label.
  ///
  /// In en, this message translates to:
  /// **'Listening Port'**
  String get websites_listeningPort;

  /// TCP/UDP proxy listening port placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. 3306 or 3306,3307,3308'**
  String get websites_listeningPortPlaceholder;

  /// TCP/UDP proxy UDP mode switch label.
  ///
  /// In en, this message translates to:
  /// **'UDP Mode'**
  String get websites_udpMode;

  /// TCP/UDP proxy load balancing section title.
  ///
  /// In en, this message translates to:
  /// **'Load Balancing'**
  String get websites_loadBalancing;

  /// TCP/UDP proxy load balancing algorithm field label.
  ///
  /// In en, this message translates to:
  /// **'Load Balancing Algorithm'**
  String get websites_loadBalancingAlgorithm;

  /// TCP/UDP proxy round robin algorithm option.
  ///
  /// In en, this message translates to:
  /// **'Round Robin'**
  String get websites_roundRobin;

  /// TCP/UDP proxy least connections algorithm option.
  ///
  /// In en, this message translates to:
  /// **'Least Connections'**
  String get websites_leastConnections;

  /// TCP/UDP proxy backend server normal status option.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get websites_statusNormal;

  /// TCP/UDP proxy backend server stopped status option.
  ///
  /// In en, this message translates to:
  /// **'Stopped'**
  String get websites_statusDown;

  /// TCP/UDP proxy backend server backup status option.
  ///
  /// In en, this message translates to:
  /// **'Backup'**
  String get websites_statusBackup;

  /// TCP/UDP proxy backend server card title.
  ///
  /// In en, this message translates to:
  /// **'Server {index}'**
  String websites_serverNumber(int index);

  /// TCP/UDP proxy backend server weight field label.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get websites_weight;

  /// TCP/UDP proxy backend server status field label.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get websites_status;

  /// TCP/UDP proxy add backend server button.
  ///
  /// In en, this message translates to:
  /// **'Add Server'**
  String get websites_addServer;

  /// Generic add action label for website forms.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get websites_add;

  /// Reverse proxy editor required field validation.
  ///
  /// In en, this message translates to:
  /// **'Name, frontend path, backend proxy address, and backend domain are required'**
  String get websites_proxyRequiredFields;

  /// Reverse proxy editor backend URL validation.
  ///
  /// In en, this message translates to:
  /// **'Backend proxy address must be a reachable http:// or https:// URL'**
  String get websites_proxyUrlInvalid;

  /// Reverse proxy editor CORS origins validation.
  ///
  /// In en, this message translates to:
  /// **'Allowed origins are required after enabling CORS'**
  String get websites_corsOriginsRequired;

  /// Reverse proxy editor server cache validation.
  ///
  /// In en, this message translates to:
  /// **'Server cache time must be greater than 0'**
  String get websites_serverCacheTimePositive;

  /// Reverse proxy editor browser cache validation.
  ///
  /// In en, this message translates to:
  /// **'Browser cache time must be greater than 0'**
  String get websites_browserCacheTimePositive;

  /// Reverse proxy create success toast.
  ///
  /// In en, this message translates to:
  /// **'Reverse proxy created'**
  String get websites_proxyCreated;

  /// Reverse proxy update success toast.
  ///
  /// In en, this message translates to:
  /// **'Reverse proxy updated'**
  String get websites_proxyUpdated;

  /// Save failure toast title with copy hint.
  ///
  /// In en, this message translates to:
  /// **'Save failed (tap to copy details)'**
  String get websites_saveFailedCopyDetails;

  /// Reverse proxy editor edit page title.
  ///
  /// In en, this message translates to:
  /// **'Edit Reverse Proxy'**
  String get websites_editReverseProxy;

  /// Reverse proxy editor create page title.
  ///
  /// In en, this message translates to:
  /// **'New Reverse Proxy'**
  String get websites_newReverseProxy;

  /// Website form name field label.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get websites_name;

  /// Reverse proxy editor name hint.
  ///
  /// In en, this message translates to:
  /// **'e.g. api-proxy'**
  String get websites_proxyNameHint;

  /// Reverse proxy editor locked name helper.
  ///
  /// In en, this message translates to:
  /// **'Name cannot be changed in edit mode'**
  String get websites_editNameLocked;

  /// Reverse proxy editor match rule field label.
  ///
  /// In en, this message translates to:
  /// **'Match Rule'**
  String get websites_matchRule;

  /// Reverse proxy editor match rule hint.
  ///
  /// In en, this message translates to:
  /// **'Leave blank for default, or enter = / ^~ / ~ / ~*'**
  String get websites_matchRuleHint;

  /// Reverse proxy editor match rule helper.
  ///
  /// In en, this message translates to:
  /// **'Example: = exact match, ^~ prefix priority, ~ regex match'**
  String get websites_matchRuleHelper;

  /// Reverse proxy editor frontend request path field label.
  ///
  /// In en, this message translates to:
  /// **'Frontend Path'**
  String get websites_frontendPath;

  /// Reverse proxy editor frontend path hint.
  ///
  /// In en, this message translates to:
  /// **'e.g. /api'**
  String get websites_frontendPathHint;

  /// Reverse proxy editor backend proxy address field label.
  ///
  /// In en, this message translates to:
  /// **'Backend Proxy Address'**
  String get websites_backendProxyAddress;

  /// Reverse proxy editor backend domain field label.
  ///
  /// In en, this message translates to:
  /// **'Backend Domain'**
  String get websites_backendDomain;

  /// Reverse proxy editor backend domain helper.
  ///
  /// In en, this message translates to:
  /// **'Default \$host passes the domain through to the backend'**
  String get websites_backendDomainHelper;

  /// Reverse proxy editor cache settings section title.
  ///
  /// In en, this message translates to:
  /// **'Cache Settings'**
  String get websites_cacheSettings;

  /// Reverse proxy editor server cache time label.
  ///
  /// In en, this message translates to:
  /// **'Server Cache Time'**
  String get websites_serverCacheTime;

  /// Reverse proxy editor browser cache time label.
  ///
  /// In en, this message translates to:
  /// **'Browser Cache Time'**
  String get websites_browserCacheTime;

  /// Reverse proxy editor enable CORS switch label.
  ///
  /// In en, this message translates to:
  /// **'Enable CORS'**
  String get websites_enableCors;

  /// CORS sheet allowed origins required warning.
  ///
  /// In en, this message translates to:
  /// **'Enter allowed domains'**
  String get websites_allowedOriginsRequired;

  /// CORS sheet save success toast.
  ///
  /// In en, this message translates to:
  /// **'CORS configuration saved'**
  String get websites_corsSaved;

  /// CORS sheet load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load CORS configuration'**
  String get websites_loadCorsConfigFailed;

  /// CORS sheet basic settings section title.
  ///
  /// In en, this message translates to:
  /// **'Basic Settings'**
  String get websites_basicSettings;

  /// CORS sheet enable access switch label.
  ///
  /// In en, this message translates to:
  /// **'Enable CORS Access'**
  String get websites_enableCorsAccess;

  /// CORS sheet allow origins placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter allowed domains. * means all'**
  String get websites_allowOriginsPlaceholder;

  /// CORS sheet allow origin hint.
  ///
  /// In en, this message translates to:
  /// **'Access-Control-Allow-Origin, e.g. * or https://example.com'**
  String get websites_allowOriginHint;

  /// CORS sheet allow methods section title.
  ///
  /// In en, this message translates to:
  /// **'Request Methods (allow_methods)'**
  String get websites_allowMethods;

  /// CORS sheet allow methods hint.
  ///
  /// In en, this message translates to:
  /// **'Access-Control-Allow-Methods. Leave blank to allow all methods.'**
  String get websites_allowMethodsHint;

  /// CORS sheet allow headers section title.
  ///
  /// In en, this message translates to:
  /// **'Allowed Request Headers (allow_headers)'**
  String get websites_allowHeaders;

  /// CORS sheet allow headers placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter custom allowed request headers, separated by commas'**
  String get websites_allowHeadersPlaceholder;

  /// CORS sheet allow headers hint.
  ///
  /// In en, this message translates to:
  /// **'Access-Control-Allow-Headers. Leave blank to allow common headers.'**
  String get websites_allowHeadersHint;

  /// CORS sheet allow credentials switch label.
  ///
  /// In en, this message translates to:
  /// **'Allow Credentials (Cookies)'**
  String get websites_allowCredentialsCookies;

  /// CORS sheet preflight fast response hint.
  ///
  /// In en, this message translates to:
  /// **'Return 204 directly for OPTIONS preflight requests instead of forwarding to the backend.'**
  String get websites_preflightFastResponseHint;

  /// Reverse proxy editor allowed origins field label.
  ///
  /// In en, this message translates to:
  /// **'Allowed Origins'**
  String get websites_allowedOrigins;

  /// Reverse proxy editor allowed origins hint.
  ///
  /// In en, this message translates to:
  /// **'* or https://example.com'**
  String get websites_allowedOriginsHint;

  /// Reverse proxy editor allowed headers field label.
  ///
  /// In en, this message translates to:
  /// **'Allowed Headers'**
  String get websites_allowedHeaders;

  /// Reverse proxy editor allow cookies switch label.
  ///
  /// In en, this message translates to:
  /// **'Allow Cookies'**
  String get websites_allowCredentials;

  /// Reverse proxy editor preflight fast response switch label.
  ///
  /// In en, this message translates to:
  /// **'Fast Preflight Response (OPTIONS 204)'**
  String get websites_preflightFastResponse;

  /// Reverse proxy editor text replacement section title.
  ///
  /// In en, this message translates to:
  /// **'Text Replacement'**
  String get websites_textReplacement;

  /// Reverse proxy editor empty replacement rules hint.
  ///
  /// In en, this message translates to:
  /// **'No replacement rules'**
  String get websites_noReplaceRules;

  /// Generic not set label in website sheets.
  ///
  /// In en, this message translates to:
  /// **'Not set'**
  String get websites_notSet;

  /// Website list never expires label.
  ///
  /// In en, this message translates to:
  /// **'Never expires'**
  String get websites_neverExpires;

  /// Website list SSL expiry in years.
  ///
  /// In en, this message translates to:
  /// **'Expires in {n} years'**
  String websites_expiresInYears(int n);

  /// Website list SSL expiry in months.
  ///
  /// In en, this message translates to:
  /// **'Expires in {n} months'**
  String websites_expiresInMonths(int n);

  /// Website list SSL expiry in days.
  ///
  /// In en, this message translates to:
  /// **'Expires in {n} days'**
  String websites_expiresInDays(int n);

  /// Website list SSL expiry in hours.
  ///
  /// In en, this message translates to:
  /// **'Expires in {n} hours'**
  String websites_expiresInHours(int n);

  /// Website list SSL expiry in minutes.
  ///
  /// In en, this message translates to:
  /// **'Expires in {n} minutes'**
  String websites_expiresInMinutes(int n);

  /// Website list SSL expired years ago.
  ///
  /// In en, this message translates to:
  /// **'Expired {n} years ago'**
  String websites_expiredYearsAgo(int n);

  /// Website list SSL expired months ago.
  ///
  /// In en, this message translates to:
  /// **'Expired {n} months ago'**
  String websites_expiredMonthsAgo(int n);

  /// Website list SSL expired days ago.
  ///
  /// In en, this message translates to:
  /// **'Expired {n} days ago'**
  String websites_expiredDaysAgo(int n);

  /// Website list SSL expired hours ago.
  ///
  /// In en, this message translates to:
  /// **'Expired {n} hours ago'**
  String websites_expiredHoursAgo(int n);

  /// Website list SSL expired minutes ago.
  ///
  /// In en, this message translates to:
  /// **'Expired {n} minutes ago'**
  String websites_expiredMinutesAgo(int n);

  /// Website list SSL just expired label.
  ///
  /// In en, this message translates to:
  /// **'Just expired'**
  String get websites_justExpired;

  /// Website list SSL expiring soon label.
  ///
  /// In en, this message translates to:
  /// **'Expiring soon'**
  String get websites_expiringSoon;

  /// Website type label for static websites.
  ///
  /// In en, this message translates to:
  /// **'Static Website'**
  String get websites_staticWebsite;

  /// Website type label for runtime websites.
  ///
  /// In en, this message translates to:
  /// **'Runtime'**
  String get websites_runtimeWebsite;

  /// Generic website type fallback label.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get websites_website;

  /// Website status running label.
  ///
  /// In en, this message translates to:
  /// **'Running'**
  String get websites_statusRunning;

  /// Website status stopped label.
  ///
  /// In en, this message translates to:
  /// **'Stopped'**
  String get websites_statusStopped;

  /// Website status starting label.
  ///
  /// In en, this message translates to:
  /// **'Starting'**
  String get websites_statusStarting;

  /// Website status restarting label.
  ///
  /// In en, this message translates to:
  /// **'Restarting'**
  String get websites_statusRestarting;

  /// Website status error label.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get websites_statusError;

  /// SSL status expired label.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get websites_statusExpired;

  /// SSL status pending apply label.
  ///
  /// In en, this message translates to:
  /// **'Pending Apply'**
  String get websites_statusPendingApply;

  /// SSL status applying label.
  ///
  /// In en, this message translates to:
  /// **'Applying'**
  String get websites_statusApplying;

  /// SSL status apply failed label.
  ///
  /// In en, this message translates to:
  /// **'Apply Failed'**
  String get websites_statusApplyFailed;

  /// SSL status system restart interrupted label.
  ///
  /// In en, this message translates to:
  /// **'Restart Interrupted'**
  String get websites_statusRestartInterrupted;

  /// Generic unknown label in website sheets.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get websites_unknown;

  /// SSL provider label for DNS account validation.
  ///
  /// In en, this message translates to:
  /// **'DNS Auto Validation'**
  String get websites_dnsAutoValidation;

  /// SSL provider label for manual DNS validation.
  ///
  /// In en, this message translates to:
  /// **'DNS Manual Validation'**
  String get websites_dnsManualValidation;

  /// SSL provider label for manual import.
  ///
  /// In en, this message translates to:
  /// **'Manual Import'**
  String get websites_manualImport;

  /// SSL provider label for self-signed certificate.
  ///
  /// In en, this message translates to:
  /// **'Self-Signed Certificate'**
  String get websites_selfSignedCertificate;

  /// SSL provider label for master node push.
  ///
  /// In en, this message translates to:
  /// **'Master Node Push'**
  String get websites_masterNodePush;

  /// Fallback SSL certificate label.
  ///
  /// In en, this message translates to:
  /// **'SSL Certificate'**
  String get websites_sslCertificate;

  /// Website list external browser launch failure toast.
  ///
  /// In en, this message translates to:
  /// **'Unable to open external browser'**
  String get websites_openBrowserFailed;

  /// Website list unnamed website fallback.
  ///
  /// In en, this message translates to:
  /// **'Unnamed website'**
  String get websites_unnamedWebsite;

  /// Website list directory missing fallback.
  ///
  /// In en, this message translates to:
  /// **'Directory not set'**
  String get websites_directoryNotSet;

  /// Website list empty remark fallback.
  ///
  /// In en, this message translates to:
  /// **'No remark'**
  String get websites_noRemark;

  /// Website list SSL disabled toast title.
  ///
  /// In en, this message translates to:
  /// **'SSL Not Enabled'**
  String get websites_sslDisabledTitle;

  /// Website list SSL disabled toast message.
  ///
  /// In en, this message translates to:
  /// **'SSL is not enabled for this website.'**
  String get websites_sslDisabledMessage;

  /// Website list SSL expired toast title.
  ///
  /// In en, this message translates to:
  /// **'SSL Expired'**
  String get websites_sslExpiredTitle;

  /// Website list SSL expired toast message.
  ///
  /// In en, this message translates to:
  /// **'Certificate {time}.'**
  String websites_sslExpiredMessage(String time);

  /// Website list SSL expiry unknown label.
  ///
  /// In en, this message translates to:
  /// **'Certificate expiry time was not fetched'**
  String get websites_sslExpiryUnknown;

  /// Website list SSL enabled toast title.
  ///
  /// In en, this message translates to:
  /// **'SSL Enabled'**
  String get websites_sslEnabledTitle;

  /// Website list SSL enabled toast message.
  ///
  /// In en, this message translates to:
  /// **'Certificate {time}.'**
  String websites_sslEnabledMessage(String time);

  /// Anti-leech form enable switch label.
  ///
  /// In en, this message translates to:
  /// **'Enable Anti-Leech'**
  String get websites_enableAntiLeech;

  /// Anti-leech form extension settings section title.
  ///
  /// In en, this message translates to:
  /// **'Extension Settings'**
  String get websites_extensionSettings;

  /// Anti-leech form extension settings hint.
  ///
  /// In en, this message translates to:
  /// **'Select or enter protected file extensions, separated by commas'**
  String get websites_extensionSettingsHint;

  /// Anti-leech form custom extension placeholder.
  ///
  /// In en, this message translates to:
  /// **'Custom extension, e.g. mp4'**
  String get websites_customExtensionHint;

  /// Anti-leech form custom protection label.
  ///
  /// In en, this message translates to:
  /// **'Custom protection:'**
  String get websites_customProtection;

  /// Anti-leech form allowed domains section title.
  ///
  /// In en, this message translates to:
  /// **'Allowed Domains'**
  String get websites_allowedDomains;

  /// Anti-leech form allowed domains hint.
  ///
  /// In en, this message translates to:
  /// **'Set allowed domains. Wildcards are supported, such as *.example.com'**
  String get websites_allowedDomainsHint;

  /// Anti-leech form domain input placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter domain and add'**
  String get websites_addDomainHint;

  /// Anti-leech form empty allowed domains label.
  ///
  /// In en, this message translates to:
  /// **'No allowed domains added'**
  String get websites_noAllowedDomains;

  /// Anti-leech form rule control section title.
  ///
  /// In en, this message translates to:
  /// **'Rule Control'**
  String get websites_ruleControl;

  /// Anti-leech form allow empty Referer switch.
  ///
  /// In en, this message translates to:
  /// **'Allow empty Referer'**
  String get websites_allowEmptyReferer;

  /// Anti-leech form allow non-standard Referer switch.
  ///
  /// In en, this message translates to:
  /// **'Allow non-standard Referer'**
  String get websites_allowNonStandardReferer;

  /// Anti-leech form blocked response field label.
  ///
  /// In en, this message translates to:
  /// **'Blocked Response'**
  String get websites_blockedResponse;

  /// Anti-leech form blocked response helper.
  ///
  /// In en, this message translates to:
  /// **'Status code returned by the server when a request is blocked.'**
  String get websites_blockedResponseHint;

  /// Anti-leech form performance and logs section title.
  ///
  /// In en, this message translates to:
  /// **'Performance & Logs'**
  String get websites_performanceAndLogs;

  /// OpenResty performance sheet load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load performance settings'**
  String get websites_loadPerformanceSettingsFailed;

  /// OpenResty performance sheet title.
  ///
  /// In en, this message translates to:
  /// **'Performance Tuning'**
  String get websites_performanceTuning;

  /// OpenResty performance sheet subtitle.
  ///
  /// In en, this message translates to:
  /// **'Tune global OpenResty performance parameters'**
  String get websites_openRestyPerformanceSubtitle;

  /// OpenResty status sheet load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to get runtime status'**
  String get websites_getRuntimeStatusFailed;

  /// OpenResty status sheet title.
  ///
  /// In en, this message translates to:
  /// **'Runtime Status'**
  String get websites_runtimeStatus;

  /// OpenResty status sheet subtitle.
  ///
  /// In en, this message translates to:
  /// **'OpenResty service realtime metrics'**
  String get websites_openRestyRealtimeMetrics;

  /// OpenResty status sheet activity metrics section title.
  ///
  /// In en, this message translates to:
  /// **'Activity Metrics'**
  String get websites_activityMetrics;

  /// OpenResty status sheet active connections row title.
  ///
  /// In en, this message translates to:
  /// **'Active Connections'**
  String get websites_activeConnections;

  /// OpenResty status sheet active connections row subtitle.
  ///
  /// In en, this message translates to:
  /// **'Current active client connections'**
  String get websites_currentActiveClientConnections;

  /// OpenResty status sheet request statistics section title.
  ///
  /// In en, this message translates to:
  /// **'Request Statistics'**
  String get websites_requestStats;

  /// OpenResty status sheet total connections label.
  ///
  /// In en, this message translates to:
  /// **'Total Connections'**
  String get websites_totalConnections;

  /// OpenResty status sheet total handshakes label.
  ///
  /// In en, this message translates to:
  /// **'Total Handshakes'**
  String get websites_totalHandshakes;

  /// OpenResty status sheet total requests label.
  ///
  /// In en, this message translates to:
  /// **'Total Requests'**
  String get websites_totalRequests;

  /// OpenResty status sheet connection details section title.
  ///
  /// In en, this message translates to:
  /// **'Connection Details'**
  String get websites_connectionDetails;

  /// OpenResty status sheet reading subtitle.
  ///
  /// In en, this message translates to:
  /// **'Reading client request headers'**
  String get websites_readingClientRequestHeaders;

  /// OpenResty status sheet writing subtitle.
  ///
  /// In en, this message translates to:
  /// **'Writing response back to client'**
  String get websites_writingResponseToClient;

  /// OpenResty status sheet waiting subtitle.
  ///
  /// In en, this message translates to:
  /// **'Idle waiting state'**
  String get websites_idleWaitingState;

  /// OpenResty status sheet generic row subtitle.
  ///
  /// In en, this message translates to:
  /// **'Realtime monitoring metric'**
  String get websites_realtimeMetric;

  /// OpenResty performance sheet server settings section title.
  ///
  /// In en, this message translates to:
  /// **'Server Settings'**
  String get websites_serverSettings;

  /// OpenResty performance sheet server names hash bucket size label.
  ///
  /// In en, this message translates to:
  /// **'Server names hash bucket size'**
  String get websites_serverNamesHashBucketSize;

  /// OpenResty performance sheet client settings section title.
  ///
  /// In en, this message translates to:
  /// **'Client Settings'**
  String get websites_clientSettings;

  /// OpenResty performance sheet client header buffer size label.
  ///
  /// In en, this message translates to:
  /// **'Client request header buffer size'**
  String get websites_clientHeaderBufferSize;

  /// OpenResty performance sheet max upload file label.
  ///
  /// In en, this message translates to:
  /// **'Maximum upload file'**
  String get websites_maxUploadFile;

  /// OpenResty performance sheet keepalive timeout label.
  ///
  /// In en, this message translates to:
  /// **'Connection timeout'**
  String get websites_keepaliveTimeout;

  /// OpenResty performance sheet gzip section title.
  ///
  /// In en, this message translates to:
  /// **'Gzip Compression'**
  String get websites_gzipCompression;

  /// OpenResty performance sheet gzip toggle label.
  ///
  /// In en, this message translates to:
  /// **'Enable compressed transfer'**
  String get websites_enableCompressionTransfer;

  /// OpenResty performance sheet gzip minimum file label.
  ///
  /// In en, this message translates to:
  /// **'Minimum compression file'**
  String get websites_minCompressionFile;

  /// OpenResty performance sheet compression level label.
  ///
  /// In en, this message translates to:
  /// **'Compression level'**
  String get websites_compressionLevel;

  /// Anti-leech form browser cache switch label.
  ///
  /// In en, this message translates to:
  /// **'Browser Cache'**
  String get websites_browserCache;

  /// Proxy form server cache field label.
  ///
  /// In en, this message translates to:
  /// **'Server Cache'**
  String get websites_serverCache;

  /// Reverse proxy list cache summary value.
  ///
  /// In en, this message translates to:
  /// **'{label}: {value}'**
  String websites_cacheValue(String label, String value);

  /// Reverse proxy list backend address label.
  ///
  /// In en, this message translates to:
  /// **'Backend Address'**
  String get websites_backendAddress;

  /// Reverse proxy list cache label.
  ///
  /// In en, this message translates to:
  /// **'Cache'**
  String get websites_cache;

  /// Reverse proxy empty state title.
  ///
  /// In en, this message translates to:
  /// **'No reverse proxy'**
  String get websites_noReverseProxy;

  /// Reverse proxy empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap + in the upper-right corner to create a reverse proxy rule'**
  String get websites_createReverseProxyHint;

  /// Generic create now action label.
  ///
  /// In en, this message translates to:
  /// **'Create Now'**
  String get websites_createNow;

  /// Proxy form cache option to leave server configuration unchanged.
  ///
  /// In en, this message translates to:
  /// **'Do Not Modify'**
  String get websites_noModify;

  /// Proxy form allowed methods field label.
  ///
  /// In en, this message translates to:
  /// **'Allowed Methods'**
  String get websites_allowedMethods;

  /// Proxy form response replacement search placeholder.
  ///
  /// In en, this message translates to:
  /// **'Search string'**
  String get websites_searchString;

  /// Proxy form response replacement value placeholder.
  ///
  /// In en, this message translates to:
  /// **'Replace with string'**
  String get websites_replaceWithString;

  /// Anti-leech form cache time label.
  ///
  /// In en, this message translates to:
  /// **'Cache Time'**
  String get websites_cacheTime;

  /// Anti-leech form request log switch label.
  ///
  /// In en, this message translates to:
  /// **'Record Request Logs'**
  String get websites_recordRequestLogs;

  /// Anti-leech validation when no extension is selected.
  ///
  /// In en, this message translates to:
  /// **'Select or enter at least one extension'**
  String get websites_extensionRequired;

  /// Anti-leech validation when allowed domains are empty.
  ///
  /// In en, this message translates to:
  /// **'Enter at least one allowed domain'**
  String get websites_allowedDomainRequired;

  /// Anti-leech cache time validation.
  ///
  /// In en, this message translates to:
  /// **'Cache time must be greater than 0'**
  String get websites_cacheTimePositive;

  /// Anti-leech save success toast.
  ///
  /// In en, this message translates to:
  /// **'Anti-leech configuration saved'**
  String get websites_antiLeechSaved;

  /// Generic website save failure toast title.
  ///
  /// In en, this message translates to:
  /// **'Save failed'**
  String get websites_saveFailed;

  /// Generic website update failure toast title.
  ///
  /// In en, this message translates to:
  /// **'Update failed'**
  String get websites_updateFailed;

  /// Generic website delete failure toast title.
  ///
  /// In en, this message translates to:
  /// **'Delete failed'**
  String get websites_deleteFailed;

  /// Anti-leech load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load anti-leech configuration'**
  String get websites_loadAntiLeechFailed;

  /// Other settings load website groups failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load website groups'**
  String get websites_loadGroupsFailed;

  /// Website other settings sheet title.
  ///
  /// In en, this message translates to:
  /// **'Other Settings'**
  String get websites_otherSettings;

  /// Website default marker label.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get websites_default;

  /// Website other settings website name field label.
  ///
  /// In en, this message translates to:
  /// **'Website Name'**
  String get websites_websiteName;

  /// Website other settings website alias field label.
  ///
  /// In en, this message translates to:
  /// **'Website Alias'**
  String get websites_websiteAlias;

  /// Website directory sheet load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load website directory'**
  String get websites_loadWebsiteDirectoryFailed;

  /// Website directory sheet title.
  ///
  /// In en, this message translates to:
  /// **'Website Directory'**
  String get websites_websiteDirectory;

  /// Website directory sheet subtitle.
  ///
  /// In en, this message translates to:
  /// **'Runtime directory, permissions, and directory structure'**
  String get websites_directorySubtitle;

  /// Website directory sheet root directory row title.
  ///
  /// In en, this message translates to:
  /// **'Root Directory'**
  String get websites_rootDirectory;

  /// Website directory sheet runtime directory section title.
  ///
  /// In en, this message translates to:
  /// **'Runtime Directory'**
  String get websites_runningDirectory;

  /// Website directory sheet runtime user and group section title.
  ///
  /// In en, this message translates to:
  /// **'Runtime User / Group'**
  String get websites_runningUserGroup;

  /// Website directory sheet user group field label.
  ///
  /// In en, this message translates to:
  /// **'User Group'**
  String get websites_userGroup;

  /// Website directory sheet save permissions button.
  ///
  /// In en, this message translates to:
  /// **'Save Permissions'**
  String get websites_savePermissions;

  /// Website directory sheet runtime user and group required warning.
  ///
  /// In en, this message translates to:
  /// **'Enter runtime user and user group'**
  String get websites_runningUserGroupRequired;

  /// Website directory sheet directory description section title.
  ///
  /// In en, this message translates to:
  /// **'Directory Description'**
  String get websites_directoryDescription;

  /// Website directory sheet ssl directory description.
  ///
  /// In en, this message translates to:
  /// **'Website certificates'**
  String get websites_siteCertificates;

  /// Website directory sheet log directory description.
  ///
  /// In en, this message translates to:
  /// **'Website logs'**
  String get websites_siteLogs;

  /// Website directory sheet index directory description.
  ///
  /// In en, this message translates to:
  /// **'Website root directory, static website code, or PHP runtime entry'**
  String get websites_indexDirectoryDescription;

  /// Website other settings website alias placeholder.
  ///
  /// In en, this message translates to:
  /// **'Website directory name or alias'**
  String get websites_websiteAliasPlaceholder;

  /// Website other settings remark placeholder.
  ///
  /// In en, this message translates to:
  /// **'Optional remark'**
  String get websites_optionalRemark;

  /// Website other settings switches section title.
  ///
  /// In en, this message translates to:
  /// **'Switches'**
  String get websites_switches;

  /// Website other settings listen IPv6 switch label.
  ///
  /// In en, this message translates to:
  /// **'Listen IPv6'**
  String get websites_listenIpv6;

  /// Website other settings listen IPv6 switch subtitle.
  ///
  /// In en, this message translates to:
  /// **'After enabling, the site configuration will also listen on IPv6 addresses'**
  String get websites_listenIpv6Subtitle;

  /// Website other settings favorite switch label.
  ///
  /// In en, this message translates to:
  /// **'Favorite Website'**
  String get websites_favoriteWebsite;

  /// Website other settings favorite switch subtitle.
  ///
  /// In en, this message translates to:
  /// **'Mark frequently used sites in the list'**
  String get websites_favoriteWebsiteSubtitle;

  /// Website save in progress button label.
  ///
  /// In en, this message translates to:
  /// **'Saving'**
  String get websites_saving;

  /// Website other settings save changes button label.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get websites_saveChanges;

  /// Website default documents sheet load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load default documents'**
  String get websites_loadDefaultDocumentsFailed;

  /// Website default documents sheet title.
  ///
  /// In en, this message translates to:
  /// **'Default Documents'**
  String get websites_defaultDocuments;

  /// Website default documents edit conflict warning.
  ///
  /// In en, this message translates to:
  /// **'Finish the current edit first'**
  String get websites_finishCurrentEditFirst;

  /// Website default documents empty filename warning.
  ///
  /// In en, this message translates to:
  /// **'File name cannot be empty'**
  String get websites_fileNameRequired;

  /// Website default documents save blocked while editing warning.
  ///
  /// In en, this message translates to:
  /// **'Save or cancel the current edit first'**
  String get websites_saveOrCancelCurrentEditFirst;

  /// Website default documents invalid file names warning.
  ///
  /// In en, this message translates to:
  /// **'Enter valid file names or remove empty rows'**
  String get websites_validFileNameOrRemoveEmptyRows;

  /// Website default documents save success toast.
  ///
  /// In en, this message translates to:
  /// **'Saved and reloaded'**
  String get websites_savedAndReloaded;

  /// Website default documents reorder hint.
  ///
  /// In en, this message translates to:
  /// **'Long-press the left handle to reorder. Nginx checks default files in this order.'**
  String get websites_defaultDocumentOrderHint;

  /// Website default documents empty entries message.
  ///
  /// In en, this message translates to:
  /// **'No entries. Tap + in the upper-right corner to add one.'**
  String get websites_noDefaultDocumentEntries;

  /// Website default documents drag while editing warning.
  ///
  /// In en, this message translates to:
  /// **'Cannot drag while editing'**
  String get websites_cannotDragWhileEditing;

  /// Website default documents disabled hint.
  ///
  /// In en, this message translates to:
  /// **'The panel reports default documents as disabled. After saving, server rules still take precedence.'**
  String get websites_defaultDocumentsDisabledHint;

  /// Website default documents unsaved edits hint.
  ///
  /// In en, this message translates to:
  /// **'You have unsaved edits'**
  String get websites_unsavedEdits;

  /// Website default documents file name placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. index.html'**
  String get websites_indexFileExample;

  /// Website other settings website name required validation.
  ///
  /// In en, this message translates to:
  /// **'Website name is required'**
  String get websites_websiteNameRequired;

  /// Website other settings website alias required validation.
  ///
  /// In en, this message translates to:
  /// **'Website alias is required'**
  String get websites_websiteAliasRequired;

  /// Website other settings group required validation.
  ///
  /// In en, this message translates to:
  /// **'Select a website group'**
  String get websites_selectWebsiteGroup;

  /// Website other settings update success toast.
  ///
  /// In en, this message translates to:
  /// **'Website information updated'**
  String get websites_websiteInfoUpdated;

  /// Website other settings missing groups warning.
  ///
  /// In en, this message translates to:
  /// **'Website groups were not loaded. The current group ID will be used when saving.'**
  String get websites_groupFallbackWarning;

  /// Traffic limit preset forum/blog label.
  ///
  /// In en, this message translates to:
  /// **'Forum/Blog'**
  String get websites_limitPresetForumBlog;

  /// Traffic limit preset image site label.
  ///
  /// In en, this message translates to:
  /// **'Image Site'**
  String get websites_limitPresetImageSite;

  /// Traffic limit preset download site label.
  ///
  /// In en, this message translates to:
  /// **'Download Site'**
  String get websites_limitPresetDownloadSite;

  /// Traffic limit preset shop label.
  ///
  /// In en, this message translates to:
  /// **'Shop'**
  String get websites_limitPresetShop;

  /// Traffic limit preset portal label.
  ///
  /// In en, this message translates to:
  /// **'Portal'**
  String get websites_limitPresetPortal;

  /// Traffic limit preset enterprise label.
  ///
  /// In en, this message translates to:
  /// **'Enterprise'**
  String get websites_limitPresetEnterprise;

  /// Traffic limit preset video label.
  ///
  /// In en, this message translates to:
  /// **'Video'**
  String get websites_limitPresetVideo;

  /// Traffic limit preset summary.
  ///
  /// In en, this message translates to:
  /// **'{name} · Site {perServer} / IP {perIp} / {rate} KB/s'**
  String websites_limitPresetSummary(
    String name,
    String perServer,
    String perIp,
    String rate,
  );

  /// Traffic limit load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load traffic limit'**
  String get websites_loadTrafficLimitFailed;

  /// Traffic limit positive integer validation.
  ///
  /// In en, this message translates to:
  /// **'Enter valid numbers (integers greater than 0)'**
  String get websites_positiveIntegerRequired;

  /// Traffic limit enabled success toast.
  ///
  /// In en, this message translates to:
  /// **'Traffic limit enabled'**
  String get websites_trafficLimitEnabled;

  /// Traffic limit disabled success toast.
  ///
  /// In en, this message translates to:
  /// **'Traffic limit disabled'**
  String get websites_trafficLimitDisabled;

  /// Traffic limit enable status section title.
  ///
  /// In en, this message translates to:
  /// **'Enable Status'**
  String get websites_enableStatus;

  /// Traffic limit enabled status label.
  ///
  /// In en, this message translates to:
  /// **'Traffic limit is enabled'**
  String get websites_trafficLimitEnabledStatus;

  /// Traffic limit disabled status label.
  ///
  /// In en, this message translates to:
  /// **'Traffic limit is disabled'**
  String get websites_trafficLimitDisabledStatus;

  /// Traffic limit presets section title.
  ///
  /// In en, this message translates to:
  /// **'Presets'**
  String get websites_candidatePresets;

  /// Traffic limit parameter settings section title.
  ///
  /// In en, this message translates to:
  /// **'Parameter Settings'**
  String get websites_parameterSettings;

  /// Traffic limit disabled parameters hint.
  ///
  /// In en, this message translates to:
  /// **'Enable to edit parameters'**
  String get websites_editAfterEnable;

  /// Traffic limit concurrency field label.
  ///
  /// In en, this message translates to:
  /// **'Concurrency Limit'**
  String get websites_concurrencyLimit;

  /// Traffic limit per-IP field label.
  ///
  /// In en, this message translates to:
  /// **'Per-IP Limit'**
  String get websites_perIpLimit;

  /// Traffic limit request rate field label.
  ///
  /// In en, this message translates to:
  /// **'Request Rate Limit'**
  String get websites_requestRateLimit;

  /// Traffic limit descriptions section title.
  ///
  /// In en, this message translates to:
  /// **'Limit Item Descriptions'**
  String get websites_limitItemsDescription;

  /// Traffic limit concurrency description.
  ///
  /// In en, this message translates to:
  /// **'Limit maximum concurrency for the current site'**
  String get websites_concurrencyLimitDesc;

  /// Traffic limit per-IP description.
  ///
  /// In en, this message translates to:
  /// **'Limit maximum concurrency for a single IP'**
  String get websites_perIpLimitDesc;

  /// Traffic limit request rate description.
  ///
  /// In en, this message translates to:
  /// **'Limit transfer rate per request in KB/s'**
  String get websites_requestRateLimitDesc;

  /// Website group management load groups failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to load groups'**
  String get websites_loadGroupsGenericFailed;

  /// Website group created success toast.
  ///
  /// In en, this message translates to:
  /// **'Group created'**
  String get websites_groupCreated;

  /// Website group updated success toast.
  ///
  /// In en, this message translates to:
  /// **'Group updated'**
  String get websites_groupUpdated;

  /// Website group set default success toast.
  ///
  /// In en, this message translates to:
  /// **'Set as default group'**
  String get websites_defaultGroupSet;

  /// DNS account form operation failure toast.
  ///
  /// In en, this message translates to:
  /// **'Operation failed'**
  String get websites_operationFailed;

  /// Website group delete confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Delete Group'**
  String get websites_deleteGroup;

  /// Website group delete confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Delete \"{name}\"?\nWebsites in this group will become ungrouped.'**
  String websites_deleteGroupConfirm(String name);

  /// Website group deleted success toast.
  ///
  /// In en, this message translates to:
  /// **'Group deleted'**
  String get websites_groupDeleted;

  /// Website group management sheet title.
  ///
  /// In en, this message translates to:
  /// **'Manage Groups'**
  String get websites_manageGroups;

  /// Website group set as default action label.
  ///
  /// In en, this message translates to:
  /// **'Set as Default'**
  String get websites_setAsDefault;

  /// Website group name required validation.
  ///
  /// In en, this message translates to:
  /// **'Enter a group name'**
  String get websites_groupNameRequired;

  /// Website group edit sheet title.
  ///
  /// In en, this message translates to:
  /// **'Edit Group'**
  String get websites_editGroup;

  /// Website group create sheet title.
  ///
  /// In en, this message translates to:
  /// **'New Group'**
  String get websites_newGroup;

  /// CA create name field label.
  ///
  /// In en, this message translates to:
  /// **'CA Name'**
  String get websites_caName;

  /// CA create validation when name or common name is empty.
  ///
  /// In en, this message translates to:
  /// **'Enter CA name and common name'**
  String get websites_caNameRequired;

  /// CA create name placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. corp-root-ca'**
  String get websites_caNamePlaceholder;

  /// Certificate common name field label.
  ///
  /// In en, this message translates to:
  /// **'Common Name (CN)'**
  String get websites_commonName;

  /// Certificate common name detail label.
  ///
  /// In en, this message translates to:
  /// **'Common Name'**
  String get websites_commonNameShort;

  /// CA create common name placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. Corp Root CA'**
  String get websites_commonNamePlaceholder;

  /// CA create organization info section title.
  ///
  /// In en, this message translates to:
  /// **'Organization Information'**
  String get websites_organizationInfo;

  /// CA create country/region field label.
  ///
  /// In en, this message translates to:
  /// **'Country/Region (C)'**
  String get websites_countryRegion;

  /// CA detail country/region field label.
  ///
  /// In en, this message translates to:
  /// **'Country/Region'**
  String get websites_countryRegionShort;

  /// CA create country/region placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. CN'**
  String get websites_countryRegionPlaceholder;

  /// CA create organization name field label.
  ///
  /// In en, this message translates to:
  /// **'Organization Name (O)'**
  String get websites_organizationName;

  /// CA detail organization field label.
  ///
  /// In en, this message translates to:
  /// **'Organization'**
  String get websites_organization;

  /// CA create organization name placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. Example Inc'**
  String get websites_organizationNamePlaceholder;

  /// CA create organization unit field label.
  ///
  /// In en, this message translates to:
  /// **'Organization Unit (OU)'**
  String get websites_organizationUnit;

  /// CA detail organization unit field label.
  ///
  /// In en, this message translates to:
  /// **'Organization Unit'**
  String get websites_organizationUnitShort;

  /// CA create organization unit placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. IT'**
  String get websites_organizationUnitPlaceholder;

  /// CA create province/state field label.
  ///
  /// In en, this message translates to:
  /// **'Province/State (ST)'**
  String get websites_provinceState;

  /// CA detail province field label.
  ///
  /// In en, this message translates to:
  /// **'Province'**
  String get websites_province;

  /// CA create province placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. Guangdong'**
  String get websites_provincePlaceholder;

  /// CA create city field label.
  ///
  /// In en, this message translates to:
  /// **'City (L)'**
  String get websites_city;

  /// CA detail city field label.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get websites_cityShort;

  /// CA create city placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. Shenzhen'**
  String get websites_cityPlaceholder;

  /// CA issue action label.
  ///
  /// In en, this message translates to:
  /// **'Issue'**
  String get websites_issue;

  /// CA obtain sheet title.
  ///
  /// In en, this message translates to:
  /// **'Issue SSL Certificate'**
  String get websites_issueSslCertificate;

  /// CA obtain validation when domains are empty.
  ///
  /// In en, this message translates to:
  /// **'Enter domains'**
  String get websites_domainsRequired;

  /// CA obtain validation when validity is invalid.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid validity period'**
  String get websites_validityRequired;

  /// CA obtain failure toast title.
  ///
  /// In en, this message translates to:
  /// **'Issue failed'**
  String get websites_issueFailed;

  /// CA obtain domains field label.
  ///
  /// In en, this message translates to:
  /// **'Domains'**
  String get websites_domains;

  /// CA obtain domains placeholder.
  ///
  /// In en, this message translates to:
  /// **'One domain per line, for example:\nexample.com\nwww.example.com'**
  String get websites_domainsPlaceholder;

  /// CA obtain certificate description placeholder.
  ///
  /// In en, this message translates to:
  /// **'Optional certificate description'**
  String get websites_certificateDescriptionPlaceholder;

  /// CA obtain push to directory switch label.
  ///
  /// In en, this message translates to:
  /// **'Push to Directory'**
  String get websites_pushToDirectory;

  /// CA obtain target directory field label.
  ///
  /// In en, this message translates to:
  /// **'Target Directory'**
  String get websites_targetDirectory;

  /// CA obtain script command field label.
  ///
  /// In en, this message translates to:
  /// **'Script Command'**
  String get websites_scriptCommand;

  /// CA obtain script command placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. nginx -s reload'**
  String get websites_scriptCommandPlaceholder;

  /// CA obtain validity field label.
  ///
  /// In en, this message translates to:
  /// **'Validity'**
  String get websites_validity;

  /// CA management sheet title.
  ///
  /// In en, this message translates to:
  /// **'Self-Signed CA'**
  String get websites_selfSignedCa;

  /// CA management CA list section title.
  ///
  /// In en, this message translates to:
  /// **'CA List'**
  String get websites_caList;

  /// CA management empty state.
  ///
  /// In en, this message translates to:
  /// **'No self-signed CA'**
  String get websites_noSelfSignedCa;

  /// CA create action and sheet title.
  ///
  /// In en, this message translates to:
  /// **'Create CA'**
  String get websites_createCa;

  /// CA management create CA action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Create a new self-signed CA'**
  String get websites_createSelfSignedCaSubtitle;

  /// CA management load detail failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to load details'**
  String get websites_loadDetailsFailed;

  /// CA management delete confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Delete CA'**
  String get websites_deleteCa;

  /// CA management delete confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Delete \"{name}\"?'**
  String websites_deleteCaConfirm(String name);

  /// CA management download failure toast title.
  ///
  /// In en, this message translates to:
  /// **'Download failed'**
  String get websites_downloadFailed;

  /// Duration unit seconds.
  ///
  /// In en, this message translates to:
  /// **'Seconds'**
  String get websites_unitSeconds;

  /// Duration unit minutes.
  ///
  /// In en, this message translates to:
  /// **'Minutes'**
  String get websites_unitMinutes;

  /// Duration unit hours.
  ///
  /// In en, this message translates to:
  /// **'Hours'**
  String get websites_unitHours;

  /// Duration unit days.
  ///
  /// In en, this message translates to:
  /// **'Days'**
  String get websites_unitDays;

  /// Duration unit weeks.
  ///
  /// In en, this message translates to:
  /// **'Weeks'**
  String get websites_unitWeeks;

  /// Duration unit months.
  ///
  /// In en, this message translates to:
  /// **'Months'**
  String get websites_unitMonths;

  /// Duration unit years.
  ///
  /// In en, this message translates to:
  /// **'Years'**
  String get websites_unitYears;

  /// SSL detail certificate information section title.
  ///
  /// In en, this message translates to:
  /// **'Certificate Information'**
  String get websites_certificateInfo;

  /// SSL detail certificate source field label.
  ///
  /// In en, this message translates to:
  /// **'Certificate Source'**
  String get websites_certificateSource;

  /// SSL detail issuer field label.
  ///
  /// In en, this message translates to:
  /// **'Issuer'**
  String get websites_issuer;

  /// SSL detail expiration time field label.
  ///
  /// In en, this message translates to:
  /// **'Expiration Time'**
  String get websites_expirationTime;

  /// Website operations section title.
  ///
  /// In en, this message translates to:
  /// **'Operations'**
  String get websites_operations;

  /// SSL detail obtain or renew action title.
  ///
  /// In en, this message translates to:
  /// **'Apply / Renew'**
  String get websites_obtainOrRenew;

  /// SSL detail obtain or renew action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Apply to CA for a certificate or renewal'**
  String get websites_obtainOrRenewSubtitle;

  /// SSL detail edit certificate config subtitle.
  ///
  /// In en, this message translates to:
  /// **'Modify certificate configuration'**
  String get websites_editCertificateConfig;

  /// SSL detail view certificate PEM action title.
  ///
  /// In en, this message translates to:
  /// **'View Certificate (PEM)'**
  String get websites_viewCertificatePem;

  /// SSL detail view certificate PEM action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View certificate PEM content'**
  String get websites_viewCertificatePemSubtitle;

  /// SSL detail view private key action title.
  ///
  /// In en, this message translates to:
  /// **'View Private Key'**
  String get websites_viewPrivateKey;

  /// SSL detail view private key action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View private key PEM content'**
  String get websites_viewPrivateKeySubtitle;

  /// SSL detail download certificate action title.
  ///
  /// In en, this message translates to:
  /// **'Download Certificate'**
  String get websites_downloadCertificate;

  /// SSL detail download certificate action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Download certificate files'**
  String get websites_downloadCertificateSubtitle;

  /// SSL detail delete certificate title.
  ///
  /// In en, this message translates to:
  /// **'Delete Certificate'**
  String get websites_deleteCertificate;

  /// SSL detail delete certificate subtitle.
  ///
  /// In en, this message translates to:
  /// **'Permanently delete this certificate'**
  String get websites_deleteCertificateSubtitle;

  /// SSL detail delete certificate confirmation message.
  ///
  /// In en, this message translates to:
  /// **'Delete this certificate? This action cannot be undone.'**
  String get websites_deleteCertificateConfirm;

  /// SSL management batch delete confirmation message.
  ///
  /// In en, this message translates to:
  /// **'Delete the selected {count} certificates?'**
  String websites_deleteCertificatesConfirm(int count);

  /// Generic website delete success toast.
  ///
  /// In en, this message translates to:
  /// **'Deleted successfully'**
  String get websites_deleteSuccess;

  /// SSL obtain task submitted success toast.
  ///
  /// In en, this message translates to:
  /// **'Apply task submitted'**
  String get websites_applyTaskSubmitted;

  /// SSL obtain task failure toast.
  ///
  /// In en, this message translates to:
  /// **'Apply failed'**
  String get websites_applyFailed;

  /// Enable SSL switch label.
  ///
  /// In en, this message translates to:
  /// **'Enable SSL'**
  String get websites_enableSsl;

  /// ACME account field label.
  ///
  /// In en, this message translates to:
  /// **'ACME Account'**
  String get websites_acmeAccount;

  /// HTTPS sheet enable HTTPS switch label.
  ///
  /// In en, this message translates to:
  /// **'Enable HTTPS'**
  String get websites_enableHttps;

  /// HTTPS sheet read-only listening ports field label.
  ///
  /// In en, this message translates to:
  /// **'Listening Ports (read-only)'**
  String get websites_listenPortsReadonly;

  /// HTTPS sheet HTTP behavior field label.
  ///
  /// In en, this message translates to:
  /// **'HTTP Options'**
  String get websites_httpOptions;

  /// HTTPS sheet redirect HTTP to HTTPS option.
  ///
  /// In en, this message translates to:
  /// **'Redirect to HTTPS'**
  String get websites_httpRedirectToHttps;

  /// HTTPS sheet allow HTTP and HTTPS option.
  ///
  /// In en, this message translates to:
  /// **'Allow HTTP Access Too'**
  String get websites_httpAlsoAccessible;

  /// HTTPS sheet HTTPS-only option.
  ///
  /// In en, this message translates to:
  /// **'Disable HTTP Access'**
  String get websites_httpsOnly;

  /// HTTPS sheet HSTS switch label.
  ///
  /// In en, this message translates to:
  /// **'Enable HSTS'**
  String get websites_enableHsts;

  /// HTTPS sheet HSTS subdomains switch label.
  ///
  /// In en, this message translates to:
  /// **'Enable HSTS Subdomains'**
  String get websites_enableHstsSubdomains;

  /// HTTPS sheet HTTP/3 switch label.
  ///
  /// In en, this message translates to:
  /// **'Enable HTTP/3'**
  String get websites_enableHttp3;

  /// HTTPS sheet HTTP/3 switch subtitle.
  ///
  /// In en, this message translates to:
  /// **'Improves connection speed, but some browsers may not support it'**
  String get websites_http3Subtitle;

  /// HTTPS sheet certificate settings section title.
  ///
  /// In en, this message translates to:
  /// **'Certificate Settings'**
  String get websites_certificateSettings;

  /// HTTPS sheet SSL options field label.
  ///
  /// In en, this message translates to:
  /// **'SSL Options'**
  String get websites_sslOptions;

  /// HTTPS sheet existing certificate option.
  ///
  /// In en, this message translates to:
  /// **'Select Existing Certificate'**
  String get websites_selectExistingCertificate;

  /// HTTPS sheet select certificate field label.
  ///
  /// In en, this message translates to:
  /// **'Select Certificate'**
  String get websites_selectCertificate;

  /// HTTPS sheet empty certificates message.
  ///
  /// In en, this message translates to:
  /// **'No certificates under this account'**
  String get websites_noCertificatesForAccount;

  /// HTTPS sheet SSL protocol settings section title.
  ///
  /// In en, this message translates to:
  /// **'SSL Protocol Settings'**
  String get websites_sslProtocolSettings;

  /// HTTPS sheet supported protocol versions field label.
  ///
  /// In en, this message translates to:
  /// **'Supported Protocol Versions (multi-select)'**
  String get websites_supportedProtocolVersions;

  /// HTTPS sheet insecure TLS warning.
  ///
  /// In en, this message translates to:
  /// **'The selected protocol versions (TLS 1.0/1.1) are insecure'**
  String get websites_insecureTlsSelected;

  /// HTTPS sheet cipher suites field label.
  ///
  /// In en, this message translates to:
  /// **'Cipher Suites'**
  String get websites_cipherSuites;

  /// HTTPS sheet load ACME accounts failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to load ACME accounts'**
  String get websites_loadAcmeAccountsFailed;

  /// HTTPS sheet load certificates failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to load certificate list'**
  String get websites_loadCertificateListFailed;

  /// HTTPS sheet save success toast.
  ///
  /// In en, this message translates to:
  /// **'HTTPS configuration updated'**
  String get websites_httpsConfigUpdated;

  /// HTTPS sheet load configuration error title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load HTTPS configuration'**
  String get websites_loadHttpsConfigFailed;

  /// SSL management page title.
  ///
  /// In en, this message translates to:
  /// **'Certificate Management'**
  String get websites_certificateManagement;

  /// SSL management page search placeholder.
  ///
  /// In en, this message translates to:
  /// **'Search certificates...'**
  String get websites_searchCertificates;

  /// SSL management page upload certificate menu item.
  ///
  /// In en, this message translates to:
  /// **'Upload Certificate'**
  String get websites_uploadCertificate;

  /// SSL upload sheet upload button.
  ///
  /// In en, this message translates to:
  /// **'Upload'**
  String get websites_upload;

  /// SSL upload sheet upload failure toast.
  ///
  /// In en, this message translates to:
  /// **'Upload failed'**
  String get websites_uploadFailed;

  /// SSL management page import certificate from text menu item.
  ///
  /// In en, this message translates to:
  /// **'Import from Text'**
  String get websites_importFromText;

  /// SSL management page select server file menu item.
  ///
  /// In en, this message translates to:
  /// **'Select Server File'**
  String get websites_selectServerFile;

  /// SSL management page upload from local file menu item.
  ///
  /// In en, this message translates to:
  /// **'Upload from Local'**
  String get websites_uploadFromLocal;

  /// SSL management page search certificates action.
  ///
  /// In en, this message translates to:
  /// **'Search Certificates'**
  String get websites_searchCertificatesAction;

  /// SSL management page refresh list action.
  ///
  /// In en, this message translates to:
  /// **'Refresh List'**
  String get websites_refreshList;

  /// SSL management page no search results title.
  ///
  /// In en, this message translates to:
  /// **'No certificates found'**
  String get websites_noCertificateFound;

  /// SSL management page empty state title.
  ///
  /// In en, this message translates to:
  /// **'No certificates'**
  String get websites_noCertificates;

  /// SSL management page no search results subtitle.
  ///
  /// In en, this message translates to:
  /// **'Try another keyword'**
  String get websites_tryAnotherKeyword;

  /// SSL management page empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'No SSL certificates yet'**
  String get websites_noSslCertificates;

  /// SSL management page load data failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to load data'**
  String get websites_loadDataFailed;

  /// SSL upload sheet optional remark section title.
  ///
  /// In en, this message translates to:
  /// **'Remark (optional)'**
  String get websites_remarkOptional;

  /// SSL upload sheet certificate PEM content section title.
  ///
  /// In en, this message translates to:
  /// **'Certificate Content (PEM)'**
  String get websites_certificateContentPem;

  /// SSL upload sheet private key PEM content section title.
  ///
  /// In en, this message translates to:
  /// **'Private Key Content (PEM)'**
  String get websites_privateKeyContentPem;

  /// SSL upload sheet certificate file field title.
  ///
  /// In en, this message translates to:
  /// **'Certificate File'**
  String get websites_certificateFile;

  /// SSL upload sheet private key file field title.
  ///
  /// In en, this message translates to:
  /// **'Private Key File'**
  String get websites_privateKeyFile;

  /// SSL upload sheet select certificate file placeholder.
  ///
  /// In en, this message translates to:
  /// **'Tap to select certificate file'**
  String get websites_tapToSelectCertificateFile;

  /// SSL upload sheet select private key file placeholder.
  ///
  /// In en, this message translates to:
  /// **'Tap to select private key file'**
  String get websites_tapToSelectPrivateKeyFile;

  /// SSL upload sheet certificate file path field title.
  ///
  /// In en, this message translates to:
  /// **'Certificate File Path'**
  String get websites_certificateFilePath;

  /// SSL upload sheet private key file path field title.
  ///
  /// In en, this message translates to:
  /// **'Private Key File Path'**
  String get websites_privateKeyFilePath;

  /// SSL upload sheet select certificate server file picker title.
  ///
  /// In en, this message translates to:
  /// **'Select Certificate File'**
  String get websites_selectCertificateFile;

  /// SSL upload sheet select private key server file picker title.
  ///
  /// In en, this message translates to:
  /// **'Select Private Key File'**
  String get websites_selectPrivateKeyFile;

  /// SSL upload sheet certificate remark placeholder.
  ///
  /// In en, this message translates to:
  /// **'Add a remark for the certificate'**
  String get websites_certificateRemarkPlaceholder;

  /// Certificate field label.
  ///
  /// In en, this message translates to:
  /// **'Certificate'**
  String get websites_certificate;

  /// Enable FTP switch label.
  ///
  /// In en, this message translates to:
  /// **'Enable FTP'**
  String get websites_enableFtp;

  /// FTP account field label.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get websites_account;

  /// FTP account placeholder.
  ///
  /// In en, this message translates to:
  /// **'FTP account'**
  String get websites_ftpAccountPlaceholder;

  /// FTP password placeholder.
  ///
  /// In en, this message translates to:
  /// **'FTP password'**
  String get websites_ftpPasswordPlaceholder;

  /// Other information section title.
  ///
  /// In en, this message translates to:
  /// **'Other Information'**
  String get websites_otherInfo;

  /// Website remark field label.
  ///
  /// In en, this message translates to:
  /// **'Remark'**
  String get websites_remark;

  /// Optional field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get websites_optional;

  /// Runtime type field label on website create form.
  ///
  /// In en, this message translates to:
  /// **'Runtime Type'**
  String get websites_runtimeType;

  /// Local resource label.
  ///
  /// In en, this message translates to:
  /// **'Local'**
  String get websites_local;

  /// Container resource label.
  ///
  /// In en, this message translates to:
  /// **'Container'**
  String get websites_container;

  /// No runtime available label.
  ///
  /// In en, this message translates to:
  /// **'No runtimes available'**
  String get websites_noAvailableRuntime;

  /// Runtime connection type field label.
  ///
  /// In en, this message translates to:
  /// **'Connection Type'**
  String get websites_connectionType;

  /// Warning when selected runtime exposes no ports.
  ///
  /// In en, this message translates to:
  /// **'This runtime exposes no ports. Configure ports in runtime settings first.'**
  String get websites_runtimeNoExposedPorts;

  /// Database type field label.
  ///
  /// In en, this message translates to:
  /// **'Database Type'**
  String get websites_databaseType;

  /// No service available label.
  ///
  /// In en, this message translates to:
  /// **'No services available'**
  String get websites_noAvailableService;

  /// Database charset field label.
  ///
  /// In en, this message translates to:
  /// **'Charset'**
  String get websites_charset;

  /// No website groups available label.
  ///
  /// In en, this message translates to:
  /// **'No groups'**
  String get websites_noGroups;

  /// SSL validity unknown label.
  ///
  /// In en, this message translates to:
  /// **'Validity: unknown'**
  String get websites_validityUnknown;

  /// SSL validity never expires label.
  ///
  /// In en, this message translates to:
  /// **'Validity: never expires'**
  String get websites_validityNeverExpires;

  /// SSL validity raw value label.
  ///
  /// In en, this message translates to:
  /// **'Validity: {value}'**
  String websites_validityValue(String value);

  /// SSL validity expired label.
  ///
  /// In en, this message translates to:
  /// **'Validity: expired'**
  String get websites_validityExpired;

  /// SSL validity days label.
  ///
  /// In en, this message translates to:
  /// **'Validity: {days} days'**
  String websites_validityDays(int days);

  /// SSL validity less than one day label.
  ///
  /// In en, this message translates to:
  /// **'Validity: less than 1 day'**
  String get websites_validityLessThanOneDay;

  /// Fallback certificate label.
  ///
  /// In en, this message translates to:
  /// **'Certificate #{id}'**
  String websites_certificateNumber(int id);

  /// No SSL certificate available label.
  ///
  /// In en, this message translates to:
  /// **'No certificates available'**
  String get websites_noAvailableCertificate;

  /// Website action sheet domain count chip.
  ///
  /// In en, this message translates to:
  /// **'{count} domains'**
  String websites_domainCount(int count);

  /// Website action sheet loading count chip.
  ///
  /// In en, this message translates to:
  /// **'Loading count'**
  String get websites_loadingCount;

  /// Website detail load failure placeholder.
  ///
  /// In en, this message translates to:
  /// **'Failed to load details'**
  String get websites_detailLoadFailed;

  /// Website action sheet empty PHP runtime label.
  ///
  /// In en, this message translates to:
  /// **'No PHP runtime bound'**
  String get websites_noPhpRuntimeBound;

  /// Website action sheet settings section title.
  ///
  /// In en, this message translates to:
  /// **'Website Settings'**
  String get websites_settings;

  /// Websites page OpenResty not installed title.
  ///
  /// In en, this message translates to:
  /// **'OpenResty is not installed'**
  String get websites_openRestyNotInstalled;

  /// Websites page install OpenResty rich text prefix.
  ///
  /// In en, this message translates to:
  /// **'Please install OpenResty in '**
  String get websites_installOpenRestyPrefix;

  /// App Store link text.
  ///
  /// In en, this message translates to:
  /// **'App Store'**
  String get websites_appStore;

  /// Websites page install OpenResty rich text suffix.
  ///
  /// In en, this message translates to:
  /// **' first'**
  String get websites_installOpenRestySuffix;

  /// Websites page OpenResty stopped title.
  ///
  /// In en, this message translates to:
  /// **'OpenResty is stopped'**
  String get websites_openRestyStopped;

  /// Websites page OpenResty stopped subtitle.
  ///
  /// In en, this message translates to:
  /// **'Start it from the upper-right Services menu'**
  String get websites_startOpenRestyFromServiceMenu;

  /// Websites page empty state title.
  ///
  /// In en, this message translates to:
  /// **'No websites'**
  String get websites_noWebsites;

  /// Websites page no search results title.
  ///
  /// In en, this message translates to:
  /// **'No matching websites'**
  String get websites_noMatchingWebsites;

  /// Websites page empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Use the upper-right button to create your first website'**
  String get websites_createFirstWebsiteHint;

  /// Websites page load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load websites'**
  String get websites_loadWebsitesFailed;

  /// Website type sheet title.
  ///
  /// In en, this message translates to:
  /// **'Select Website Type'**
  String get websites_selectWebsiteType;

  /// Website type sheet static website title.
  ///
  /// In en, this message translates to:
  /// **'Static Website (Static HTML)'**
  String get websites_staticWebsiteType;

  /// Website type sheet static website description.
  ///
  /// In en, this message translates to:
  /// **'Best for static pages and frontend build output. The simplest configuration.'**
  String get websites_staticWebsiteTypeDescription;

  /// Website type sheet reverse proxy title.
  ///
  /// In en, this message translates to:
  /// **'Reverse Proxy'**
  String get websites_reverseProxyType;

  /// Website type sheet reverse proxy description.
  ///
  /// In en, this message translates to:
  /// **'Forward traffic to another port or external address. Suitable for backend services.'**
  String get websites_reverseProxyTypeDescription;

  /// Website action sheet domain settings row title.
  ///
  /// In en, this message translates to:
  /// **'Domain Settings'**
  String get websites_domainSettings;

  /// Website domain sheet load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load domains'**
  String get websites_loadDomainsFailed;

  /// Website domain field label.
  ///
  /// In en, this message translates to:
  /// **'Domain'**
  String get websites_domain;

  /// Website domain sheet subtitle with domain count.
  ///
  /// In en, this message translates to:
  /// **'{title} · {count} domains'**
  String websites_domainCountTitle(String title, int count);

  /// Website domain sheet keep at least one domain warning.
  ///
  /// In en, this message translates to:
  /// **'Keep at least one domain'**
  String get websites_keepAtLeastOneDomain;

  /// Website domain sheet remove domain confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Remove Domain'**
  String get websites_removeDomain;

  /// Website domain sheet remove domain confirmation message.
  ///
  /// In en, this message translates to:
  /// **'Remove {domain}?'**
  String websites_removeDomainConfirm(String domain);

  /// Website domain sheet remove action label.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get websites_remove;

  /// Website domain sheet empty state title.
  ///
  /// In en, this message translates to:
  /// **'No domains'**
  String get websites_noDomains;

  /// Website domain sheet empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap the upper-right button to add a domain'**
  String get websites_addDomainFromTopRight;

  /// Inline add domain card domain placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter domain or IP'**
  String get websites_domainOrIpPlaceholder;

  /// Inline add domain card invalid input warning.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid domain and port'**
  String get websites_validDomainPortRequired;

  /// Domain card port label.
  ///
  /// In en, this message translates to:
  /// **'Port {port}'**
  String websites_portValue(int port);

  /// Domain card disable HTTPS button.
  ///
  /// In en, this message translates to:
  /// **'Disable HTTPS'**
  String get websites_disableHttps;

  /// Website action sheet domain settings row subtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage bound domains, ports, and SSL markers'**
  String get websites_domainSettingsSubtitle;

  /// Website action sheet directory row title.
  ///
  /// In en, this message translates to:
  /// **'Website Directory'**
  String get websites_siteDirectory;

  /// Website action sheet detail loading toast message.
  ///
  /// In en, this message translates to:
  /// **'Details are loading. Please try again later.'**
  String get websites_detailLoadingRetry;

  /// Website action sheet default document row title.
  ///
  /// In en, this message translates to:
  /// **'Default Document'**
  String get websites_defaultDocument;

  /// Website action sheet default document row subtitle.
  ///
  /// In en, this message translates to:
  /// **'Configure default entries such as index.html and index.php'**
  String get websites_defaultDocumentSubtitle;

  /// Website action sheet traffic limit row title.
  ///
  /// In en, this message translates to:
  /// **'Traffic Limit'**
  String get websites_trafficLimit;

  /// Website action sheet traffic limit row subtitle.
  ///
  /// In en, this message translates to:
  /// **'Limit traffic, connections, and request rate'**
  String get websites_trafficLimitSubtitle;

  /// Website action sheet access control section title.
  ///
  /// In en, this message translates to:
  /// **'Access Control'**
  String get websites_accessControl;

  /// Website action sheet reverse proxy row title.
  ///
  /// In en, this message translates to:
  /// **'Reverse Proxy'**
  String get websites_reverseProxy;

  /// Reverse proxy sheet load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load reverse proxy'**
  String get websites_loadReverseProxyFailed;

  /// Reverse proxy delete confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Delete Reverse Proxy'**
  String get websites_deleteReverseProxy;

  /// Reverse proxy delete confirmation message.
  ///
  /// In en, this message translates to:
  /// **'Delete {name}?'**
  String websites_deleteProxyConfirm(String name);

  /// Generic deleted item success toast.
  ///
  /// In en, this message translates to:
  /// **'Deleted {name}'**
  String websites_deletedName(String name);

  /// Generic operation failed with copy details toast title.
  ///
  /// In en, this message translates to:
  /// **'Operation failed (tap to copy details)'**
  String get websites_operationFailedCopyDetails;

  /// Reverse proxy source editor title.
  ///
  /// In en, this message translates to:
  /// **'Source Content'**
  String get websites_sourceContent;

  /// Source content saved success toast.
  ///
  /// In en, this message translates to:
  /// **'Source content saved'**
  String get websites_sourceContentSaved;

  /// Generic enabled item success toast.
  ///
  /// In en, this message translates to:
  /// **'Enabled {name}'**
  String websites_enabledName(String name);

  /// Generic disabled item success toast.
  ///
  /// In en, this message translates to:
  /// **'Disabled {name}'**
  String websites_disabledName(String name);

  /// Website action sheet reverse proxy row subtitle.
  ///
  /// In en, this message translates to:
  /// **'Configure proxy target, path, and cache rules'**
  String get websites_reverseProxySubtitle;

  /// Website action sheet password access row title.
  ///
  /// In en, this message translates to:
  /// **'Password Access'**
  String get websites_passwordAccess;

  /// Website auth sheet password auth status row title.
  ///
  /// In en, this message translates to:
  /// **'Password Auth Status'**
  String get websites_passwordAuthStatus;

  /// Website auth sheet enable success toast.
  ///
  /// In en, this message translates to:
  /// **'Password access enabled'**
  String get websites_passwordAccessEnabled;

  /// Website auth sheet disable success toast.
  ///
  /// In en, this message translates to:
  /// **'Password access disabled'**
  String get websites_passwordAccessDisabled;

  /// Website auth sheet global tab label.
  ///
  /// In en, this message translates to:
  /// **'Global Access'**
  String get websites_globalAccess;

  /// Website auth sheet path tab label.
  ///
  /// In en, this message translates to:
  /// **'Path Access'**
  String get websites_pathAccess;

  /// Website auth sheet load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load auth configuration'**
  String get websites_loadAuthConfigFailed;

  /// Website auth global empty state title.
  ///
  /// In en, this message translates to:
  /// **'No auth accounts'**
  String get websites_noAuthAccounts;

  /// Website auth global empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap the upper-right button to add a global auth account'**
  String get websites_addGlobalAuthHint;

  /// Website auth delete account dialog title.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get websites_deleteAccount;

  /// Website auth delete account dialog message.
  ///
  /// In en, this message translates to:
  /// **'Delete auth account \"{username}\"?'**
  String websites_deleteAuthAccountConfirm(String username);

  /// Website auth account deleted success toast.
  ///
  /// In en, this message translates to:
  /// **'Account deleted'**
  String get websites_accountDeleted;

  /// Website path auth empty state title.
  ///
  /// In en, this message translates to:
  /// **'No path access limits'**
  String get websites_noPathAccessLimits;

  /// Website path auth empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap the upper-right button to add password access limits for a specific path'**
  String get websites_addPathAccessHint;

  /// Website path auth delete dialog title.
  ///
  /// In en, this message translates to:
  /// **'Delete Path Access'**
  String get websites_deletePathAccess;

  /// Website path auth delete dialog message.
  ///
  /// In en, this message translates to:
  /// **'Delete access limit for path \"{path}\"?'**
  String websites_deletePathAccessConfirm(String path);

  /// Website path auth delete success toast.
  ///
  /// In en, this message translates to:
  /// **'Path access limit deleted'**
  String get websites_pathAccessDeleted;

  /// Website path auth authorized account label.
  ///
  /// In en, this message translates to:
  /// **'Authorized Account'**
  String get websites_authorizedAccount;

  /// Website path auth remark description label.
  ///
  /// In en, this message translates to:
  /// **'Remark'**
  String get websites_remarkDescription;

  /// Website action sheet password access row subtitle.
  ///
  /// In en, this message translates to:
  /// **'Add basic authentication to the website'**
  String get websites_passwordAccessSubtitle;

  /// Website auth form username required validation and placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter a username'**
  String get websites_usernameRequired;

  /// Website auth form password required validation and placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter a password'**
  String get websites_passwordRequired;

  /// Website auth form path and name required validation.
  ///
  /// In en, this message translates to:
  /// **'Enter a path and name'**
  String get websites_pathAndNameRequired;

  /// Website auth form edit account title.
  ///
  /// In en, this message translates to:
  /// **'Edit Account'**
  String get websites_editAccount;

  /// Website auth form add account title.
  ///
  /// In en, this message translates to:
  /// **'Add Account'**
  String get websites_addAccount;

  /// Website path auth protected path field label.
  ///
  /// In en, this message translates to:
  /// **'Protected Path'**
  String get websites_protectedPath;

  /// Website path auth path placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. /admin'**
  String get websites_pathExampleAdmin;

  /// Website path auth name field label.
  ///
  /// In en, this message translates to:
  /// **'Auth Name'**
  String get websites_authName;

  /// Website path auth name placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. Admin'**
  String get websites_authNameExample;

  /// Website auth form username field label.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get websites_username;

  /// Website auth form access password field label.
  ///
  /// In en, this message translates to:
  /// **'Access Password'**
  String get websites_accessPassword;

  /// Website auth form edit password placeholder.
  ///
  /// In en, this message translates to:
  /// **'Leave blank to keep unchanged'**
  String get websites_leaveBlankToKeep;

  /// Website auth form account remark placeholder.
  ///
  /// In en, this message translates to:
  /// **'Describe what this account is used for'**
  String get websites_accountRemarkPlaceholder;

  /// Website path auth form immutable fields hint.
  ///
  /// In en, this message translates to:
  /// **'Path, name, and username cannot be changed after saving'**
  String get websites_pathAuthImmutableHint;

  /// Website global auth form password reset hint.
  ///
  /// In en, this message translates to:
  /// **'Updating a global account requires resetting the password'**
  String get websites_globalAuthPasswordResetHint;

  /// Website auth form save button.
  ///
  /// In en, this message translates to:
  /// **'Confirm Save'**
  String get websites_confirmSave;

  /// Website action sheet CORS row title.
  ///
  /// In en, this message translates to:
  /// **'CORS Access'**
  String get websites_corsAccess;

  /// Website action sheet CORS row subtitle.
  ///
  /// In en, this message translates to:
  /// **'Configure CORS request rules'**
  String get websites_corsAccessSubtitle;

  /// Website action sheet real IP row title.
  ///
  /// In en, this message translates to:
  /// **'Real IP'**
  String get websites_realIp;

  /// Real IP sheet IP source required warning.
  ///
  /// In en, this message translates to:
  /// **'Enter at least one IP source'**
  String get websites_ipSourceRequired;

  /// Real IP sheet custom header required warning.
  ///
  /// In en, this message translates to:
  /// **'Enter a custom Header name'**
  String get websites_customHeaderRequired;

  /// Real IP sheet save success toast.
  ///
  /// In en, this message translates to:
  /// **'Real IP configuration saved'**
  String get websites_realIpSaved;

  /// Real IP sheet load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load Real IP configuration'**
  String get websites_loadRealIpConfigFailed;

  /// Real IP sheet enable switch label.
  ///
  /// In en, this message translates to:
  /// **'Enable Real IP'**
  String get websites_enableRealIp;

  /// Real IP sheet IP source section title.
  ///
  /// In en, this message translates to:
  /// **'IP Source (set_real_ip_from)'**
  String get websites_ipSourceSetRealIpFrom;

  /// Real IP sheet IP source editor hint.
  ///
  /// In en, this message translates to:
  /// **'Enter one IP or CIDR per line\ne.g. 127.0.0.1'**
  String get websites_ipSourceHint;

  /// Real IP sheet trusted proxy IP list label.
  ///
  /// In en, this message translates to:
  /// **'Allowed trusted proxy IP list'**
  String get websites_trustedProxyIpList;

  /// Real IP sheet empty trusted proxy IP list message.
  ///
  /// In en, this message translates to:
  /// **'No trusted proxy IPs'**
  String get websites_noTrustedProxyIp;

  /// Real IP sheet header section title.
  ///
  /// In en, this message translates to:
  /// **'Real IP Header (real_ip_header)'**
  String get websites_realIpHeader;

  /// Generic custom other picker option.
  ///
  /// In en, this message translates to:
  /// **'Other (Custom)'**
  String get websites_otherCustom;

  /// Real IP sheet custom header placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter a custom Header name, e.g. My-Real-IP'**
  String get websites_customHeaderPlaceholder;

  /// Real IP sheet header hint.
  ///
  /// In en, this message translates to:
  /// **'Specify the request header containing the real client IP.'**
  String get websites_realIpHeaderHint;

  /// Real IP sheet inline IP editor placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter IP or CIDR'**
  String get websites_ipOrCidrPlaceholder;

  /// Website action sheet real IP row subtitle.
  ///
  /// In en, this message translates to:
  /// **'Configure real client IP behind a proxy'**
  String get websites_realIpSubtitle;

  /// Website action sheet rules and runtime section title.
  ///
  /// In en, this message translates to:
  /// **'Rules & Runtime'**
  String get websites_rulesAndRuntime;

  /// Website action sheet rewrite row title.
  ///
  /// In en, this message translates to:
  /// **'Rewrite'**
  String get websites_rewrite;

  /// Website rewrite sheet fetch template content failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to get template content'**
  String get websites_fetchTemplateContentFailed;

  /// Website rewrite sheet save and reload success toast.
  ///
  /// In en, this message translates to:
  /// **'Rewrite configuration saved and reloaded'**
  String get websites_rewriteSavedAndReloaded;

  /// Website rewrite sheet save as template action.
  ///
  /// In en, this message translates to:
  /// **'Save as Template'**
  String get websites_saveAsTemplate;

  /// Website rewrite sheet template name input placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter template name'**
  String get websites_templateNamePlaceholder;

  /// Website rewrite sheet template name required warning.
  ///
  /// In en, this message translates to:
  /// **'Enter a template name'**
  String get websites_templateNameRequired;

  /// Website rewrite sheet save as template success toast.
  ///
  /// In en, this message translates to:
  /// **'Template saved as {name}'**
  String websites_templateSavedAs(String name);

  /// Website rewrite sheet save as template failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to save as template'**
  String get websites_saveAsTemplateFailed;

  /// Website rewrite sheet delete template dialog title.
  ///
  /// In en, this message translates to:
  /// **'Delete Template'**
  String get websites_deleteTemplate;

  /// Website rewrite sheet delete template confirmation message.
  ///
  /// In en, this message translates to:
  /// **'Delete template \"{name}\"?'**
  String websites_deleteTemplateConfirmName(String name);

  /// Website rewrite sheet template deleted success toast.
  ///
  /// In en, this message translates to:
  /// **'Template deleted'**
  String get websites_templateDeleted;

  /// Website rewrite sheet delete template failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete template'**
  String get websites_deleteTemplateFailed;

  /// Website rewrite sheet load configuration failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load rewrite configuration'**
  String get websites_loadRewriteConfigFailed;

  /// Website rewrite sheet current template option.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get websites_currentTemplate;

  /// Website rewrite sheet custom template option label.
  ///
  /// In en, this message translates to:
  /// **'{name} (custom)'**
  String websites_customTemplateName(String name);

  /// Website rewrite sheet template selector label.
  ///
  /// In en, this message translates to:
  /// **'Select Template'**
  String get websites_selectTemplate;

  /// Website rewrite sheet rule content label.
  ///
  /// In en, this message translates to:
  /// **'Rule Content'**
  String get websites_ruleContent;

  /// Website rewrite sheet code editor hint.
  ///
  /// In en, this message translates to:
  /// **'Enter rewrite rules...'**
  String get websites_rewriteRulesHint;

  /// Website rewrite sheet save and reload button.
  ///
  /// In en, this message translates to:
  /// **'Save and Reload'**
  String get websites_saveAndReload;

  /// Website action sheet rewrite row subtitle.
  ///
  /// In en, this message translates to:
  /// **'Configure rewrite rules'**
  String get websites_rewriteSubtitle;

  /// Website action sheet anti-leech row title.
  ///
  /// In en, this message translates to:
  /// **'Anti-Leech'**
  String get websites_antiLeech;

  /// Website action sheet anti-leech row subtitle.
  ///
  /// In en, this message translates to:
  /// **'Restrict referrer sites and resource access'**
  String get websites_antiLeechSubtitle;

  /// Website action sheet redirect row title.
  ///
  /// In en, this message translates to:
  /// **'Redirect'**
  String get websites_redirect;

  /// Redirect sheet load rules failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load redirect rules'**
  String get websites_loadRedirectRulesFailed;

  /// Redirect sheet delete confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Delete Redirect'**
  String get websites_deleteRedirect;

  /// Redirect sheet delete confirmation message.
  ///
  /// In en, this message translates to:
  /// **'Delete redirect rule \"{name}\"?'**
  String websites_deleteRedirectConfirm(String name);

  /// Redirect source editor title.
  ///
  /// In en, this message translates to:
  /// **'Redirect Source Content'**
  String get websites_redirectSourceContent;

  /// Redirect source saved toast.
  ///
  /// In en, this message translates to:
  /// **'Redirect source content saved'**
  String get websites_redirectSourceSaved;

  /// Redirect rule name field label.
  ///
  /// In en, this message translates to:
  /// **'Rule Name'**
  String get websites_ruleName;

  /// Redirect rule name placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter rule name'**
  String get websites_ruleNamePlaceholder;

  /// Redirect type field label.
  ///
  /// In en, this message translates to:
  /// **'Redirect Type'**
  String get websites_redirectType;

  /// Redirect method field label.
  ///
  /// In en, this message translates to:
  /// **'Redirect Method'**
  String get websites_redirectMethod;

  /// 301 redirect option label.
  ///
  /// In en, this message translates to:
  /// **'301 Permanent Redirect'**
  String get websites_redirect301;

  /// 302 redirect option label.
  ///
  /// In en, this message translates to:
  /// **'302 Temporary Redirect'**
  String get websites_redirect302;

  /// Redirect domain selection section title.
  ///
  /// In en, this message translates to:
  /// **'Domain Selection'**
  String get websites_domainSelection;

  /// Redirect no selectable domains message.
  ///
  /// In en, this message translates to:
  /// **'No selectable domains'**
  String get websites_noSelectableDomains;

  /// Redirect target settings section title.
  ///
  /// In en, this message translates to:
  /// **'Target Settings'**
  String get websites_targetSettings;

  /// Redirect target URL field label.
  ///
  /// In en, this message translates to:
  /// **'Target URL'**
  String get websites_targetUrl;

  /// Redirect target URL placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter target URL, e.g. http://example.com'**
  String get websites_targetUrlPlaceholder;

  /// Redirect keep URI parameters switch label.
  ///
  /// In en, this message translates to:
  /// **'Keep URI Parameters'**
  String get websites_keepUriParameters;

  /// Redirect empty state title.
  ///
  /// In en, this message translates to:
  /// **'No redirect rules'**
  String get websites_noRedirectRules;

  /// Redirect empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Use the upper-right or lower button to add a rule'**
  String get websites_addRedirectRuleHint;

  /// Redirect empty state add action.
  ///
  /// In en, this message translates to:
  /// **'Add Now'**
  String get websites_addNow;

  /// Redirect card target address label.
  ///
  /// In en, this message translates to:
  /// **'Target Address'**
  String get websites_targetAddress;

  /// Redirect card scope domains label.
  ///
  /// In en, this message translates to:
  /// **'Scope Domains'**
  String get websites_scopeDomains;

  /// Redirect editor load domain list failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to load domain list'**
  String get websites_loadDomainListFailed;

  /// Redirect editor rule name required warning.
  ///
  /// In en, this message translates to:
  /// **'Enter a rule name'**
  String get websites_ruleNameRequired;

  /// Redirect editor target URL required warning.
  ///
  /// In en, this message translates to:
  /// **'Enter a target URL'**
  String get websites_targetUrlRequired;

  /// Redirect editor no domain selected warning.
  ///
  /// In en, this message translates to:
  /// **'Select at least one domain'**
  String get websites_selectAtLeastOneDomain;

  /// Redirect editor create success toast.
  ///
  /// In en, this message translates to:
  /// **'Redirect rule created'**
  String get websites_redirectRuleCreated;

  /// Redirect editor update success toast.
  ///
  /// In en, this message translates to:
  /// **'Redirect rule updated'**
  String get websites_redirectRuleUpdated;

  /// Redirect editor new title.
  ///
  /// In en, this message translates to:
  /// **'New Redirect'**
  String get websites_newRedirect;

  /// Redirect editor edit title.
  ///
  /// In en, this message translates to:
  /// **'Edit Redirect'**
  String get websites_editRedirect;

  /// Website action sheet redirect row subtitle.
  ///
  /// In en, this message translates to:
  /// **'Configure 301/302 redirect rules'**
  String get websites_redirectSubtitle;

  /// Website action sheet resources row title.
  ///
  /// In en, this message translates to:
  /// **'Resources'**
  String get websites_resource;

  /// Website resource sheet associated resources section title.
  ///
  /// In en, this message translates to:
  /// **'Associated Resources'**
  String get websites_associatedResources;

  /// Website resource sheet database settings section title.
  ///
  /// In en, this message translates to:
  /// **'Database Settings'**
  String get websites_databaseSettings;

  /// Website resource sheet change database confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Change Database'**
  String get websites_changeDatabase;

  /// Website resource sheet unlink database confirmation message.
  ///
  /// In en, this message translates to:
  /// **'Unlink the current database?'**
  String get websites_unlinkDatabaseConfirm;

  /// Website resource sheet change database confirmation message.
  ///
  /// In en, this message translates to:
  /// **'Change the website database association to \"{name}\"?'**
  String websites_changeDatabaseConfirm(String name);

  /// Website resource sheet confirm change button.
  ///
  /// In en, this message translates to:
  /// **'Confirm Change'**
  String get websites_confirmChange;

  /// Website resource sheet database association update success toast.
  ///
  /// In en, this message translates to:
  /// **'Database association updated'**
  String get websites_databaseAssociationUpdated;

  /// Website resource type label for runtime.
  ///
  /// In en, this message translates to:
  /// **'Runtime Environment'**
  String get websites_runtimeEnvironment;

  /// Website PHP settings sheet title.
  ///
  /// In en, this message translates to:
  /// **'PHP Settings'**
  String get websites_phpSettings;

  /// Website PHP settings static website label.
  ///
  /// In en, this message translates to:
  /// **'Static Website'**
  String get websites_staticSite;

  /// Website PHP settings current status section title.
  ///
  /// In en, this message translates to:
  /// **'Current Status'**
  String get websites_currentStatus;

  /// Website PHP settings switch runtime section and dialog title.
  ///
  /// In en, this message translates to:
  /// **'Switch Runtime'**
  String get websites_switchRuntime;

  /// Website PHP settings runtime selector hint.
  ///
  /// In en, this message translates to:
  /// **'Select a static website or PHP runtime'**
  String get websites_selectStaticOrPhpRuntime;

  /// Website PHP settings switching status label.
  ///
  /// In en, this message translates to:
  /// **'Switching...'**
  String get websites_switching;

  /// Website PHP runtime fallback label.
  ///
  /// In en, this message translates to:
  /// **'PHP Runtime'**
  String get websites_phpRuntime;

  /// Website PHP settings switch runtime confirmation message.
  ///
  /// In en, this message translates to:
  /// **'Switching to {target}\n\nThis will reconfigure the website and cannot be rolled back. Continue?'**
  String websites_switchRuntimeConfirm(String target);

  /// Website PHP settings confirm switch button.
  ///
  /// In en, this message translates to:
  /// **'Confirm Switch'**
  String get websites_confirmSwitch;

  /// Website PHP settings switched success toast.
  ///
  /// In en, this message translates to:
  /// **'Switched to {target}'**
  String websites_switchedTo(String target);

  /// Website PHP settings switch failure toast.
  ///
  /// In en, this message translates to:
  /// **'Switch failed'**
  String get websites_switchFailed;

  /// Website PHP settings PHP website status label.
  ///
  /// In en, this message translates to:
  /// **'PHP Website'**
  String get websites_phpWebsite;

  /// Website PHP settings unknown runtime label.
  ///
  /// In en, this message translates to:
  /// **'Unknown runtime'**
  String get websites_unknownRuntime;

  /// Website PHP settings static file service description.
  ///
  /// In en, this message translates to:
  /// **'Static file service'**
  String get websites_staticFileService;

  /// Website PHP settings load runtimes failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load PHP runtimes'**
  String get websites_loadPhpRuntimesFailed;

  /// Website resource type label for app.
  ///
  /// In en, this message translates to:
  /// **'Application'**
  String get websites_application;

  /// Website resource type label for database.
  ///
  /// In en, this message translates to:
  /// **'Database'**
  String get websites_database;

  /// Website resource sheet empty resources message.
  ///
  /// In en, this message translates to:
  /// **'No associated resources'**
  String get websites_noAssociatedResources;

  /// Website resource sheet no database association picker option.
  ///
  /// In en, this message translates to:
  /// **'No database association'**
  String get websites_noDatabaseAssociation;

  /// Website resource sheet database selector label.
  ///
  /// In en, this message translates to:
  /// **'Select a database to associate'**
  String get websites_selectAssociatedDatabase;

  /// Website resource sheet updating status label.
  ///
  /// In en, this message translates to:
  /// **'Updating...'**
  String get websites_updating;

  /// Website resource sheet load resources failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load resources'**
  String get websites_loadResourcesFailed;

  /// Website detail loading failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load website details'**
  String get websites_loadWebsiteDetailsFailed;

  /// Website action sheet resources row subtitle.
  ///
  /// In en, this message translates to:
  /// **'View website resource usage and statistics'**
  String get websites_resourceSubtitle;

  /// Website action sheet other row title.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get websites_other;

  /// Website action sheet other row subtitle.
  ///
  /// In en, this message translates to:
  /// **'Name, group, IPv6, and favorite marker'**
  String get websites_otherSubtitle;

  /// Website action sheet diagnostics section title.
  ///
  /// In en, this message translates to:
  /// **'Diagnostics'**
  String get websites_diagnostics;

  /// Website action sheet logs row title.
  ///
  /// In en, this message translates to:
  /// **'Logs'**
  String get websites_logs;

  /// Website action sheet logs row subtitle.
  ///
  /// In en, this message translates to:
  /// **'Access logs and error logs'**
  String get websites_logsSubtitle;

  /// Website action sheet config file row title.
  ///
  /// In en, this message translates to:
  /// **'Config File'**
  String get websites_configFile;

  /// Website config editor load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load configuration'**
  String get websites_loadConfigFailed;

  /// Website config editor update success toast.
  ///
  /// In en, this message translates to:
  /// **'Configuration updated and reloaded'**
  String get websites_configUpdatedAndReloaded;

  /// Website config editor discard changes dialog title.
  ///
  /// In en, this message translates to:
  /// **'Discard changes?'**
  String get websites_discardChangesQuestion;

  /// Website config editor discard changes dialog message.
  ///
  /// In en, this message translates to:
  /// **'Your changes are not saved. Are you sure you want to leave?'**
  String get websites_unsavedChangesLeaveConfirm;

  /// Website config editor continue editing action.
  ///
  /// In en, this message translates to:
  /// **'Continue Editing'**
  String get websites_continueEditing;

  /// Website config editor discard action.
  ///
  /// In en, this message translates to:
  /// **'Discard'**
  String get websites_discard;

  /// Website config editor update and reload button.
  ///
  /// In en, this message translates to:
  /// **'Update and Reload'**
  String get websites_updateAndReload;

  /// Website action sheet config file row subtitle.
  ///
  /// In en, this message translates to:
  /// **'View and edit site configuration'**
  String get websites_configFileSubtitle;

  /// Website action sheet HTTPS subtitle when SSL is disabled.
  ///
  /// In en, this message translates to:
  /// **'SSL not enabled'**
  String get websites_sslNotEnabled;

  /// Website action sheet certificate load failure subtitle.
  ///
  /// In en, this message translates to:
  /// **'Failed to load certificate info'**
  String get websites_certificateLoadFailed;

  /// Website action sheet HTTPS enabled subtitle.
  ///
  /// In en, this message translates to:
  /// **'HTTPS enabled'**
  String get websites_httpsEnabled;

  /// Website action sheet certificate expiry subtitle.
  ///
  /// In en, this message translates to:
  /// **'Certificate {time}'**
  String websites_certificateExpiry(String time);

  /// Website log sheet access log load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load access log'**
  String get websites_accessLogLoadFailed;

  /// Website log sheet error log load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load error log'**
  String get websites_errorLogLoadFailed;

  /// Website log sheet clear access log dialog title.
  ///
  /// In en, this message translates to:
  /// **'Clear Access Log'**
  String get websites_clearAccessLog;

  /// Website log sheet clear error log dialog title.
  ///
  /// In en, this message translates to:
  /// **'Clear Error Log'**
  String get websites_clearErrorLog;

  /// Website log sheet clear log confirmation message.
  ///
  /// In en, this message translates to:
  /// **'This will clear the log file on the server. Continue?'**
  String get websites_clearLogConfirm;

  /// Website log sheet clear action label.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get websites_clear;

  /// Website log sheet clear success toast.
  ///
  /// In en, this message translates to:
  /// **'Log cleared'**
  String get websites_logCleared;

  /// Website log sheet enable success toast.
  ///
  /// In en, this message translates to:
  /// **'Log enabled'**
  String get websites_logEnabled;

  /// Website log sheet disable success toast.
  ///
  /// In en, this message translates to:
  /// **'Log disabled'**
  String get websites_logDisabled;

  /// Website log sheet copy raw log success toast.
  ///
  /// In en, this message translates to:
  /// **'Raw log copied'**
  String get websites_rawLogCopied;

  /// Website log sheet no exportable logs warning.
  ///
  /// In en, this message translates to:
  /// **'No logs to export'**
  String get websites_noExportableLogs;

  /// Website log sheet share plugin missing error title.
  ///
  /// In en, this message translates to:
  /// **'Share plugin is not registered'**
  String get websites_sharePluginUnregistered;

  /// Website log sheet share plugin missing error description.
  ///
  /// In en, this message translates to:
  /// **'Fully stop and rerun the app. Hot reload/restart does not register newly added native plugins.'**
  String get websites_sharePluginRestartHint;

  /// Website log sheet export failure title.
  ///
  /// In en, this message translates to:
  /// **'Export failed'**
  String get websites_exportFailed;

  /// Website log sheet title.
  ///
  /// In en, this message translates to:
  /// **'Website Logs'**
  String get websites_websiteLogs;

  /// Website log sheet header subtitle.
  ///
  /// In en, this message translates to:
  /// **'{title} · {lines} lines · {status}'**
  String websites_logHeaderSubtitle(String title, int lines, String status);

  /// Generic website enabled status label.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get websites_enabled;

  /// Generic website disabled status label.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get websites_disabled;

  /// Website log sheet access log type label.
  ///
  /// In en, this message translates to:
  /// **'Access Log'**
  String get websites_accessLog;

  /// Website log sheet error log type label.
  ///
  /// In en, this message translates to:
  /// **'Error Log'**
  String get websites_errorLog;

  /// Website log sheet search placeholder.
  ///
  /// In en, this message translates to:
  /// **'Search IP, path, status code, UA'**
  String get websites_logSearchPlaceholder;

  /// Website log entry time field label.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get websites_time;

  /// Website log entry path field label.
  ///
  /// In en, this message translates to:
  /// **'Path'**
  String get websites_path;

  /// Website log entry user field label.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get websites_user;

  /// Website log entry referrer field label.
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get websites_source;

  /// Website log entry size field label.
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get websites_size;

  /// Website log sheet copy raw data button.
  ///
  /// In en, this message translates to:
  /// **'Copy Raw Data'**
  String get websites_copyRawData;

  /// Website log sheet empty state title.
  ///
  /// In en, this message translates to:
  /// **'No logs'**
  String get websites_noLogs;

  /// Website log sheet no search results title.
  ///
  /// In en, this message translates to:
  /// **'No matching logs'**
  String get websites_noMatchingLogs;

  /// Website log sheet enable action label.
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get websites_enable;

  /// Website log sheet disable action label.
  ///
  /// In en, this message translates to:
  /// **'Disable'**
  String get websites_disable;

  /// Website log sheet export action label.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get websites_export;

  /// Website form submit action label.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get websites_submit;

  /// SSL create sheet title.
  ///
  /// In en, this message translates to:
  /// **'Apply Certificate'**
  String get websites_applyCertificate;

  /// SSL create sheet basic information section title.
  ///
  /// In en, this message translates to:
  /// **'Basic Information'**
  String get websites_basicInfo;

  /// SSL create sheet primary domain placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. example.com'**
  String get websites_primaryDomainExample;

  /// SSL create sheet other domains field label.
  ///
  /// In en, this message translates to:
  /// **'Other Domains'**
  String get websites_otherDomains;

  /// SSL create sheet other domains placeholder.
  ///
  /// In en, this message translates to:
  /// **'Separate multiple domains with line breaks'**
  String get websites_otherDomainsPlaceholder;

  /// SSL create sheet validation method section and field label.
  ///
  /// In en, this message translates to:
  /// **'Validation Method'**
  String get websites_validationMethod;

  /// SSL create sheet DNS account validation option.
  ///
  /// In en, this message translates to:
  /// **'DNS Account Validation'**
  String get websites_dnsAccountValidation;

  /// SSL create sheet manual DNS validation option.
  ///
  /// In en, this message translates to:
  /// **'Manual DNS Validation'**
  String get websites_manualDnsValidation;

  /// SSL create sheet HTTP validation option.
  ///
  /// In en, this message translates to:
  /// **'HTTP Validation'**
  String get websites_httpValidation;

  /// SSL create sheet self-signed validation option.
  ///
  /// In en, this message translates to:
  /// **'Self-Signed'**
  String get websites_selfSigned;

  /// SSL create sheet DNS account field label.
  ///
  /// In en, this message translates to:
  /// **'DNS Account'**
  String get websites_dnsAccount;

  /// DNS account form account name required validation.
  ///
  /// In en, this message translates to:
  /// **'Enter an account name'**
  String get websites_dnsAccountNameRequired;

  /// DNS account form authorization fields required validation.
  ///
  /// In en, this message translates to:
  /// **'Fill in all authorization fields'**
  String get websites_authFieldsRequired;

  /// DNS account edit form title.
  ///
  /// In en, this message translates to:
  /// **'Edit DNS Account'**
  String get websites_editDnsAccount;

  /// DNS account create form title.
  ///
  /// In en, this message translates to:
  /// **'Create DNS Account'**
  String get websites_createDnsAccount;

  /// ACME account create form title.
  ///
  /// In en, this message translates to:
  /// **'Create ACME Account'**
  String get websites_createAcmeAccount;

  /// ACME account email field label.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get websites_email;

  /// ACME account email field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Used to receive certificate expiry reminders'**
  String get websites_certificateExpiryEmailHint;

  /// ACME account type field label.
  ///
  /// In en, this message translates to:
  /// **'Account Type'**
  String get websites_accountType;

  /// DNS/ACME account sheet account list section title.
  ///
  /// In en, this message translates to:
  /// **'Account List'**
  String get websites_accountList;

  /// DNS account sheet empty state.
  ///
  /// In en, this message translates to:
  /// **'No DNS accounts'**
  String get websites_noDnsAccounts;

  /// DNS account sheet create account subtitle.
  ///
  /// In en, this message translates to:
  /// **'Add a new DNS provider account'**
  String get websites_addDnsProviderAccount;

  /// DNS account sheet delete confirmation inline hint.
  ///
  /// In en, this message translates to:
  /// **'Tap again to confirm delete'**
  String get websites_clickAgainToConfirmDelete;

  /// DNS account sheet active row operation hint.
  ///
  /// In en, this message translates to:
  /// **'Select an operation'**
  String get websites_selectOperation;

  /// ACME account sheet empty state.
  ///
  /// In en, this message translates to:
  /// **'No ACME accounts'**
  String get websites_noAcmeAccounts;

  /// ACME account sheet delete confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Delete ACME Account'**
  String get websites_deleteAcmeAccount;

  /// ACME account sheet delete confirmation message.
  ///
  /// In en, this message translates to:
  /// **'Delete this ACME account?'**
  String get websites_deleteAcmeAccountConfirm;

  /// ACME account sheet create account subtitle.
  ///
  /// In en, this message translates to:
  /// **'Add a new ACME account'**
  String get websites_addAcmeAccount;

  /// ACME account custom directory field label.
  ///
  /// In en, this message translates to:
  /// **'Custom ACME Directory'**
  String get websites_customAcmeDirectory;

  /// ACME account optional default placeholder.
  ///
  /// In en, this message translates to:
  /// **'Optional, leave blank to use default'**
  String get websites_optionalUseDefault;

  /// ACME account use EAB switch label.
  ///
  /// In en, this message translates to:
  /// **'Use EAB'**
  String get websites_useEab;

  /// ACME account EAB Key ID placeholder.
  ///
  /// In en, this message translates to:
  /// **'External Account Binding Key ID'**
  String get websites_eabKeyIdPlaceholder;

  /// ACME account EAB HMAC Key placeholder.
  ///
  /// In en, this message translates to:
  /// **'External Account Binding HMAC Key'**
  String get websites_eabHmacKeyPlaceholder;

  /// ACME account use proxy switch label.
  ///
  /// In en, this message translates to:
  /// **'Use Proxy'**
  String get websites_useProxy;

  /// DNS account form account name field label.
  ///
  /// In en, this message translates to:
  /// **'Account Name'**
  String get websites_accountName;

  /// DNS account form account name placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. aliyun-prod'**
  String get websites_accountNameExample;

  /// DNS account form cloud provider type field label.
  ///
  /// In en, this message translates to:
  /// **'Cloud Provider Type'**
  String get websites_cloudProviderType;

  /// DNS account form authorization information section title.
  ///
  /// In en, this message translates to:
  /// **'Authorization Info'**
  String get websites_authorizationInfo;

  /// DNS account form authorization field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter {field}'**
  String websites_enterField(String field);

  /// DNS provider option: AliYun.
  ///
  /// In en, this message translates to:
  /// **'Alibaba Cloud'**
  String get websites_dnsProviderAliYun;

  /// DNS provider option: AliESA.
  ///
  /// In en, this message translates to:
  /// **'AliESA'**
  String get websites_dnsProviderAliEsa;

  /// DNS provider option: AWS Route 53.
  ///
  /// In en, this message translates to:
  /// **'AWS Route 53'**
  String get websites_dnsProviderAwsRoute53;

  /// DNS provider option: Tencent Cloud.
  ///
  /// In en, this message translates to:
  /// **'Tencent Cloud'**
  String get websites_dnsProviderTencentCloud;

  /// DNS provider option: Huawei Cloud.
  ///
  /// In en, this message translates to:
  /// **'Huawei Cloud'**
  String get websites_dnsProviderHuaweiCloud;

  /// DNS provider option: Volcengine.
  ///
  /// In en, this message translates to:
  /// **'Volcengine'**
  String get websites_dnsProviderVolcengine;

  /// DNS provider option: Baidu Cloud.
  ///
  /// In en, this message translates to:
  /// **'Baidu Cloud'**
  String get websites_dnsProviderBaiduCloud;

  /// DNS provider option: RainYun.
  ///
  /// In en, this message translates to:
  /// **'RainYun'**
  String get websites_dnsProviderRainYun;

  /// DNS provider option: West.cn.
  ///
  /// In en, this message translates to:
  /// **'West.cn'**
  String get websites_dnsProviderWestCn;

  /// DNS provider option: Cloudflare.
  ///
  /// In en, this message translates to:
  /// **'Cloudflare'**
  String get websites_dnsProviderCloudflare;

  /// DNS provider option: GoDaddy.
  ///
  /// In en, this message translates to:
  /// **'GoDaddy'**
  String get websites_dnsProviderGoDaddy;

  /// DNS provider option: Vercel.
  ///
  /// In en, this message translates to:
  /// **'Vercel'**
  String get websites_dnsProviderVercel;

  /// DNS provider option: CloudDNS.
  ///
  /// In en, this message translates to:
  /// **'CloudDNS'**
  String get websites_dnsProviderCloudDns;

  /// DNS provider option: NameSilo.
  ///
  /// In en, this message translates to:
  /// **'NameSilo'**
  String get websites_dnsProviderNameSilo;

  /// DNS provider option: NameCheap.
  ///
  /// In en, this message translates to:
  /// **'NameCheap'**
  String get websites_dnsProviderNameCheap;

  /// DNS provider option: Name.com.
  ///
  /// In en, this message translates to:
  /// **'Name.com'**
  String get websites_dnsProviderNameCom;

  /// DNS provider option: Dynu.
  ///
  /// In en, this message translates to:
  /// **'Dynu'**
  String get websites_dnsProviderDynu;

  /// DNS provider option: reg.ru.
  ///
  /// In en, this message translates to:
  /// **'reg.ru'**
  String get websites_dnsProviderRegRu;

  /// DNS provider option: FreeMyIP.
  ///
  /// In en, this message translates to:
  /// **'FreeMyIP'**
  String get websites_dnsProviderFreeMyIp;

  /// DNS provider option: ClouDNS.
  ///
  /// In en, this message translates to:
  /// **'ClouDNS'**
  String get websites_dnsProviderClouDns;

  /// DNS provider option: Spaceship.
  ///
  /// In en, this message translates to:
  /// **'Spaceship'**
  String get websites_dnsProviderSpaceship;

  /// DNS provider option: OVH.
  ///
  /// In en, this message translates to:
  /// **'OVH'**
  String get websites_dnsProviderOvh;

  /// DNS provider option: Acme DNS.
  ///
  /// In en, this message translates to:
  /// **'Acme DNS'**
  String get websites_dnsProviderAcmeDns;

  /// DNS provider option: PorkBun.
  ///
  /// In en, this message translates to:
  /// **'PorkBun'**
  String get websites_dnsProviderPorkBun;

  /// DNS provider option: deprecated DNSPod.
  ///
  /// In en, this message translates to:
  /// **'DNSPod (deprecated)'**
  String get websites_dnsProviderDnsPodDeprecated;

  /// DNS provider option: Technitium.
  ///
  /// In en, this message translates to:
  /// **'Technitium'**
  String get websites_dnsProviderTechnitium;

  /// SSL create sheet advanced options section title.
  ///
  /// In en, this message translates to:
  /// **'Advanced Options'**
  String get websites_advancedOptions;

  /// SSL create sheet key algorithm field label.
  ///
  /// In en, this message translates to:
  /// **'Key Algorithm'**
  String get websites_keyAlgorithm;

  /// SSL create sheet auto renew switch label.
  ///
  /// In en, this message translates to:
  /// **'Auto Renew'**
  String get websites_autoRenew;

  /// SSL create sheet skip DNS validation switch label.
  ///
  /// In en, this message translates to:
  /// **'Skip DNS Validation'**
  String get websites_skipDnsValidation;

  /// SSL create sheet disable CNAME switch label.
  ///
  /// In en, this message translates to:
  /// **'Disable CNAME'**
  String get websites_disableCname;

  /// SSL create sheet push to local directory switch label.
  ///
  /// In en, this message translates to:
  /// **'Push to Local Directory'**
  String get websites_pushToLocalDir;

  /// SSL create sheet certificate directory field label.
  ///
  /// In en, this message translates to:
  /// **'Certificate Directory'**
  String get websites_certificateDirectory;

  /// SSL create sheet absolute path placeholder.
  ///
  /// In en, this message translates to:
  /// **'Absolute path, e.g. /opt/ssl'**
  String get websites_absolutePathExample;

  /// SSL create sheet choose certificate directory title.
  ///
  /// In en, this message translates to:
  /// **'Choose Certificate Directory'**
  String get websites_chooseCertificateDirectory;

  /// SSL create sheet run script switch label.
  ///
  /// In en, this message translates to:
  /// **'Run Script After Applying'**
  String get websites_runScriptAfterApply;

  /// SSL create sheet DNS servers section title.
  ///
  /// In en, this message translates to:
  /// **'DNS Servers'**
  String get websites_dnsServers;

  /// SSL create sheet preferred DNS field label.
  ///
  /// In en, this message translates to:
  /// **'Preferred DNS'**
  String get websites_preferredDns;

  /// SSL create sheet optional DNS placeholder.
  ///
  /// In en, this message translates to:
  /// **'Optional, e.g. 8.8.8.8'**
  String get websites_optionalDnsExample;

  /// SSL create sheet alternate DNS field label.
  ///
  /// In en, this message translates to:
  /// **'Alternate DNS'**
  String get websites_alternateDns;

  /// SSL create sheet code editor title.
  ///
  /// In en, this message translates to:
  /// **'Execute Script'**
  String get websites_executeScript;

  /// SSL create sheet script content field label.
  ///
  /// In en, this message translates to:
  /// **'Script Content'**
  String get websites_scriptContent;

  /// SSL create sheet empty script hint.
  ///
  /// In en, this message translates to:
  /// **'Tap to edit script'**
  String get websites_editScriptHint;

  /// Container edit sheet title.
  ///
  /// In en, this message translates to:
  /// **'Edit Container'**
  String get containers_editContainer;

  /// Submit container edit action.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get containers_submit;

  /// Container edit load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load container configuration'**
  String get containers_loadConfigFailed;

  /// Container update task log title.
  ///
  /// In en, this message translates to:
  /// **'Updating container {name}'**
  String containers_updatingContainer(String name);

  /// Container update request failure message.
  ///
  /// In en, this message translates to:
  /// **'Update request failed: {error}'**
  String containers_updateRequestFailed(String error);

  /// Warning shown when editing an app-managed container.
  ///
  /// In en, this message translates to:
  /// **'This container comes from the App Store. App operations may invalidate the current edit.'**
  String get containers_appStoreWarning;

  /// Container basic info section title.
  ///
  /// In en, this message translates to:
  /// **'Basic Info'**
  String get containers_basicInfo;

  /// Container name field label.
  ///
  /// In en, this message translates to:
  /// **'Container Name'**
  String get containers_containerName;

  /// Required field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get containers_required;

  /// Container TTY option subtitle.
  ///
  /// In en, this message translates to:
  /// **'Allocate a pseudo-TTY (-t)'**
  String get containers_ttySubtitle;

  /// Container standard input option label.
  ///
  /// In en, this message translates to:
  /// **'Standard Input'**
  String get containers_stdin;

  /// Container standard input option subtitle.
  ///
  /// In en, this message translates to:
  /// **'Keep standard input open (-i)'**
  String get containers_stdinSubtitle;

  /// Container privileged mode option label.
  ///
  /// In en, this message translates to:
  /// **'Privileged Mode'**
  String get containers_privilegedMode;

  /// Container privileged mode option subtitle.
  ///
  /// In en, this message translates to:
  /// **'Grant the container full host root privileges'**
  String get containers_privilegedSubtitle;

  /// Container auto remove option label.
  ///
  /// In en, this message translates to:
  /// **'Auto Remove'**
  String get containers_autoRemove;

  /// Container auto remove option subtitle.
  ///
  /// In en, this message translates to:
  /// **'Automatically remove the container after it exits (--rm)'**
  String get containers_autoRemoveSubtitle;

  /// Container image name field label.
  ///
  /// In en, this message translates to:
  /// **'Image Name'**
  String get containers_imageName;

  /// Container port mappings section title.
  ///
  /// In en, this message translates to:
  /// **'Port Mappings'**
  String get containers_portMappings;

  /// Container publish all ports option label.
  ///
  /// In en, this message translates to:
  /// **'Publish All Ports'**
  String get containers_publishAllPorts;

  /// Container publish all ports option subtitle.
  ///
  /// In en, this message translates to:
  /// **'Randomly map all exposed container ports to the host'**
  String get containers_publishAllPortsSubtitle;

  /// Container host IP placeholder.
  ///
  /// In en, this message translates to:
  /// **'Host IP (optional)'**
  String get containers_hostIpOptional;

  /// Container host port placeholder.
  ///
  /// In en, this message translates to:
  /// **'Host Port'**
  String get containers_hostPort;

  /// Container port placeholder.
  ///
  /// In en, this message translates to:
  /// **'Container Port'**
  String get containers_containerPort;

  /// Add container port mapping button.
  ///
  /// In en, this message translates to:
  /// **'Add Port Mapping'**
  String get containers_addPortMapping;

  /// Container network settings section title.
  ///
  /// In en, this message translates to:
  /// **'Network Settings'**
  String get containers_networkSettings;

  /// Container hostname field label.
  ///
  /// In en, this message translates to:
  /// **'Hostname'**
  String get containers_hostname;

  /// Container hostname placeholder.
  ///
  /// In en, this message translates to:
  /// **'Container hostname'**
  String get containers_hostnamePlaceholder;

  /// Container domain name field label.
  ///
  /// In en, this message translates to:
  /// **'Domain Name'**
  String get containers_domainName;

  /// Container domain name placeholder.
  ///
  /// In en, this message translates to:
  /// **'Container domain name'**
  String get containers_domainNamePlaceholder;

  /// Container DNS servers label.
  ///
  /// In en, this message translates to:
  /// **'DNS Servers'**
  String get containers_dnsServers;

  /// Container DNS address placeholder.
  ///
  /// In en, this message translates to:
  /// **'DNS Address'**
  String get containers_dnsAddress;

  /// Add DNS button.
  ///
  /// In en, this message translates to:
  /// **'Add DNS'**
  String get containers_addDns;

  /// Container network row label.
  ///
  /// In en, this message translates to:
  /// **'Network: {name}'**
  String containers_networkValue(String name);

  /// No more networks toast.
  ///
  /// In en, this message translates to:
  /// **'No more networks available'**
  String get containers_noMoreNetworks;

  /// Select network picker title.
  ///
  /// In en, this message translates to:
  /// **'Select Network'**
  String get containers_selectNetwork;

  /// Add network button.
  ///
  /// In en, this message translates to:
  /// **'Add Network'**
  String get containers_addNetwork;

  /// Network create name required validation.
  ///
  /// In en, this message translates to:
  /// **'Network name is required'**
  String get containers_networkNameRequired;

  /// Network create success toast.
  ///
  /// In en, this message translates to:
  /// **'Network created'**
  String get containers_networkCreated;

  /// Create network sheet title.
  ///
  /// In en, this message translates to:
  /// **'Create Network'**
  String get containers_createNetwork;

  /// Network name required placeholder.
  ///
  /// In en, this message translates to:
  /// **'Network name (required)'**
  String get containers_networkNameRequiredPlaceholder;

  /// Network driver type label.
  ///
  /// In en, this message translates to:
  /// **'Driver Type'**
  String get containers_driverType;

  /// Network parent NIC section title.
  ///
  /// In en, this message translates to:
  /// **'Parent NIC'**
  String get containers_parentNic;

  /// Network select parent NIC label.
  ///
  /// In en, this message translates to:
  /// **'Select Parent NIC'**
  String get containers_selectParentNic;

  /// IPv4 configuration section title.
  ///
  /// In en, this message translates to:
  /// **'IPv4 Configuration'**
  String get containers_ipv4Config;

  /// Enable IPv4 option label.
  ///
  /// In en, this message translates to:
  /// **'Enable IPv4'**
  String get containers_enableIpv4;

  /// IPv4 subnet placeholder.
  ///
  /// In en, this message translates to:
  /// **'Subnet, e.g. 172.30.0.0/16'**
  String get containers_subnetExample;

  /// IPv4 gateway placeholder.
  ///
  /// In en, this message translates to:
  /// **'Gateway, e.g. 172.30.0.1'**
  String get containers_gatewayExample;

  /// IP range optional placeholder.
  ///
  /// In en, this message translates to:
  /// **'IP range (optional)'**
  String get containers_ipRangeOptional;

  /// Auxiliary address label.
  ///
  /// In en, this message translates to:
  /// **'Auxiliary Address'**
  String get containers_auxAddress;

  /// Generic name placeholder.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get containers_name;

  /// IP address placeholder.
  ///
  /// In en, this message translates to:
  /// **'IP Address'**
  String get containers_ipAddress;

  /// Add auxiliary address button.
  ///
  /// In en, this message translates to:
  /// **'Add Auxiliary Address'**
  String get containers_addAuxAddress;

  /// IPv6 configuration section title.
  ///
  /// In en, this message translates to:
  /// **'IPv6 Configuration'**
  String get containers_ipv6Config;

  /// Enable IPv6 option label.
  ///
  /// In en, this message translates to:
  /// **'Enable IPv6'**
  String get containers_enableIpv6;

  /// IPv6 subnet placeholder.
  ///
  /// In en, this message translates to:
  /// **'Subnet, e.g. fd00::/64'**
  String get containers_subnetV6Example;

  /// Gateway placeholder.
  ///
  /// In en, this message translates to:
  /// **'Gateway'**
  String get containers_gateway;

  /// Advanced options section title.
  ///
  /// In en, this message translates to:
  /// **'Advanced Options'**
  String get containers_advancedOptions;

  /// Network labels placeholder.
  ///
  /// In en, this message translates to:
  /// **'Labels (one per line, format: key=value)'**
  String get containers_labelsPlaceholder;

  /// Network driver options placeholder.
  ///
  /// In en, this message translates to:
  /// **'Driver options (one per line, format: key=value)'**
  String get containers_driverOptionsPlaceholder;

  /// Container IPv4 address placeholder.
  ///
  /// In en, this message translates to:
  /// **'IPv4 Address'**
  String get containers_ipv4Address;

  /// Container IPv6 address placeholder.
  ///
  /// In en, this message translates to:
  /// **'IPv6 Address'**
  String get containers_ipv6Address;

  /// Container MAC address placeholder.
  ///
  /// In en, this message translates to:
  /// **'MAC Address'**
  String get containers_macAddress;

  /// Container mounted volumes section title.
  ///
  /// In en, this message translates to:
  /// **'Mounted Volumes'**
  String get containers_mountedVolumes;

  /// Container volume source placeholder.
  ///
  /// In en, this message translates to:
  /// **'Host directory / volume name'**
  String get containers_hostDirOrVolume;

  /// Container volume target placeholder.
  ///
  /// In en, this message translates to:
  /// **'Container directory'**
  String get containers_containerDir;

  /// Container volume read write mode.
  ///
  /// In en, this message translates to:
  /// **'Read/Write'**
  String get containers_readWrite;

  /// Container volume read only mode.
  ///
  /// In en, this message translates to:
  /// **'Read Only'**
  String get containers_readOnly;

  /// Custom volume path option.
  ///
  /// In en, this message translates to:
  /// **'Custom Path'**
  String get containers_customPath;

  /// Add mount button.
  ///
  /// In en, this message translates to:
  /// **'Add Mount'**
  String get containers_addMount;

  /// Default mount propagation label.
  ///
  /// In en, this message translates to:
  /// **'Default Propagation'**
  String get containers_defaultPropagation;

  /// Mount propagation picker title.
  ///
  /// In en, this message translates to:
  /// **'Propagation Type'**
  String get containers_propagationType;

  /// Mount propagation picker message.
  ///
  /// In en, this message translates to:
  /// **'Choose the mount propagation behavior between host and container'**
  String get containers_propagationMessage;

  /// Private mount propagation label.
  ///
  /// In en, this message translates to:
  /// **'Private'**
  String get containers_propagationPrivate;

  /// Private mount propagation description.
  ///
  /// In en, this message translates to:
  /// **'Mounts do not propagate; host and container mounts are isolated'**
  String get containers_propagationPrivateDesc;

  /// Recursive private mount propagation label.
  ///
  /// In en, this message translates to:
  /// **'Recursive Private'**
  String get containers_propagationRprivate;

  /// Recursive private mount propagation description.
  ///
  /// In en, this message translates to:
  /// **'Private mode recursively applied to submounts'**
  String get containers_propagationRprivateDesc;

  /// Shared mount propagation label.
  ///
  /// In en, this message translates to:
  /// **'Shared'**
  String get containers_propagationShared;

  /// Shared mount propagation description.
  ///
  /// In en, this message translates to:
  /// **'Mounts sync both ways between host and container'**
  String get containers_propagationSharedDesc;

  /// Recursive shared mount propagation label.
  ///
  /// In en, this message translates to:
  /// **'Recursive Shared'**
  String get containers_propagationRshared;

  /// Recursive shared mount propagation description.
  ///
  /// In en, this message translates to:
  /// **'Shared mode recursively applied to submounts'**
  String get containers_propagationRsharedDesc;

  /// Slave mount propagation label.
  ///
  /// In en, this message translates to:
  /// **'Slave'**
  String get containers_propagationSlave;

  /// Slave mount propagation description.
  ///
  /// In en, this message translates to:
  /// **'Host mounts sync to the container, but container mounts do not affect the host'**
  String get containers_propagationSlaveDesc;

  /// Recursive slave mount propagation label.
  ///
  /// In en, this message translates to:
  /// **'Recursive Slave'**
  String get containers_propagationRslave;

  /// Recursive slave mount propagation description.
  ///
  /// In en, this message translates to:
  /// **'Slave mode recursively applied to submounts'**
  String get containers_propagationRslaveDesc;

  /// Container hosts mapping section title.
  ///
  /// In en, this message translates to:
  /// **'Hosts Mapping'**
  String get containers_hostsMapping;

  /// Add host mapping button.
  ///
  /// In en, this message translates to:
  /// **'Add Host'**
  String get containers_addHost;

  /// Container command settings section title.
  ///
  /// In en, this message translates to:
  /// **'Command Settings'**
  String get containers_commandSettings;

  /// Container working directory field label.
  ///
  /// In en, this message translates to:
  /// **'Working Directory'**
  String get containers_workingDir;

  /// Container user field label.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get containers_user;

  /// Container command field label.
  ///
  /// In en, this message translates to:
  /// **'Command'**
  String get containers_command;

  /// Container entrypoint field label.
  ///
  /// In en, this message translates to:
  /// **'Entrypoint'**
  String get containers_entrypoint;

  /// Container resource limits section title.
  ///
  /// In en, this message translates to:
  /// **'Resource Limits'**
  String get containers_resourceLimits;

  /// Container CPU shares field label.
  ///
  /// In en, this message translates to:
  /// **'CPU Shares'**
  String get containers_cpuShares;

  /// Container CPU shares field subtitle.
  ///
  /// In en, this message translates to:
  /// **'Default 1024. Increase it to get more CPU time'**
  String get containers_cpuSharesSubtitle;

  /// Container CPU limit field label.
  ///
  /// In en, this message translates to:
  /// **'CPU Limit'**
  String get containers_cpuLimit;

  /// Container unlimited zero field subtitle.
  ///
  /// In en, this message translates to:
  /// **'0 means unlimited'**
  String get containers_unlimitedZero;

  /// Container CPU cores max suffix.
  ///
  /// In en, this message translates to:
  /// **'cores (max {max})'**
  String containers_cpuCoresMax(String max);

  /// Container memory limit field label.
  ///
  /// In en, this message translates to:
  /// **'Memory Limit'**
  String get containers_memoryLimit;

  /// Container memory max suffix.
  ///
  /// In en, this message translates to:
  /// **'MB (max {max})'**
  String containers_memoryMbMax(String max);

  /// Container labels section title.
  ///
  /// In en, this message translates to:
  /// **'Labels'**
  String get containers_labels;

  /// Container environment variables section title.
  ///
  /// In en, this message translates to:
  /// **'Environment Variables'**
  String get containers_envVars;

  /// Generic add item button label.
  ///
  /// In en, this message translates to:
  /// **'Add {title}'**
  String containers_addItem(String title);

  /// Container restart policy section title.
  ///
  /// In en, this message translates to:
  /// **'Restart Policy'**
  String get containers_restartPolicy;

  /// Container restart policy always label.
  ///
  /// In en, this message translates to:
  /// **'Always Restart'**
  String get containers_restartAlways;

  /// Container restart policy no label.
  ///
  /// In en, this message translates to:
  /// **'Do Not Restart'**
  String get containers_restartNo;

  /// Container restart policy on-failure label.
  ///
  /// In en, this message translates to:
  /// **'Restart on Failure'**
  String get containers_restartOnFailure;

  /// Container restart policy unless-stopped label.
  ///
  /// In en, this message translates to:
  /// **'Unless Manually Stopped'**
  String get containers_restartUnlessStopped;

  /// Start action label.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get containers_start;

  /// Stop action label.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get containers_stop;

  /// Restart action label.
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get containers_restart;

  /// Docker operation success toast.
  ///
  /// In en, this message translates to:
  /// **'Docker {action} succeeded'**
  String containers_dockerActionSucceeded(String action);

  /// Docker operation failure toast.
  ///
  /// In en, this message translates to:
  /// **'Docker {action} failed'**
  String containers_dockerActionFailed(String action);

  /// Stop Docker confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Stopping Docker will interrupt all running containers. Continue?'**
  String get containers_stopDockerConfirm;

  /// Restart Docker confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Running containers will be interrupted briefly while Docker restarts. Continue?'**
  String get containers_restartDockerConfirm;

  /// Docker config updated restarting toast.
  ///
  /// In en, this message translates to:
  /// **'Configuration updated. Docker is restarting'**
  String get containers_configUpdatedRestarting;

  /// Docker daemon config missing title.
  ///
  /// In en, this message translates to:
  /// **'Configuration file not found'**
  String get containers_configFileMissing;

  /// Docker daemon config missing content.
  ///
  /// In en, this message translates to:
  /// **'This Docker environment has not created daemon.json yet, so direct editing is unavailable.'**
  String get containers_configFileMissingContent;

  /// Docker full config editor subtitle.
  ///
  /// In en, this message translates to:
  /// **'Docker Full Configuration'**
  String get containers_dockerFullConfig;

  /// Docker daemon json saved toast.
  ///
  /// In en, this message translates to:
  /// **'daemon.json saved. Docker is restarting'**
  String get containers_daemonSavedRestarting;

  /// Docker daemon json read failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to read daemon.json'**
  String get containers_readDaemonFailed;

  /// Container loading label.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get containers_loading;

  /// Docker version label.
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String containers_versionValue(String version);

  /// Docker service running subtitle.
  ///
  /// In en, this message translates to:
  /// **'Service is running'**
  String get containers_serviceRunning;

  /// Running status label.
  ///
  /// In en, this message translates to:
  /// **'Running'**
  String get containers_running;

  /// All containers filter with count.
  ///
  /// In en, this message translates to:
  /// **'All ({count})'**
  String containers_allCount(int count);

  /// Container state filter label with count.
  ///
  /// In en, this message translates to:
  /// **'{label} ({count})'**
  String containers_filterCount(String label, int count);

  /// Container exited state label.
  ///
  /// In en, this message translates to:
  /// **'Stopped'**
  String get containers_stateExited;

  /// Container paused state label.
  ///
  /// In en, this message translates to:
  /// **'Paused'**
  String get containers_statePaused;

  /// Container created state label.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get containers_stateCreated;

  /// Container restarting state label.
  ///
  /// In en, this message translates to:
  /// **'Restarting'**
  String get containers_stateRestarting;

  /// Container removing state label.
  ///
  /// In en, this message translates to:
  /// **'Removing'**
  String get containers_stateRemoving;

  /// Container dead state label.
  ///
  /// In en, this message translates to:
  /// **'Abnormal'**
  String get containers_stateDead;

  /// Stopped status label.
  ///
  /// In en, this message translates to:
  /// **'Stopped'**
  String get containers_stopped;

  /// Docker service operations section title.
  ///
  /// In en, this message translates to:
  /// **'Service Operations'**
  String get containers_serviceOperations;

  /// Start Docker service subtitle.
  ///
  /// In en, this message translates to:
  /// **'Start Docker Service'**
  String get containers_startDockerService;

  /// Stop Docker service subtitle.
  ///
  /// In en, this message translates to:
  /// **'Stop Docker Service'**
  String get containers_stopDockerService;

  /// Restart Docker service subtitle.
  ///
  /// In en, this message translates to:
  /// **'Restart Docker Service'**
  String get containers_restartDockerService;

  /// Docker basic configuration section title.
  ///
  /// In en, this message translates to:
  /// **'Basic Configuration'**
  String get containers_basicConfig;

  /// Docker registry mirrors action title.
  ///
  /// In en, this message translates to:
  /// **'Registry Mirrors'**
  String get containers_imageAccelerator;

  /// Docker insecure registries action title.
  ///
  /// In en, this message translates to:
  /// **'Insecure Registries'**
  String get containers_insecureRegistries;

  /// Not configured label.
  ///
  /// In en, this message translates to:
  /// **'Not configured'**
  String get containers_notConfigured;

  /// Generic item count label.
  ///
  /// In en, this message translates to:
  /// **'{count} items'**
  String containers_itemCount(int count);

  /// Enabled label.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get containers_enabled;

  /// Disabled label.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get containers_disabled;

  /// Docker IPv6 config updated toast.
  ///
  /// In en, this message translates to:
  /// **'IPv6 configuration updated. Docker is restarting'**
  String get containers_ipv6ConfigUpdatedRestarting;

  /// Docker log rotation action title.
  ///
  /// In en, this message translates to:
  /// **'Log Rotation'**
  String get containers_logRotation;

  /// Docker log config updated toast.
  ///
  /// In en, this message translates to:
  /// **'Log configuration updated. Docker is restarting'**
  String get containers_logConfigUpdatedRestarting;

  /// Docker switch options section title.
  ///
  /// In en, this message translates to:
  /// **'Switch Options'**
  String get containers_switchOptions;

  /// Docker live restore unavailable subtitle.
  ///
  /// In en, this message translates to:
  /// **'Unavailable in Swarm mode'**
  String get containers_swarmUnavailable;

  /// Enable live restore confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Enable Live Restore'**
  String get containers_enableLiveRestore;

  /// Disable live restore confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Disable Live Restore'**
  String get containers_disableLiveRestore;

  /// Enable live restore confirmation content.
  ///
  /// In en, this message translates to:
  /// **'When enabled, running containers will not be interrupted if the Docker daemon stops or crashes. The daemon will take them over again after it restarts.\n\nThis operation will restart Docker. Continue?'**
  String get containers_enableLiveRestoreContent;

  /// Disable live restore confirmation content.
  ///
  /// In en, this message translates to:
  /// **'When disabled, all running containers will stop when the Docker daemon stops.\n\nThis operation will restart Docker. Continue?'**
  String get containers_disableLiveRestoreContent;

  /// Docker advanced configuration section title.
  ///
  /// In en, this message translates to:
  /// **'Advanced Configuration'**
  String get containers_advancedConfig;

  /// Docker socket path updated toast.
  ///
  /// In en, this message translates to:
  /// **'Sock Path updated'**
  String get containers_sockPathUpdated;

  /// Docker full configuration section title.
  ///
  /// In en, this message translates to:
  /// **'Full Configuration'**
  String get containers_allConfig;

  /// Edit daemon json action title.
  ///
  /// In en, this message translates to:
  /// **'Edit daemon.json'**
  String get containers_editDaemonJson;

  /// Edit daemon json action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Edit the Docker daemon configuration file directly'**
  String get containers_editDaemonJsonSubtitle;

  /// Docker settings loading label.
  ///
  /// In en, this message translates to:
  /// **'Loading Docker settings'**
  String get containers_loadingDockerSettings;

  /// Docker unavailable message when service is not installed.
  ///
  /// In en, this message translates to:
  /// **'Docker container service was not detected\nContainer management is unavailable'**
  String get containers_dockerNotDetected;

  /// Docker unavailable message when service is stopped.
  ///
  /// In en, this message translates to:
  /// **'Docker container service is not running\nConfigure Docker service'**
  String get containers_dockerNotRunning;

  /// Docker unavailable title.
  ///
  /// In en, this message translates to:
  /// **'Service Unavailable'**
  String get containers_serviceUnavailable;

  /// Configure Docker service button.
  ///
  /// In en, this message translates to:
  /// **'Configure Docker Service'**
  String get containers_configureDockerService;

  /// Container resource count card title.
  ///
  /// In en, this message translates to:
  /// **'Resource Count'**
  String get containers_resourceCount;

  /// Containers resource label.
  ///
  /// In en, this message translates to:
  /// **'Containers'**
  String get containers_containers;

  /// Compose resource label.
  ///
  /// In en, this message translates to:
  /// **'Compose'**
  String get containers_compose;

  /// Compose running count status.
  ///
  /// In en, this message translates to:
  /// **'{running}/{total} running'**
  String containers_composeRunningStatus(int running, int total);

  /// Compose container operations section title.
  ///
  /// In en, this message translates to:
  /// **'Container Operations'**
  String get containers_containerOperations;

  /// Start compose subtitle.
  ///
  /// In en, this message translates to:
  /// **'Start all containers in this compose'**
  String get containers_startComposeSubtitle;

  /// Stop compose subtitle.
  ///
  /// In en, this message translates to:
  /// **'Stop all containers in this compose'**
  String get containers_stopComposeSubtitle;

  /// Restart compose subtitle.
  ///
  /// In en, this message translates to:
  /// **'Restart all containers in this compose'**
  String get containers_restartComposeSubtitle;

  /// Compose management section title.
  ///
  /// In en, this message translates to:
  /// **'Compose Management'**
  String get containers_composeManagement;

  /// Edit compose subtitle.
  ///
  /// In en, this message translates to:
  /// **'Modify the Docker Compose configuration file'**
  String get containers_editComposeSubtitle;

  /// Logs action label.
  ///
  /// In en, this message translates to:
  /// **'Logs'**
  String get containers_logs;

  /// Container log sheet title.
  ///
  /// In en, this message translates to:
  /// **'{name} Logs'**
  String containers_logSheetTitle(String name);

  /// All option label.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get containers_all;

  /// Last day log filter option.
  ///
  /// In en, this message translates to:
  /// **'Last day'**
  String get containers_lastDay;

  /// Last hours log filter option.
  ///
  /// In en, this message translates to:
  /// **'Last {hours} hours'**
  String containers_lastHours(int hours);

  /// Last minutes log filter option.
  ///
  /// In en, this message translates to:
  /// **'Last {minutes} minutes'**
  String containers_lastMinutes(int minutes);

  /// Container log load failure message.
  ///
  /// In en, this message translates to:
  /// **'Failed to load logs: {error}'**
  String containers_loadLogsFailed(String error);

  /// No container logs label.
  ///
  /// In en, this message translates to:
  /// **'No logs'**
  String get containers_noLogs;

  /// Clear container logs dialog title.
  ///
  /// In en, this message translates to:
  /// **'Clear Logs'**
  String get containers_clearLogs;

  /// Clear logs confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Clearing logs requires restarting the container. This action cannot be rolled back. Continue?'**
  String get containers_clearLogsConfirm;

  /// Clear action label.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get containers_clear;

  /// Logs cleared toast.
  ///
  /// In en, this message translates to:
  /// **'Logs cleared'**
  String get containers_logsCleared;

  /// Clear logs failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to clear logs'**
  String get containers_clearLogsFailed;

  /// No exportable logs warning.
  ///
  /// In en, this message translates to:
  /// **'No logs to export'**
  String get containers_noExportableLogs;

  /// Log filter label.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get containers_filter;

  /// Log tail count label.
  ///
  /// In en, this message translates to:
  /// **'Lines'**
  String get containers_lineCount;

  /// Time switch label.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get containers_time;

  /// Follow logs switch label.
  ///
  /// In en, this message translates to:
  /// **'Follow'**
  String get containers_follow;

  /// Compose logs subtitle.
  ///
  /// In en, this message translates to:
  /// **'View combined logs for all containers'**
  String get containers_composeLogsSubtitle;

  /// Terminal action label.
  ///
  /// In en, this message translates to:
  /// **'Terminal'**
  String get containers_terminal;

  /// Compose terminal subtitle.
  ///
  /// In en, this message translates to:
  /// **'Enter the primary container\'s interactive terminal'**
  String get containers_composeTerminalSubtitle;

  /// Delete compose subtitle.
  ///
  /// In en, this message translates to:
  /// **'Remove the compose and related containers (keep data)'**
  String get containers_deleteComposeSubtitle;

  /// Compose operation confirmation.
  ///
  /// In en, this message translates to:
  /// **'Run {operation} on compose {name}?'**
  String containers_composeOperationConfirm(String operation, String name);

  /// Operation submitted toast.
  ///
  /// In en, this message translates to:
  /// **'{operation} operation submitted'**
  String containers_operationSubmitted(String operation);

  /// Named operation failure toast.
  ///
  /// In en, this message translates to:
  /// **'{operation} operation failed'**
  String containers_operationNamedFailed(String operation);

  /// Compose deleted toast.
  ///
  /// In en, this message translates to:
  /// **'Compose deleted'**
  String get containers_composeDeleted;

  /// Delete compose failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete compose'**
  String get containers_deleteComposeFailed;

  /// Compose templates resource label.
  ///
  /// In en, this message translates to:
  /// **'Compose Templates'**
  String get containers_composeTemplates;

  /// Images resource label.
  ///
  /// In en, this message translates to:
  /// **'Images'**
  String get containers_images;

  /// Image repositories resource label.
  ///
  /// In en, this message translates to:
  /// **'Image Repositories'**
  String get containers_imageRepos;

  /// Networks resource label.
  ///
  /// In en, this message translates to:
  /// **'Networks'**
  String get containers_networks;

  /// Running container count label.
  ///
  /// In en, this message translates to:
  /// **'Running {count}'**
  String containers_runningCount(int count);

  /// Container disk usage card title.
  ///
  /// In en, this message translates to:
  /// **'Disk Usage'**
  String get containers_diskUsage;

  /// Local volumes usage label.
  ///
  /// In en, this message translates to:
  /// **'Local Volumes'**
  String get containers_localVolumes;

  /// Build cache usage label.
  ///
  /// In en, this message translates to:
  /// **'Build Cache'**
  String get containers_buildCache;

  /// Docker configuration card title.
  ///
  /// In en, this message translates to:
  /// **'Docker Configuration'**
  String get containers_dockerConfig;

  /// Docker experimental features label.
  ///
  /// In en, this message translates to:
  /// **'Experimental Features'**
  String get containers_experimentalFeatures;

  /// Docker log size label.
  ///
  /// In en, this message translates to:
  /// **'Log Size'**
  String get containers_logSize;

  /// Docker log file count label.
  ///
  /// In en, this message translates to:
  /// **'Log File Count'**
  String get containers_logFileCount;

  /// Container maintenance section title.
  ///
  /// In en, this message translates to:
  /// **'Maintenance'**
  String get containers_maintenance;

  /// Container terminal action title.
  ///
  /// In en, this message translates to:
  /// **'Run Terminal'**
  String get containers_runTerminal;

  /// Container terminal action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Enter the container and run commands'**
  String get containers_runTerminalSubtitle;

  /// Container logs action title.
  ///
  /// In en, this message translates to:
  /// **'View Logs'**
  String get containers_viewLogs;

  /// Container logs action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View container logs in real time'**
  String get containers_viewLogsSubtitle;

  /// Container monitor action title.
  ///
  /// In en, this message translates to:
  /// **'Real-time Monitor'**
  String get containers_realtimeMonitor;

  /// Container monitor action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View CPU, memory, network, and other metrics'**
  String get containers_realtimeMonitorSubtitle;

  /// Container lifecycle section title.
  ///
  /// In en, this message translates to:
  /// **'Lifecycle'**
  String get containers_lifecycle;

  /// Resume container action title.
  ///
  /// In en, this message translates to:
  /// **'Resume Container'**
  String get containers_restoreContainer;

  /// Start container action title.
  ///
  /// In en, this message translates to:
  /// **'Start Container'**
  String get containers_startContainer;

  /// Resume container action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Resume from paused state'**
  String get containers_restoreContainerSubtitle;

  /// Start container action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Start the stopped container'**
  String get containers_startContainerSubtitle;

  /// Stop container action title.
  ///
  /// In en, this message translates to:
  /// **'Stop Container'**
  String get containers_stopContainer;

  /// Stop container action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Gracefully stop processes running in the container'**
  String get containers_stopContainerSubtitle;

  /// Restart container action title.
  ///
  /// In en, this message translates to:
  /// **'Restart Container'**
  String get containers_restartContainer;

  /// Restart container action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Stop and restart the container'**
  String get containers_restartContainerSubtitle;

  /// Pause action title.
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get containers_pause;

  /// Pause container operation title.
  ///
  /// In en, this message translates to:
  /// **'Pause Container'**
  String get containers_pauseContainer;

  /// Pause container action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Pause all processes in the container'**
  String get containers_pauseContainerSubtitle;

  /// Force stop action title.
  ///
  /// In en, this message translates to:
  /// **'Force Stop'**
  String get containers_forceStop;

  /// Force stop container operation title.
  ///
  /// In en, this message translates to:
  /// **'Force Stop Container'**
  String get containers_forceStopContainer;

  /// Force stop container action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Stop the container immediately'**
  String get containers_forceStopContainerSubtitle;

  /// Container configuration and updates section title.
  ///
  /// In en, this message translates to:
  /// **'Configuration & Updates'**
  String get containers_configAndUpdates;

  /// Edit container config action title.
  ///
  /// In en, this message translates to:
  /// **'Edit Configuration'**
  String get containers_editConfig;

  /// Edit container config action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Modify ports, environment, volume mappings, and more'**
  String get containers_editConfigSubtitle;

  /// Upgrade container action title.
  ///
  /// In en, this message translates to:
  /// **'Upgrade Container'**
  String get containers_upgradeContainer;

  /// Upgrade container action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Pull a new image and recreate the container'**
  String get containers_upgradeContainerSubtitle;

  /// Container data and images section title.
  ///
  /// In en, this message translates to:
  /// **'Data & Images'**
  String get containers_dataAndImages;

  /// Container backup action title.
  ///
  /// In en, this message translates to:
  /// **'Container Backup'**
  String get containers_containerBackup;

  /// Container backup action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Back up container data locally'**
  String get containers_containerBackupSubtitle;

  /// Container backup sheet title.
  ///
  /// In en, this message translates to:
  /// **'{name} Backups'**
  String containers_backupSheetTitle(String name);

  /// Container backup list load failure.
  ///
  /// In en, this message translates to:
  /// **'Failed to load backups'**
  String get containers_loadBackupsFailed;

  /// Run container backup task title.
  ///
  /// In en, this message translates to:
  /// **'Run Container Backup'**
  String get containers_runBackup;

  /// Container create backup failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to create backup'**
  String get containers_createBackupFailed;

  /// Container backup no remark label.
  ///
  /// In en, this message translates to:
  /// **'No remark'**
  String get containers_noRemark;

  /// Container backup run directory label.
  ///
  /// In en, this message translates to:
  /// **'Run Directory'**
  String get containers_runDirectory;

  /// Restore action label.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get containers_restore;

  /// Restore container backup task title.
  ///
  /// In en, this message translates to:
  /// **'Restore Container Backup'**
  String get containers_restoreBackupTask;

  /// Container restore backup failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to restore backup'**
  String get containers_restoreBackupFailed;

  /// Container delete backup title.
  ///
  /// In en, this message translates to:
  /// **'Delete Backup'**
  String get containers_deleteBackup;

  /// Container delete backup confirmation.
  ///
  /// In en, this message translates to:
  /// **'Delete backup file {fileName}? This action cannot be undone.'**
  String containers_deleteBackupConfirm(String fileName);

  /// Container backup deleted toast.
  ///
  /// In en, this message translates to:
  /// **'Backup deleted'**
  String get containers_backupDeleted;

  /// Container delete backup failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete backup'**
  String get containers_deleteBackupFailed;

  /// Container start backup button.
  ///
  /// In en, this message translates to:
  /// **'Start Backup'**
  String get containers_startBackup;

  /// Container backup compression password placeholder.
  ///
  /// In en, this message translates to:
  /// **'Compression password (optional)'**
  String get containers_compressionPasswordOptional;

  /// Container backup description placeholder.
  ///
  /// In en, this message translates to:
  /// **'Description (optional)'**
  String get containers_descriptionOptional;

  /// Stop container before backup option label.
  ///
  /// In en, this message translates to:
  /// **'Stop container before backup'**
  String get containers_stopBeforeBackup;

  /// Stop before backup hint.
  ///
  /// In en, this message translates to:
  /// **'When enabled, the container is stopped before backup and automatically restored after completion to ensure data consistency.'**
  String get containers_stopBeforeBackupHint;

  /// Container restore backup dialog title.
  ///
  /// In en, this message translates to:
  /// **'Restore Backup'**
  String get containers_restoreBackup;

  /// Container start restore button.
  ///
  /// In en, this message translates to:
  /// **'Start Restore'**
  String get containers_startRestore;

  /// Container restore password hint.
  ///
  /// In en, this message translates to:
  /// **'Leave blank if the backup has no compression password.'**
  String get containers_restorePasswordHint;

  /// Container restore password placeholder.
  ///
  /// In en, this message translates to:
  /// **'Restore password (optional)'**
  String get containers_restorePasswordOptional;

  /// Container restore timeout label.
  ///
  /// In en, this message translates to:
  /// **'Timeout'**
  String get containers_timeout;

  /// Minutes unit label.
  ///
  /// In en, this message translates to:
  /// **'minutes'**
  String get containers_minutes;

  /// Container restore timeout hint.
  ///
  /// In en, this message translates to:
  /// **'Default is 30 minutes. -1 means unlimited.'**
  String get containers_restoreTimeoutHint;

  /// Commit image action title.
  ///
  /// In en, this message translates to:
  /// **'Commit Image'**
  String get containers_commitImage;

  /// Commit image action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Commit this container as a new image'**
  String get containers_commitImageSubtitle;

  /// Container danger zone section title.
  ///
  /// In en, this message translates to:
  /// **'Danger Zone'**
  String get containers_dangerZone;

  /// Delete container operation title.
  ///
  /// In en, this message translates to:
  /// **'Delete Container'**
  String get containers_deleteContainer;

  /// Delete container action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Permanently remove this container and related configuration'**
  String get containers_deleteContainerSubtitle;

  /// Container operation confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Run {operation} on container {name}?'**
  String containers_operationConfirm(String operation, String name);

  /// Container operation failure toast.
  ///
  /// In en, this message translates to:
  /// **'Operation failed'**
  String get containers_operationFailed;

  /// Prune containers title.
  ///
  /// In en, this message translates to:
  /// **'Prune Containers'**
  String get containers_pruneContainers;

  /// Prune containers confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Pruning containers will delete all stopped containers.\n\nIf containers come from the App Store, after pruning you need to go to App Store > Installed and tap Rebuild to reinstall.\n\nThis action cannot be rolled back. Continue?'**
  String get containers_pruneContainersConfirm;

  /// Prune containers failure toast.
  ///
  /// In en, this message translates to:
  /// **'Prune failed'**
  String get containers_pruneFailed;

  /// Container pin enabled toast.
  ///
  /// In en, this message translates to:
  /// **'Added to favorites'**
  String get containers_addedFavorite;

  /// Container pin disabled toast.
  ///
  /// In en, this message translates to:
  /// **'Removed from favorites'**
  String get containers_removedFavorite;

  /// Generic operation label.
  ///
  /// In en, this message translates to:
  /// **'Operation'**
  String get containers_operationGeneric;

  /// Commit image task title.
  ///
  /// In en, this message translates to:
  /// **'Commit image: {name}'**
  String containers_commitImageTask(String name);

  /// Upgrade container task title.
  ///
  /// In en, this message translates to:
  /// **'Upgrade container: {name}'**
  String containers_upgradeContainerTask(String name);

  /// Validation message when a container form name is empty.
  ///
  /// In en, this message translates to:
  /// **'Name is required'**
  String get containers_nameRequired;

  /// Validation message when image repository address is empty.
  ///
  /// In en, this message translates to:
  /// **'Repository address is required'**
  String get containers_repoAddressRequired;

  /// Validation message when image repository address includes http or https.
  ///
  /// In en, this message translates to:
  /// **'Repository address cannot include a protocol prefix'**
  String get containers_repoAddressNoProtocol;

  /// Dialog title for HTTP image repository warning.
  ///
  /// In en, this message translates to:
  /// **'HTTP Protocol Warning'**
  String get containers_httpProtocolWarning;

  /// Dialog content for HTTP image repository warning.
  ///
  /// In en, this message translates to:
  /// **'HTTP does not encrypt data in transit and has security risks. Continue?'**
  String get containers_httpProtocolWarningContent;

  /// Toast shown after updating an image repository.
  ///
  /// In en, this message translates to:
  /// **'Repository updated'**
  String get containers_repoUpdated;

  /// Toast shown after creating an image repository.
  ///
  /// In en, this message translates to:
  /// **'Repository created'**
  String get containers_repoCreated;

  /// Generic container feature update failure toast.
  ///
  /// In en, this message translates to:
  /// **'Update failed'**
  String get containers_updateFailed;

  /// Generic container feature creation failure toast.
  ///
  /// In en, this message translates to:
  /// **'Create failed'**
  String get containers_createFailed;

  /// Edit image repository sheet title.
  ///
  /// In en, this message translates to:
  /// **'Edit Repository'**
  String get containers_editRepo;

  /// Add image repository sheet title.
  ///
  /// In en, this message translates to:
  /// **'Add Repository'**
  String get containers_addRepo;

  /// Generic add action in container feature.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get containers_add;

  /// Image repository name placeholder.
  ///
  /// In en, this message translates to:
  /// **'Repository name (required)'**
  String get containers_repoNameRequiredPlaceholder;

  /// Image repository address placeholder.
  ///
  /// In en, this message translates to:
  /// **'Repository address, e.g. registry.example.com:5000'**
  String get containers_repoAddressPlaceholder;

  /// Protocol section title.
  ///
  /// In en, this message translates to:
  /// **'Protocol'**
  String get containers_protocol;

  /// Authentication settings section title.
  ///
  /// In en, this message translates to:
  /// **'Authentication Settings'**
  String get containers_authSettings;

  /// Image repository authentication switch label.
  ///
  /// In en, this message translates to:
  /// **'Enable Authentication'**
  String get containers_enableAuth;

  /// Image repository authentication switch subtitle.
  ///
  /// In en, this message translates to:
  /// **'Use a username and password to access the repository'**
  String get containers_enableAuthSubtitle;

  /// Username field label.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get containers_username;

  /// Password field label.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get containers_password;

  /// Validation message when compose content is empty.
  ///
  /// In en, this message translates to:
  /// **'Enter Docker Compose content'**
  String get containers_composeContentRequired;

  /// Error message when compose validation fails.
  ///
  /// In en, this message translates to:
  /// **'Validation failed. Check the configuration.'**
  String get containers_composeValidationFailed;

  /// Create compose task log title.
  ///
  /// In en, this message translates to:
  /// **'Creating compose {name}'**
  String containers_creatingComposeTask(String name);

  /// Update compose task log title.
  ///
  /// In en, this message translates to:
  /// **'Updating compose {name}'**
  String containers_updatingComposeTask(String name);

  /// Retry failure toast.
  ///
  /// In en, this message translates to:
  /// **'Retry failed'**
  String get containers_retryFailed;

  /// New compose sheet title.
  ///
  /// In en, this message translates to:
  /// **'New Compose'**
  String get containers_newCompose;

  /// Edit compose sheet title.
  ///
  /// In en, this message translates to:
  /// **'Edit Compose {name}'**
  String containers_editComposeTitle(String name);

  /// Compose folder name placeholder.
  ///
  /// In en, this message translates to:
  /// **'Folder name (required)'**
  String get containers_folderNameRequiredPlaceholder;

  /// Compose save path label.
  ///
  /// In en, this message translates to:
  /// **'Save path:'**
  String get containers_savePathLabel;

  /// Compose configuration section title.
  ///
  /// In en, this message translates to:
  /// **'Compose Configuration'**
  String get containers_composeConfig;

  /// Extra environment variables section title.
  ///
  /// In en, this message translates to:
  /// **'Extra Environment Variables'**
  String get containers_extraEnvVars;

  /// Compose create options section title.
  ///
  /// In en, this message translates to:
  /// **'Create Options'**
  String get containers_createOptions;

  /// Compose update options section title.
  ///
  /// In en, this message translates to:
  /// **'Update Options'**
  String get containers_updateOptions;

  /// Compose force pull option label.
  ///
  /// In en, this message translates to:
  /// **'Force Pull Image'**
  String get containers_forcePullImage;

  /// Compose force pull option subtitle.
  ///
  /// In en, this message translates to:
  /// **'Ignore existing server images and pull from the remote repository again'**
  String get containers_forcePullImageSubtitle;

  /// Empty state prompt for compose environment variables.
  ///
  /// In en, this message translates to:
  /// **'Tap to add extra environment variables'**
  String get containers_tapAddEnvVar;

  /// Button label to add a compose environment variable row.
  ///
  /// In en, this message translates to:
  /// **'Add Environment Variable'**
  String get containers_addEnvVarItem;

  /// Compose configuration load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load compose configuration'**
  String get containers_loadComposeConfigFailed;

  /// Network default driver subtitle.
  ///
  /// In en, this message translates to:
  /// **'Default driver'**
  String get containers_defaultDriver;

  /// Network delete disabled subtitle for system networks.
  ///
  /// In en, this message translates to:
  /// **'System networks cannot be deleted'**
  String get containers_systemNetworkCannotDelete;

  /// Network delete action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Permanently delete this network'**
  String get containers_deleteNetworkSubtitle;

  /// Network inspect overview section title.
  ///
  /// In en, this message translates to:
  /// **'Inspect Overview'**
  String get containers_inspectOverview;

  /// Network inspect ID label.
  ///
  /// In en, this message translates to:
  /// **'Network ID'**
  String get containers_networkId;

  /// Network driver label.
  ///
  /// In en, this message translates to:
  /// **'Driver'**
  String get containers_driver;

  /// Network subnet label.
  ///
  /// In en, this message translates to:
  /// **'Subnet'**
  String get containers_subnet;

  /// Network created time label.
  ///
  /// In en, this message translates to:
  /// **'Created At'**
  String get containers_createdAt;

  /// Custom network badge label.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get containers_custom;

  /// Network inspect loading label.
  ///
  /// In en, this message translates to:
  /// **'Reading network details'**
  String get containers_readingNetworkDetails;

  /// Generic read failure label.
  ///
  /// In en, this message translates to:
  /// **'Read failed'**
  String get containers_readFailed;

  /// Generic parse failure label.
  ///
  /// In en, this message translates to:
  /// **'Parse failed'**
  String get containers_parseFailed;

  /// Build cache prune action and task title.
  ///
  /// In en, this message translates to:
  /// **'Prune Build Cache'**
  String get containers_pruneBuildCache;

  /// Build cache prune confirmation content.
  ///
  /// In en, this message translates to:
  /// **'This will prune all build cache and free disk space. Continue?'**
  String get containers_pruneBuildCacheConfirm;

  /// Image count display text.
  ///
  /// In en, this message translates to:
  /// **'{count} images'**
  String containers_imageCount(int count);

  /// Batch delete images dialog title.
  ///
  /// In en, this message translates to:
  /// **'Delete Images'**
  String get containers_batchDeleteImages;

  /// Delete image dialog title.
  ///
  /// In en, this message translates to:
  /// **'Delete Image'**
  String get containers_deleteImage;

  /// Delete image confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Delete {name}?'**
  String containers_deleteImageConfirm(String name);

  /// Generic delete failure toast.
  ///
  /// In en, this message translates to:
  /// **'Delete failed'**
  String get containers_deleteFailed;

  /// Pull image task title.
  ///
  /// In en, this message translates to:
  /// **'Pull Image'**
  String get containers_pullImage;

  /// Pull image failure toast.
  ///
  /// In en, this message translates to:
  /// **'Pull failed'**
  String get containers_pullFailed;

  /// Image file picker title.
  ///
  /// In en, this message translates to:
  /// **'Select Image File'**
  String get containers_selectImageFile;

  /// Import action label.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get containers_import;

  /// Import image task title.
  ///
  /// In en, this message translates to:
  /// **'Import Image'**
  String get containers_importImage;

  /// Import image failure toast.
  ///
  /// In en, this message translates to:
  /// **'Import failed'**
  String get containers_importFailed;

  /// Build image task title.
  ///
  /// In en, this message translates to:
  /// **'Build image {name}'**
  String containers_buildImageTask(String name);

  /// Build image failure toast.
  ///
  /// In en, this message translates to:
  /// **'Build failed'**
  String get containers_buildFailed;

  /// Update image task title.
  ///
  /// In en, this message translates to:
  /// **'Update Image'**
  String get containers_updateImage;

  /// Image used status label.
  ///
  /// In en, this message translates to:
  /// **'In use'**
  String get containers_imageUsed;

  /// Image unused status label.
  ///
  /// In en, this message translates to:
  /// **'Unused'**
  String get containers_imageUnused;

  /// Common actions section title.
  ///
  /// In en, this message translates to:
  /// **'Common Actions'**
  String get containers_commonActions;

  /// Image push action label.
  ///
  /// In en, this message translates to:
  /// **'Push'**
  String get containers_push;

  /// Image push action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Push the image to a remote repository'**
  String get containers_pushImageSubtitle;

  /// Image export action label.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get containers_export;

  /// Image export action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Export the image as a tar file'**
  String get containers_exportImageSubtitle;

  /// Image update action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Pull the latest version of this image again'**
  String get containers_updateImageSubtitle;

  /// Image update confirmation content.
  ///
  /// In en, this message translates to:
  /// **'The following tags will be pulled again:\n{tags}'**
  String containers_updateImageConfirm(String tags);

  /// Pull action label.
  ///
  /// In en, this message translates to:
  /// **'Pull'**
  String get containers_pull;

  /// Image tags action label.
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get containers_tags;

  /// Image tags action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Modify or add image tags'**
  String get containers_tagsSubtitle;

  /// Delete local image action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Remove this image from local storage'**
  String get containers_removeLocalImageSubtitle;

  /// Prune images sheet and task title.
  ///
  /// In en, this message translates to:
  /// **'Prune Images'**
  String get containers_pruneImages;

  /// Prune action label.
  ///
  /// In en, this message translates to:
  /// **'Prune'**
  String get containers_prune;

  /// Image prune empty warning and state.
  ///
  /// In en, this message translates to:
  /// **'There are no images to prune in the current scope'**
  String get containers_noImagesToPrune;

  /// Image prune selection required warning.
  ///
  /// In en, this message translates to:
  /// **'Select at least one image'**
  String get containers_selectAtLeastOneImage;

  /// Prune images failure toast.
  ///
  /// In en, this message translates to:
  /// **'Prune failed'**
  String get containers_pruneImagesFailed;

  /// Prune scope option for dangling images.
  ///
  /// In en, this message translates to:
  /// **'Dangling Images'**
  String get containers_danglingImages;

  /// Prune scope option for unused images.
  ///
  /// In en, this message translates to:
  /// **'Unused Images'**
  String get containers_unusedImages;

  /// Prunable image count label.
  ///
  /// In en, this message translates to:
  /// **'{count} prunable images'**
  String containers_prunableImageCount(int count);

  /// Select all checkbox label.
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get containers_selectAll;

  /// Image list load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load image list'**
  String get containers_loadImageListFailed;

  /// Dockerfile picker title.
  ///
  /// In en, this message translates to:
  /// **'Select Dockerfile'**
  String get containers_selectDockerfile;

  /// Image name required validation.
  ///
  /// In en, this message translates to:
  /// **'Image name is required'**
  String get containers_imageNameRequired;

  /// Dockerfile content required validation.
  ///
  /// In en, this message translates to:
  /// **'Enter Dockerfile content'**
  String get containers_dockerfileContentRequired;

  /// Dockerfile path required validation.
  ///
  /// In en, this message translates to:
  /// **'Select a Dockerfile path'**
  String get containers_dockerfilePathRequired;

  /// Build image sheet title.
  ///
  /// In en, this message translates to:
  /// **'Build Image'**
  String get containers_buildImage;

  /// Build action label.
  ///
  /// In en, this message translates to:
  /// **'Build'**
  String get containers_build;

  /// Image name input placeholder.
  ///
  /// In en, this message translates to:
  /// **'Image name (required, e.g. myapp:latest)'**
  String get containers_imageNamePlaceholder;

  /// Dockerfile manual input option.
  ///
  /// In en, this message translates to:
  /// **'Manual Input'**
  String get containers_manualInput;

  /// Dockerfile server path option.
  ///
  /// In en, this message translates to:
  /// **'Server Path'**
  String get containers_serverPath;

  /// Dockerfile path placeholder.
  ///
  /// In en, this message translates to:
  /// **'Select or enter a Dockerfile path'**
  String get containers_dockerfilePathPlaceholder;

  /// Image build additional options section title.
  ///
  /// In en, this message translates to:
  /// **'Additional Options (optional)'**
  String get containers_additionalOptionsOptional;

  /// Image build tags placeholder.
  ///
  /// In en, this message translates to:
  /// **'Tags (one per line)'**
  String get containers_tagsMultilinePlaceholder;

  /// Image build args placeholder.
  ///
  /// In en, this message translates to:
  /// **'Args (one per line, e.g. HTTP_PROXY=http://x.x.x.x)'**
  String get containers_argsMultilinePlaceholder;

  /// Container list page title.
  ///
  /// In en, this message translates to:
  /// **'Container List'**
  String get containers_containerList;

  /// Container search placeholder and menu label.
  ///
  /// In en, this message translates to:
  /// **'Search containers...'**
  String get containers_searchContainers;

  /// More menu button label.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get containers_more;

  /// Container list sort by CPU menu item.
  ///
  /// In en, this message translates to:
  /// **'Sort by CPU Usage'**
  String get containers_sortByCpu;

  /// Container list sort by memory menu item.
  ///
  /// In en, this message translates to:
  /// **'Sort by Memory Usage'**
  String get containers_sortByMemory;

  /// Container list restore default sort menu item.
  ///
  /// In en, this message translates to:
  /// **'Restore Default Sort'**
  String get containers_restoreDefaultSort;

  /// Container list load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load containers'**
  String get containers_loadContainersFailed;

  /// Container compose page title.
  ///
  /// In en, this message translates to:
  /// **'Container Compose'**
  String get containers_containerCompose;

  /// Compose search placeholder.
  ///
  /// In en, this message translates to:
  /// **'Search compose...'**
  String get containers_searchCompose;

  /// Create compose menu item.
  ///
  /// In en, this message translates to:
  /// **'Create Compose'**
  String get containers_createCompose;

  /// Refresh list menu item.
  ///
  /// In en, this message translates to:
  /// **'Refresh List'**
  String get containers_refreshList;

  /// Empty state title when compose search has no results.
  ///
  /// In en, this message translates to:
  /// **'No compose found'**
  String get containers_noComposeFound;

  /// Empty state title when no compose exists.
  ///
  /// In en, this message translates to:
  /// **'No compose'**
  String get containers_noCompose;

  /// Empty state subtitle for search no results.
  ///
  /// In en, this message translates to:
  /// **'Try another keyword'**
  String get containers_tryAnotherKeyword;

  /// Empty state subtitle when no compose exists.
  ///
  /// In en, this message translates to:
  /// **'You have not created any Docker Compose projects'**
  String get containers_noComposeSubtitle;

  /// Compose list load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load compose list'**
  String get containers_loadComposeListFailed;

  /// Image export directory picker title.
  ///
  /// In en, this message translates to:
  /// **'Select Export Directory'**
  String get containers_selectExportDirectory;

  /// Image missing tag validation.
  ///
  /// In en, this message translates to:
  /// **'Image has no available tag'**
  String get containers_imageNoAvailableTag;

  /// Image export directory required validation.
  ///
  /// In en, this message translates to:
  /// **'Select an export directory'**
  String get containers_selectExportDirectoryRequired;

  /// Image export file name required validation.
  ///
  /// In en, this message translates to:
  /// **'Enter a file name'**
  String get containers_enterFileName;

  /// Export image sheet and task title.
  ///
  /// In en, this message translates to:
  /// **'Export Image'**
  String get containers_exportImage;

  /// Image export failure toast.
  ///
  /// In en, this message translates to:
  /// **'Export failed'**
  String get containers_exportFailed;

  /// Image local tag section title.
  ///
  /// In en, this message translates to:
  /// **'Local Tag'**
  String get containers_localTag;

  /// Image export save directory section title.
  ///
  /// In en, this message translates to:
  /// **'Save Directory'**
  String get containers_saveDirectory;

  /// Image export server directory placeholder.
  ///
  /// In en, this message translates to:
  /// **'Select a server directory'**
  String get containers_selectServerDirectory;

  /// File name field label.
  ///
  /// In en, this message translates to:
  /// **'File Name'**
  String get containers_fileName;

  /// Image export file name placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. my-backup (without .tar)'**
  String get containers_imageExportFilePlaceholder;

  /// Image push name required validation.
  ///
  /// In en, this message translates to:
  /// **'Enter a push name'**
  String get containers_pushNameRequired;

  /// Push image sheet and task title.
  ///
  /// In en, this message translates to:
  /// **'Push Image'**
  String get containers_pushImage;

  /// Image push failure toast.
  ///
  /// In en, this message translates to:
  /// **'Push failed'**
  String get containers_pushFailed;

  /// Image push empty repository label.
  ///
  /// In en, this message translates to:
  /// **'No repository configured'**
  String get containers_noRepoConfigured;

  /// Image push name field label.
  ///
  /// In en, this message translates to:
  /// **'Push Name'**
  String get containers_pushName;

  /// Image push name placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. myimage:latest'**
  String get containers_pushNamePlaceholder;

  /// Image tag empty validation.
  ///
  /// In en, this message translates to:
  /// **'Add at least one tag'**
  String get containers_addAtLeastOneTag;

  /// Image tag edit failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to edit tags'**
  String get containers_editTagsFailed;

  /// Edit image tags sheet title.
  ///
  /// In en, this message translates to:
  /// **'Edit Tags'**
  String get containers_editTags;

  /// Image ID section title.
  ///
  /// In en, this message translates to:
  /// **'Image ID'**
  String get containers_imageId;

  /// Image tag list section title.
  ///
  /// In en, this message translates to:
  /// **'Tag List'**
  String get containers_tagList;

  /// Add image tag action.
  ///
  /// In en, this message translates to:
  /// **'Add Tag'**
  String get containers_addTag;

  /// Image tag edit hint.
  ///
  /// In en, this message translates to:
  /// **'Tip: after submitting, the app compares with existing tags and adds or removes Docker tags accordingly.'**
  String get containers_tagEditHint;

  /// Image tag input placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. nginx:latest'**
  String get containers_tagPlaceholder;

  /// Commit container image name required validation.
  ///
  /// In en, this message translates to:
  /// **'Enter a new image name'**
  String get containers_enterNewImageName;

  /// Image name invalid validation title.
  ///
  /// In en, this message translates to:
  /// **'Invalid image name format'**
  String get containers_imageNameInvalid;

  /// Image name invalid validation description.
  ///
  /// In en, this message translates to:
  /// **'Use letters, numbers, :@/.-_, and do not start with a special character'**
  String get containers_imageNameInvalidDescription;

  /// Generic submit failure toast.
  ///
  /// In en, this message translates to:
  /// **'Submit failed'**
  String get containers_submitFailed;

  /// Commit container new image name field label.
  ///
  /// In en, this message translates to:
  /// **'New Image Name'**
  String get containers_newImageName;

  /// Commit container new image name placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. my-nginx:v1.0'**
  String get containers_newImageNamePlaceholder;

  /// Commit container message field label.
  ///
  /// In en, this message translates to:
  /// **'Commit Message'**
  String get containers_commitInfo;

  /// Optional description placeholder.
  ///
  /// In en, this message translates to:
  /// **'Optional description'**
  String get containers_optionalDescription;

  /// Author field label.
  ///
  /// In en, this message translates to:
  /// **'Author'**
  String get containers_author;

  /// Optional author placeholder.
  ///
  /// In en, this message translates to:
  /// **'Optional author information'**
  String get containers_optionalAuthor;

  /// Commit container pause switch label.
  ///
  /// In en, this message translates to:
  /// **'Pause container during commit'**
  String get containers_pauseDuringCommit;

  /// Commit container pause switch subtitle.
  ///
  /// In en, this message translates to:
  /// **'Enable this to ensure data consistency'**
  String get containers_pauseDuringCommitSubtitle;

  /// Upgrade container target image required validation.
  ///
  /// In en, this message translates to:
  /// **'Enter a target image'**
  String get containers_targetImageRequired;

  /// Upgrade container submit failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to submit upgrade'**
  String get containers_submitUpgradeFailed;

  /// Upgrade container target image field label.
  ///
  /// In en, this message translates to:
  /// **'Target Image'**
  String get containers_targetImage;

  /// Upgrade container data loss warning.
  ///
  /// In en, this message translates to:
  /// **'Upgrade rebuilds the container. Any data that is not persisted will be lost.'**
  String get containers_upgradeDataLossWarning;

  /// Container monitor interval option.
  ///
  /// In en, this message translates to:
  /// **'{seconds} sec'**
  String containers_intervalSeconds(int seconds);

  /// Container monitor CPU card title.
  ///
  /// In en, this message translates to:
  /// **'CPU Usage'**
  String get containers_cpuUsage;

  /// Container monitor memory card title.
  ///
  /// In en, this message translates to:
  /// **'Memory Usage'**
  String get containers_memoryUsage;

  /// Container monitor network traffic card title.
  ///
  /// In en, this message translates to:
  /// **'Network Traffic (RX / TX)'**
  String get containers_networkTraffic;

  /// Container monitor disk IO card title.
  ///
  /// In en, this message translates to:
  /// **'Disk I/O (Read / Write)'**
  String get containers_diskIo;

  /// Network search placeholder.
  ///
  /// In en, this message translates to:
  /// **'Search networks...'**
  String get containers_searchNetworks;

  /// System network badge label.
  ///
  /// In en, this message translates to:
  /// **'System Network'**
  String get containers_systemNetwork;

  /// Network actions section title.
  ///
  /// In en, this message translates to:
  /// **'Network Operations'**
  String get containers_networkOperations;

  /// View details action label.
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get containers_viewDetails;

  /// View network details action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View network configuration details'**
  String get containers_viewNetworkDetailsSubtitle;

  /// Prune unused networks action and dialog title.
  ///
  /// In en, this message translates to:
  /// **'Prune Unused Networks'**
  String get containers_pruneUnusedNetworks;

  /// Prune unused networks action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Prune all unused networks'**
  String get containers_pruneUnusedNetworksSubtitle;

  /// Get network details failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to get details'**
  String get containers_getDetailsFailed;

  /// Empty state title when network search has no results.
  ///
  /// In en, this message translates to:
  /// **'No networks found'**
  String get containers_noNetworkFound;

  /// Empty state title when no network exists.
  ///
  /// In en, this message translates to:
  /// **'No networks'**
  String get containers_noNetwork;

  /// Empty state subtitle when no network exists.
  ///
  /// In en, this message translates to:
  /// **'There are no Docker networks'**
  String get containers_noNetworkSubtitle;

  /// Network list load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load network list'**
  String get containers_loadNetworkListFailed;

  /// Delete network confirmation title.
  ///
  /// In en, this message translates to:
  /// **'Delete Network'**
  String get containers_deleteNetwork;

  /// Delete single network confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Delete network \"{name}\"?'**
  String containers_deleteNetworkConfirm(String name);

  /// Delete multiple networks confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Delete the selected {count} networks?'**
  String containers_deleteNetworksConfirm(int count);

  /// Generic delete success toast.
  ///
  /// In en, this message translates to:
  /// **'Deleted'**
  String get containers_deleteSuccess;

  /// Prune unused networks confirmation content.
  ///
  /// In en, this message translates to:
  /// **'This will prune all unused networks. Continue?'**
  String get containers_pruneUnusedNetworksConfirm;

  /// Prune networks task title.
  ///
  /// In en, this message translates to:
  /// **'Prune Networks'**
  String get containers_pruneNetworks;

  /// Prune networks failure toast.
  ///
  /// In en, this message translates to:
  /// **'Prune failed'**
  String get containers_pruneNetworksFailed;

  /// Normal status label.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get containers_statusNormal;

  /// Abnormal status label.
  ///
  /// In en, this message translates to:
  /// **'Abnormal'**
  String get containers_statusAbnormal;

  /// Image repository actions section title.
  ///
  /// In en, this message translates to:
  /// **'Repository Operations'**
  String get containers_repoOperations;

  /// Edit image repository action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Modify repository address and authentication information'**
  String get containers_editRepoSubtitle;

  /// Sync action label.
  ///
  /// In en, this message translates to:
  /// **'Sync'**
  String get containers_sync;

  /// Sync image repository action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Check repository connection status'**
  String get containers_syncRepoSubtitle;

  /// Delete image repository dialog title.
  ///
  /// In en, this message translates to:
  /// **'Delete Repository'**
  String get containers_deleteRepo;

  /// Delete image repository action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Permanently delete this repository'**
  String get containers_deleteRepoSubtitle;

  /// Delete image repository confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Delete this image repository?'**
  String get containers_deleteRepoConfirm;

  /// Image repository sync success toast.
  ///
  /// In en, this message translates to:
  /// **'Sync succeeded'**
  String get containers_syncSuccess;

  /// Image repository sync failure toast.
  ///
  /// In en, this message translates to:
  /// **'Sync failed'**
  String get containers_syncFailed;

  /// Image repository search placeholder.
  ///
  /// In en, this message translates to:
  /// **'Search repositories...'**
  String get containers_searchRepos;

  /// Empty state title when repository search has no results.
  ///
  /// In en, this message translates to:
  /// **'No repositories found'**
  String get containers_noRepoFound;

  /// Empty state title when no repository exists.
  ///
  /// In en, this message translates to:
  /// **'No repositories'**
  String get containers_noRepo;

  /// Empty state subtitle when no repository exists.
  ///
  /// In en, this message translates to:
  /// **'You have not added any image repositories'**
  String get containers_noRepoSubtitle;

  /// Image repository list load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load repository list'**
  String get containers_loadRepoListFailed;

  /// Image repository auth badge label.
  ///
  /// In en, this message translates to:
  /// **'Auth'**
  String get containers_auth;

  /// Compose template search placeholder.
  ///
  /// In en, this message translates to:
  /// **'Search templates...'**
  String get containers_searchTemplates;

  /// Create compose template action and sheet title.
  ///
  /// In en, this message translates to:
  /// **'Create Template'**
  String get containers_createTemplate;

  /// Edit compose template sheet title.
  ///
  /// In en, this message translates to:
  /// **'Edit Template'**
  String get containers_editTemplate;

  /// Import compose templates menu item and editor title.
  ///
  /// In en, this message translates to:
  /// **'Import Templates'**
  String get containers_importTemplate;

  /// Export all compose templates menu item.
  ///
  /// In en, this message translates to:
  /// **'Export All'**
  String get containers_exportAll;

  /// Export templates empty toast.
  ///
  /// In en, this message translates to:
  /// **'No templates to export'**
  String get containers_noTemplatesToExport;

  /// Empty state title when template search has no results.
  ///
  /// In en, this message translates to:
  /// **'No templates found'**
  String get containers_noTemplateFound;

  /// Empty state title when no template exists.
  ///
  /// In en, this message translates to:
  /// **'No templates'**
  String get containers_noTemplate;

  /// Empty state subtitle when no template exists.
  ///
  /// In en, this message translates to:
  /// **'You have not created any compose templates'**
  String get containers_noTemplateSubtitle;

  /// Compose template list load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load template list'**
  String get containers_loadTemplateListFailed;

  /// Compose template update success toast.
  ///
  /// In en, this message translates to:
  /// **'Template updated'**
  String get containers_templateUpdated;

  /// Compose template create success toast.
  ///
  /// In en, this message translates to:
  /// **'Template created'**
  String get containers_templateCreated;

  /// Compose template name placeholder.
  ///
  /// In en, this message translates to:
  /// **'Template name (required)'**
  String get containers_templateNameRequiredPlaceholder;

  /// Compose template description placeholder.
  ///
  /// In en, this message translates to:
  /// **'Template description (optional)'**
  String get containers_templateDescriptionOptional;

  /// Compose content section title.
  ///
  /// In en, this message translates to:
  /// **'Compose Content'**
  String get containers_composeContent;

  /// Compose template badge label.
  ///
  /// In en, this message translates to:
  /// **'Template'**
  String get containers_template;

  /// Compose template action section title.
  ///
  /// In en, this message translates to:
  /// **'Template Operations'**
  String get containers_templateOperations;

  /// Edit compose template action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Modify template name, description, and content'**
  String get containers_editTemplateSubtitle;

  /// View template content action label.
  ///
  /// In en, this message translates to:
  /// **'View Content'**
  String get containers_viewContent;

  /// View template YAML action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View YAML configuration content'**
  String get containers_viewYamlSubtitle;

  /// Delete compose template action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Permanently delete this template'**
  String get containers_deleteTemplateSubtitle;

  /// Import template file read unavailable error.
  ///
  /// In en, this message translates to:
  /// **'Unable to read file'**
  String get containers_cannotReadFile;

  /// Import template file read failure.
  ///
  /// In en, this message translates to:
  /// **'Failed to read file'**
  String get containers_readFileFailed;

  /// Import template JSON root validation.
  ///
  /// In en, this message translates to:
  /// **'Invalid JSON: root node must be an array'**
  String get containers_jsonRootArrayRequired;

  /// Import template no valid data error.
  ///
  /// In en, this message translates to:
  /// **'No valid template data found'**
  String get containers_noValidTemplateData;

  /// Import template success toast.
  ///
  /// In en, this message translates to:
  /// **'Successfully imported {count} templates'**
  String containers_importTemplatesSuccess(int count);

  /// Batch delete compose templates title.
  ///
  /// In en, this message translates to:
  /// **'Delete Templates'**
  String get containers_batchDeleteTemplates;

  /// Delete compose template title.
  ///
  /// In en, this message translates to:
  /// **'Delete Template'**
  String get containers_deleteTemplate;

  /// Delete single compose template confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Delete this template?'**
  String get containers_deleteTemplateConfirm;

  /// Delete multiple compose templates confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Delete {count} templates?'**
  String containers_deleteTemplatesConfirm(int count);

  /// Docker log rotation parameters section title.
  ///
  /// In en, this message translates to:
  /// **'Rotation Parameters'**
  String get containers_logRotationParams;

  /// Docker log size limit field label.
  ///
  /// In en, this message translates to:
  /// **'Log size limit'**
  String get containers_logSizeLimit;

  /// Docker log size placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. 10m, 100m, 1g'**
  String get containers_logSizeExample;

  /// Docker max log files field label.
  ///
  /// In en, this message translates to:
  /// **'Max log files'**
  String get containers_maxLogFiles;

  /// Docker max log files placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. 3, 5, 10'**
  String get containers_maxLogFilesExample;

  /// Docker settings restart hint.
  ///
  /// In en, this message translates to:
  /// **'Docker will restart automatically to apply the new configuration.'**
  String get containers_dockerRestartApplyConfig;

  /// Current setting value subtitle.
  ///
  /// In en, this message translates to:
  /// **'Current: {value}'**
  String containers_currentValue(String value);

  /// cgroupfs driver description.
  ///
  /// In en, this message translates to:
  /// **'Traditional cgroup driver'**
  String get containers_cgroupFsDriverDesc;

  /// systemd cgroup driver description.
  ///
  /// In en, this message translates to:
  /// **'systemd integrated driver'**
  String get containers_cgroupSystemdDriverDesc;

  /// Address input placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter address'**
  String get containers_inputAddress;

  /// Empty data label.
  ///
  /// In en, this message translates to:
  /// **'No data'**
  String get containers_noData;

  /// Pull image repository toggle label.
  ///
  /// In en, this message translates to:
  /// **'Pull from image repository'**
  String get containers_pullFromRepo;

  /// Select image repository label.
  ///
  /// In en, this message translates to:
  /// **'Select Repository'**
  String get containers_selectRepo;

  /// Pull image submit button.
  ///
  /// In en, this message translates to:
  /// **'Pull Now'**
  String get containers_pullNow;

  /// Image search placeholder.
  ///
  /// In en, this message translates to:
  /// **'Search image name...'**
  String get containers_searchImages;

  /// Images empty state title.
  ///
  /// In en, this message translates to:
  /// **'No images'**
  String get containers_noImages;

  /// Image search empty state title.
  ///
  /// In en, this message translates to:
  /// **'No matching images found'**
  String get containers_noMatchingImages;

  /// Images empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'View and manage local Docker images here'**
  String get containers_imagesEmptySubtitle;

  /// Image search empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Try another search keyword'**
  String get containers_trySearchKeyword;

  /// Images page load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load images'**
  String get containers_loadImagesFailed;

  /// Memory short label.
  ///
  /// In en, this message translates to:
  /// **'Memory'**
  String get containers_memory;

  /// Compose card working directory label.
  ///
  /// In en, this message translates to:
  /// **'Working Directory'**
  String get containers_workDir;

  /// Compose card app store source label.
  ///
  /// In en, this message translates to:
  /// **'App Store'**
  String get containers_appStoreSource;

  /// Compose card local source label.
  ///
  /// In en, this message translates to:
  /// **'Local'**
  String get containers_localSource;

  /// Delete compose dialog title.
  ///
  /// In en, this message translates to:
  /// **'Delete Compose'**
  String get containers_deleteCompose;

  /// Confirm delete button label.
  ///
  /// In en, this message translates to:
  /// **'Confirm Delete'**
  String get containers_confirmDelete;

  /// Delete compose dialog content.
  ///
  /// In en, this message translates to:
  /// **'Delete compose {name}?'**
  String containers_deleteComposeConfirm(String name);

  /// Delete compose files option label.
  ///
  /// In en, this message translates to:
  /// **'Delete Files'**
  String get containers_deleteFiles;

  /// Delete compose files option subtitle.
  ///
  /// In en, this message translates to:
  /// **'Delete all files for this compose, including configuration and persistent files. Use with caution.'**
  String get containers_deleteFilesSubtitle;

  /// Force delete compose option label.
  ///
  /// In en, this message translates to:
  /// **'Force Delete'**
  String get containers_forceDelete;

  /// Force delete compose option subtitle.
  ///
  /// In en, this message translates to:
  /// **'Ignore errors during deletion and remove metadata at the end'**
  String get containers_forceDeleteSubtitle;

  /// Compose terminal open failure toast.
  ///
  /// In en, this message translates to:
  /// **'Unable to open terminal'**
  String get containers_openTerminalFailed;

  /// Compose terminal no containers description.
  ///
  /// In en, this message translates to:
  /// **'No available containers in this compose'**
  String get containers_composeNoAvailableContainer;

  /// Compose terminal container picker title.
  ///
  /// In en, this message translates to:
  /// **'Select Container'**
  String get containers_selectContainer;

  /// Compose terminal container picker message.
  ///
  /// In en, this message translates to:
  /// **'Select a container to enter its terminal'**
  String get containers_selectContainerMessage;

  /// Terminal container id missing toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to get container id'**
  String get containers_getContainerIdFailed;

  /// Container overview load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load container overview'**
  String get containers_loadOverviewFailed;

  /// Container backup load more failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to load more backups'**
  String get containers_loadMoreBackupsFailed;

  /// Database action sheet management section title.
  ///
  /// In en, this message translates to:
  /// **'Database Management'**
  String get databases_management;

  /// Database action title for changing password.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get databases_changePassword;

  /// Database action subtitle for changing password.
  ///
  /// In en, this message translates to:
  /// **'Change database password'**
  String get databases_changePasswordSubtitle;

  /// Database action title for access permissions.
  ///
  /// In en, this message translates to:
  /// **'Access'**
  String get databases_access;

  /// Database action subtitle for access permissions.
  ///
  /// In en, this message translates to:
  /// **'Manage database access permissions'**
  String get databases_accessSubtitle;

  /// Database action title for backup list.
  ///
  /// In en, this message translates to:
  /// **'Backups'**
  String get databases_backupList;

  /// Database action subtitle for backup list.
  ///
  /// In en, this message translates to:
  /// **'View and manage database backups'**
  String get databases_backupListSubtitle;

  /// Database action title for importing a backup.
  ///
  /// In en, this message translates to:
  /// **'Import Backup'**
  String get databases_importBackup;

  /// Database action subtitle for importing a backup.
  ///
  /// In en, this message translates to:
  /// **'Restore database from a backup file'**
  String get databases_importBackupSubtitle;

  /// Danger zone section title.
  ///
  /// In en, this message translates to:
  /// **'Danger Zone'**
  String get databases_dangerZone;

  /// Database delete action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Permanently delete this database'**
  String get databases_deleteSubtitle;

  /// Database connection info sheet title.
  ///
  /// In en, this message translates to:
  /// **'Connection Info'**
  String get databases_connectionInfo;

  /// Database load failure message with error details.
  ///
  /// In en, this message translates to:
  /// **'Load failed: {error}'**
  String databases_loadFailedWithError(Object error);

  /// Enable remote database access dialog title.
  ///
  /// In en, this message translates to:
  /// **'Enable Remote Access'**
  String get databases_enableRemoteAccess;

  /// Disable remote database access dialog title.
  ///
  /// In en, this message translates to:
  /// **'Disable Remote Access'**
  String get databases_disableRemoteAccess;

  /// Enable remote database access confirmation content.
  ///
  /// In en, this message translates to:
  /// **'After enabling this, the root user can connect to this database from any host. Enable only when necessary.'**
  String get databases_enableRemoteAccessContent;

  /// Disable remote database access confirmation content.
  ///
  /// In en, this message translates to:
  /// **'After disabling this, the root user can connect only from localhost.'**
  String get databases_disableRemoteAccessContent;

  /// Enable action label.
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get databases_enable;

  /// Disable action label.
  ///
  /// In en, this message translates to:
  /// **'Disable'**
  String get databases_disable;

  /// Remote access enabled success toast.
  ///
  /// In en, this message translates to:
  /// **'Remote access enabled'**
  String get databases_remoteAccessEnabled;

  /// Remote access disabled success toast.
  ///
  /// In en, this message translates to:
  /// **'Remote access disabled'**
  String get databases_remoteAccessDisabled;

  /// Generic database operation failure toast title.
  ///
  /// In en, this message translates to:
  /// **'Operation failed'**
  String get databases_operationFailed;

  /// Local database container connection section title.
  ///
  /// In en, this message translates to:
  /// **'Container Internal Connection'**
  String get databases_containerConnection;

  /// Local database external connection section title.
  ///
  /// In en, this message translates to:
  /// **'External / Remote Connection'**
  String get databases_externalConnection;

  /// Connection address field label.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get databases_address;

  /// Connection port field label.
  ///
  /// In en, this message translates to:
  /// **'Port'**
  String get databases_port;

  /// Database access permissions section title.
  ///
  /// In en, this message translates to:
  /// **'Access Permissions'**
  String get databases_accessPermissions;

  /// Database admin credentials section title.
  ///
  /// In en, this message translates to:
  /// **'Admin Credentials'**
  String get databases_adminCredentials;

  /// Database username field label.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get databases_username;

  /// Database password field label.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get databases_password;

  /// Remote access switch label.
  ///
  /// In en, this message translates to:
  /// **'Remote Access'**
  String get databases_remoteAccess;

  /// Enabled status label.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get databases_enabled;

  /// Disabled status label.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get databases_disabled;

  /// Remote database connection address section title.
  ///
  /// In en, this message translates to:
  /// **'Connection Address'**
  String get databases_connectionAddress;

  /// Remote database authentication section title.
  ///
  /// In en, this message translates to:
  /// **'Authentication'**
  String get databases_authentication;

  /// Database instance not running placeholder title.
  ///
  /// In en, this message translates to:
  /// **'Instance is not running'**
  String get databases_instanceNotRunning;

  /// Database instance not running status message.
  ///
  /// In en, this message translates to:
  /// **'Current database instance status: {status}\nStart the instance before managing databases.'**
  String databases_instanceStatusMessage(String status);

  /// Database delete pre-check failure toast.
  ///
  /// In en, this message translates to:
  /// **'Check failed'**
  String get databases_checkFailed;

  /// Database deletion success toast.
  ///
  /// In en, this message translates to:
  /// **'Database deleted'**
  String get databases_deleted;

  /// Database deletion failure toast.
  ///
  /// In en, this message translates to:
  /// **'Delete failed'**
  String get databases_deleteFailed;

  /// Delete database sheet title.
  ///
  /// In en, this message translates to:
  /// **'Delete Database'**
  String get databases_deleteDatabase;

  /// Delete database blocked warning.
  ///
  /// In en, this message translates to:
  /// **'The following resources are using this database. Remove the associations before deleting it.'**
  String get databases_deleteBlocked;

  /// Delete database warning.
  ///
  /// In en, this message translates to:
  /// **'This will permanently delete database \"{name}\" and all of its data. This cannot be recovered.'**
  String databases_deleteWarning(String name);

  /// Delete database confirmation input prompt.
  ///
  /// In en, this message translates to:
  /// **'Enter database name \"{name}\" to confirm deletion'**
  String databases_deleteConfirmInput(String name);

  /// Force delete option title.
  ///
  /// In en, this message translates to:
  /// **'Force Delete'**
  String get databases_forceDelete;

  /// Force delete option subtitle.
  ///
  /// In en, this message translates to:
  /// **'Continue removing the panel record even if database-side deletion fails'**
  String get databases_forceDeleteSubtitle;

  /// Delete backups option title.
  ///
  /// In en, this message translates to:
  /// **'Delete backups too'**
  String get databases_deleteBackups;

  /// Delete backups option subtitle.
  ///
  /// In en, this message translates to:
  /// **'Delete all backup files and records for this database'**
  String get databases_deleteBackupsSubtitle;

  /// Confirm database deletion button.
  ///
  /// In en, this message translates to:
  /// **'Confirm Delete'**
  String get databases_confirmDelete;

  /// New password required validation and placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter a new password'**
  String get databases_enterNewPassword;

  /// Password cannot contain spaces validation.
  ///
  /// In en, this message translates to:
  /// **'Password cannot contain spaces'**
  String get databases_passwordNoSpaces;

  /// Password minimum length validation.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get databases_passwordMinLength;

  /// Password change confirmation dialog title.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password Change'**
  String get databases_confirmPasswordChange;

  /// Password change warning when resources are using the database.
  ///
  /// In en, this message translates to:
  /// **'This database is used by websites or apps:\n{resources}\n\nChanging the password may affect related services. Continue?'**
  String databases_passwordChangeUsedWarning(String resources);

  /// Password change success toast.
  ///
  /// In en, this message translates to:
  /// **'Password changed'**
  String get databases_passwordChanged;

  /// Password change failure toast.
  ///
  /// In en, this message translates to:
  /// **'Password change failed'**
  String get databases_passwordChangeFailed;

  /// New password field label.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get databases_newPassword;

  /// Password change hint.
  ///
  /// In en, this message translates to:
  /// **'Password cannot contain spaces. Update related app configuration after changing it.'**
  String get databases_passwordChangeHint;

  /// Confirm password change button.
  ///
  /// In en, this message translates to:
  /// **'Confirm Change'**
  String get databases_confirmChange;

  /// Database backup sheet title.
  ///
  /// In en, this message translates to:
  /// **'{name} Backups'**
  String databases_backupSheetTitle(String name);

  /// Database backup list load failure title.
  ///
  /// In en, this message translates to:
  /// **'Failed to load backups'**
  String get databases_loadBackupsFailed;

  /// Database backup task title and sheet title.
  ///
  /// In en, this message translates to:
  /// **'Run Backup'**
  String get databases_runBackup;

  /// Database backup creation failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to create backup'**
  String get databases_createBackupFailed;

  /// Database backup empty remark fallback.
  ///
  /// In en, this message translates to:
  /// **'No remark'**
  String get databases_noRemark;

  /// Download action label.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get databases_download;

  /// Restore action label.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get databases_restore;

  /// Directory action label.
  ///
  /// In en, this message translates to:
  /// **'Directory'**
  String get databases_directory;

  /// Warning when backup directory is empty.
  ///
  /// In en, this message translates to:
  /// **'Backup directory is empty'**
  String get databases_backupDirectoryEmpty;

  /// Restore backup sheet and task title.
  ///
  /// In en, this message translates to:
  /// **'Restore Backup'**
  String get databases_restoreBackup;

  /// Database backup restore failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to restore backup'**
  String get databases_restoreBackupFailed;

  /// Delete backup dialog title.
  ///
  /// In en, this message translates to:
  /// **'Delete Backup'**
  String get databases_deleteBackup;

  /// Delete database backup confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Delete backup file {fileName}? This action cannot be undone.'**
  String databases_deleteBackupConfirm(String fileName);

  /// Database backup deletion success toast.
  ///
  /// In en, this message translates to:
  /// **'Backup deleted'**
  String get databases_deletedBackup;

  /// Database backup deletion failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete backup'**
  String get databases_deleteBackupFailed;

  /// Database backup compression password field label.
  ///
  /// In en, this message translates to:
  /// **'Compression Password'**
  String get databases_compressionPassword;

  /// Optional field placeholder.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get databases_optional;

  /// Database backup remark description field label.
  ///
  /// In en, this message translates to:
  /// **'Remark'**
  String get databases_remarkDescription;

  /// Database backup arguments section title.
  ///
  /// In en, this message translates to:
  /// **'Backup Arguments'**
  String get databases_backupArgs;

  /// Start database backup button.
  ///
  /// In en, this message translates to:
  /// **'Start Backup'**
  String get databases_startBackup;

  /// Database backup restore password hint.
  ///
  /// In en, this message translates to:
  /// **'Leave blank if the backup has no compression password.'**
  String get databases_restorePasswordHint;

  /// Database backup restore password field label.
  ///
  /// In en, this message translates to:
  /// **'Restore Password'**
  String get databases_restorePassword;

  /// Start restore button.
  ///
  /// In en, this message translates to:
  /// **'Start Restore'**
  String get databases_startRestore;

  /// Import backup source option for local upload.
  ///
  /// In en, this message translates to:
  /// **'Upload from Local'**
  String get databases_uploadFromLocal;

  /// Import backup source option for server files.
  ///
  /// In en, this message translates to:
  /// **'Choose from Server'**
  String get databases_chooseFromServer;

  /// Backup import upload failure toast.
  ///
  /// In en, this message translates to:
  /// **'Upload failed'**
  String get databases_uploadFailed;

  /// Server file picker title for choosing backup file.
  ///
  /// In en, this message translates to:
  /// **'Select Backup File'**
  String get databases_selectBackupFile;

  /// Supported database backup file formats hint.
  ///
  /// In en, this message translates to:
  /// **'Supported formats: .sql, .sql.gz, .tar.gz, .zip'**
  String get databases_supportedBackupFormats;

  /// Import backup empty state title.
  ///
  /// In en, this message translates to:
  /// **'No backup files'**
  String get databases_noBackupFiles;

  /// Import backup empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap + in the top right to add a backup file'**
  String get databases_addBackupFileHint;

  /// Backup import restore failure toast.
  ///
  /// In en, this message translates to:
  /// **'Restore failed'**
  String get databases_restoreFailed;

  /// Delete backup file dialog title.
  ///
  /// In en, this message translates to:
  /// **'Delete File'**
  String get databases_deleteFile;

  /// Delete backup file confirmation content.
  ///
  /// In en, this message translates to:
  /// **'Delete {fileName}?'**
  String databases_deleteFileConfirm(String fileName);

  /// Label for backup files from the server.
  ///
  /// In en, this message translates to:
  /// **'Server File'**
  String get databases_serverFile;

  /// Restore password optional placeholder.
  ///
  /// In en, this message translates to:
  /// **'Restore password (optional)'**
  String get databases_restorePasswordOptional;

  /// Remote database unbind success toast.
  ///
  /// In en, this message translates to:
  /// **'Unbound'**
  String get databases_unbound;

  /// Remote database unbind failure toast.
  ///
  /// In en, this message translates to:
  /// **'Unbind failed'**
  String get databases_unbindFailed;

  /// Unbind remote database sheet title.
  ///
  /// In en, this message translates to:
  /// **'Unbind Remote Instance'**
  String get databases_unbindRemoteInstance;

  /// Unbind remote database warning.
  ///
  /// In en, this message translates to:
  /// **'This will remove remote connection \"{name}\". The panel will no longer manage this instance.'**
  String databases_unbindWarning(String name);

  /// Unbind remote database confirmation input prompt.
  ///
  /// In en, this message translates to:
  /// **'Enter name \"{name}\" to confirm unbind'**
  String databases_unbindConfirmInput(String name);

  /// Force unbind option title.
  ///
  /// In en, this message translates to:
  /// **'Force Unbind'**
  String get databases_forceUnbind;

  /// Force unbind option subtitle.
  ///
  /// In en, this message translates to:
  /// **'Continue removing the panel record even if remote instance operations fail'**
  String get databases_forceUnbindSubtitle;

  /// Delete instance backups option subtitle.
  ///
  /// In en, this message translates to:
  /// **'Delete all backup files and records for this instance'**
  String get databases_deleteInstanceBackupsSubtitle;

  /// Confirm unbind button.
  ///
  /// In en, this message translates to:
  /// **'Confirm Unbind'**
  String get databases_confirmUnbind;

  /// Remote database source label.
  ///
  /// In en, this message translates to:
  /// **'Remote'**
  String get databases_remote;

  /// Local database source label.
  ///
  /// In en, this message translates to:
  /// **'Local'**
  String get databases_local;

  /// Database creation time label.
  ///
  /// In en, this message translates to:
  /// **'Created at {time}'**
  String databases_createdAt(String time);

  /// Empty database description fallback.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get databases_none;

  /// Database list empty state title.
  ///
  /// In en, this message translates to:
  /// **'No databases'**
  String get databases_emptyTitle;

  /// Database list empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'This instance has no databases yet\nUse the top-right menu to create one'**
  String get databases_emptySubtitle;

  /// Create database sheet title.
  ///
  /// In en, this message translates to:
  /// **'Create Database'**
  String get databases_createDatabase;

  /// Database name field label.
  ///
  /// In en, this message translates to:
  /// **'Database Name'**
  String get databases_databaseName;

  /// Database name required validation and placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter database name'**
  String get databases_enterDatabaseName;

  /// Database name cannot contain spaces validation.
  ///
  /// In en, this message translates to:
  /// **'Database name cannot contain spaces'**
  String get databases_databaseNameNoSpaces;

  /// Database name allowed characters validation.
  ///
  /// In en, this message translates to:
  /// **'Database name can only contain letters, numbers, and underscores'**
  String get databases_databaseNameAllowedChars;

  /// Username required validation and placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter username'**
  String get databases_enterUsername;

  /// Validation message when root is used for local database username.
  ///
  /// In en, this message translates to:
  /// **'Local databases cannot use root as the username'**
  String get databases_localRootUsernameForbidden;

  /// Password required validation and placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter password'**
  String get databases_enterPassword;

  /// IP address required validation.
  ///
  /// In en, this message translates to:
  /// **'Enter IP address or CIDR range'**
  String get databases_enterIpOrCidr;

  /// IP cannot contain spaces validation.
  ///
  /// In en, this message translates to:
  /// **'IP cannot contain spaces'**
  String get databases_ipNoSpaces;

  /// Database creation success toast.
  ///
  /// In en, this message translates to:
  /// **'Database created'**
  String get databases_created;

  /// Database creation failure toast.
  ///
  /// In en, this message translates to:
  /// **'Create failed'**
  String get databases_createFailed;

  /// Create database basic info section title.
  ///
  /// In en, this message translates to:
  /// **'Basic Info'**
  String get databases_basicInfo;

  /// Database character set section and field label.
  ///
  /// In en, this message translates to:
  /// **'Character Set'**
  String get databases_charset;

  /// Database collation field label.
  ///
  /// In en, this message translates to:
  /// **'Collation'**
  String get databases_collation;

  /// Default picker option label.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get databases_default;

  /// Database collation hint.
  ///
  /// In en, this message translates to:
  /// **'Leave blank to use the default collation for the character set'**
  String get databases_collationHint;

  /// Database permission grant scope field label.
  ///
  /// In en, this message translates to:
  /// **'Grant Scope'**
  String get databases_grantScope;

  /// Database permission option for any host.
  ///
  /// In en, this message translates to:
  /// **'Any Host (%)'**
  String get databases_anyHost;

  /// Database permission option for localhost only.
  ///
  /// In en, this message translates to:
  /// **'Localhost Only (localhost)'**
  String get databases_localhostOnly;

  /// Database permission option for specified IP.
  ///
  /// In en, this message translates to:
  /// **'Specified IP'**
  String get databases_specifiedIp;

  /// IP address field label.
  ///
  /// In en, this message translates to:
  /// **'IP Address'**
  String get databases_ipAddress;

  /// IP address placeholder example.
  ///
  /// In en, this message translates to:
  /// **'Example: 192.168.1.0/24'**
  String get databases_ipExample;

  /// Optional description section title.
  ///
  /// In en, this message translates to:
  /// **'Description (Optional)'**
  String get databases_descriptionOptional;

  /// Description field label.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get databases_description;

  /// Optional remark placeholder.
  ///
  /// In en, this message translates to:
  /// **'Optional remark'**
  String get databases_optionalRemark;

  /// PostgreSQL encoding field label.
  ///
  /// In en, this message translates to:
  /// **'Encoding'**
  String get databases_encoding;

  /// PostgreSQL superuser option label.
  ///
  /// In en, this message translates to:
  /// **'Superuser'**
  String get databases_superUser;

  /// PostgreSQL superuser option hint.
  ///
  /// In en, this message translates to:
  /// **'After enabling this, the user will have PostgreSQL superuser privileges'**
  String get databases_superUserHint;

  /// Current database access permission field label.
  ///
  /// In en, this message translates to:
  /// **'Current Permission'**
  String get databases_currentPermission;

  /// Unset value label.
  ///
  /// In en, this message translates to:
  /// **'Unset'**
  String get databases_unset;

  /// Current database access permission specified IP value.
  ///
  /// In en, this message translates to:
  /// **'Specified IP ({ip})'**
  String databases_specificIpValue(String ip);

  /// Short database permission option for any host.
  ///
  /// In en, this message translates to:
  /// **'Any Host'**
  String get databases_anyHostShort;

  /// Short database permission option for localhost only.
  ///
  /// In en, this message translates to:
  /// **'Localhost Only'**
  String get databases_localhostOnlyShort;

  /// Database access change success toast.
  ///
  /// In en, this message translates to:
  /// **'Access permission changed'**
  String get databases_accessChanged;

  /// Database access change failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to change access permission'**
  String get databases_accessChangeFailed;

  /// Database access IP/CIDR hint.
  ///
  /// In en, this message translates to:
  /// **'Supports a single IP or CIDR range, such as 192.168.1.100 or 10.0.0.0/8'**
  String get databases_ipCidrHint;

  /// Database access multiple IP hint.
  ///
  /// In en, this message translates to:
  /// **'Separate multiple IPs with commas, e.g. 172.16.10.111,172.16.10.112'**
  String get databases_multipleIpHint;

  /// Database port range validation.
  ///
  /// In en, this message translates to:
  /// **'Port range 1-65535'**
  String get databases_portRange;

  /// Database port unchanged warning.
  ///
  /// In en, this message translates to:
  /// **'Port unchanged'**
  String get databases_portUnchanged;

  /// Database port change success toast.
  ///
  /// In en, this message translates to:
  /// **'Port changed to {port}'**
  String databases_portChanged(int port);

  /// Generic database change failure toast.
  ///
  /// In en, this message translates to:
  /// **'Change failed'**
  String get databases_changeFailed;

  /// Database port settings section title.
  ///
  /// In en, this message translates to:
  /// **'Port Settings'**
  String get databases_portSettings;

  /// Database port change hint.
  ///
  /// In en, this message translates to:
  /// **'After changing the port, the database service will restart automatically. Make sure the new port is not occupied.'**
  String get databases_portChangeHint;

  /// Slow log threshold validation.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid threshold (seconds)'**
  String get databases_invalidSlowLogThreshold;

  /// No changes warning.
  ///
  /// In en, this message translates to:
  /// **'No changes'**
  String get databases_noChanges;

  /// Slow log save success toast.
  ///
  /// In en, this message translates to:
  /// **'Slow log configuration saved'**
  String get databases_slowLogSaved;

  /// Generic database save failure toast.
  ///
  /// In en, this message translates to:
  /// **'Save failed'**
  String get databases_saveFailed;

  /// No slow query records warning.
  ///
  /// In en, this message translates to:
  /// **'No slow query records'**
  String get databases_noSlowQueryRecords;

  /// Slow query log title and section label.
  ///
  /// In en, this message translates to:
  /// **'Slow Query Log'**
  String get databases_slowQueryLog;

  /// Database read failure toast.
  ///
  /// In en, this message translates to:
  /// **'Read failed'**
  String get databases_readFailed;

  /// Slow log page title.
  ///
  /// In en, this message translates to:
  /// **'Slow Log'**
  String get databases_slowLog;

  /// Slow log configuration hint.
  ///
  /// In en, this message translates to:
  /// **'After enabling this, SQL statements whose execution time exceeds the threshold will be recorded in the slow query log. Lower thresholds record more queries and may affect performance.'**
  String get databases_slowLogHint;

  /// Log records section title.
  ///
  /// In en, this message translates to:
  /// **'Log Records'**
  String get databases_logRecords;

  /// View slow query records action.
  ///
  /// In en, this message translates to:
  /// **'View Records'**
  String get databases_viewRecords;

  /// Slow query log switch label.
  ///
  /// In en, this message translates to:
  /// **'Enable Slow Query Log'**
  String get databases_enableSlowQueryLog;

  /// Slow query threshold field label.
  ///
  /// In en, this message translates to:
  /// **'Threshold (seconds)'**
  String get databases_thresholdSeconds;

  /// Slow query threshold hint.
  ///
  /// In en, this message translates to:
  /// **'Queries exceeding this time will be recorded'**
  String get databases_thresholdHint;

  /// Database backup load more failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to load more backups'**
  String get databases_loadMoreBackupsFailed;

  /// Database backup download path missing error.
  ///
  /// In en, this message translates to:
  /// **'Unable to get server download path'**
  String get databases_downloadPathUnavailable;

  /// Database backup downloaded file validation error.
  ///
  /// In en, this message translates to:
  /// **'File download failed or is empty'**
  String get databases_downloadedFileEmpty;

  /// Database backup download and share failure toast.
  ///
  /// In en, this message translates to:
  /// **'Download/share failed'**
  String get databases_downloadShareFailed;

  /// Database import backup copy success toast.
  ///
  /// In en, this message translates to:
  /// **'File copied to import directory'**
  String get databases_fileCopiedToImportDir;

  /// Database import backup copy failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to copy file'**
  String get databases_copyFileFailed;

  /// Database import backup upload success toast.
  ///
  /// In en, this message translates to:
  /// **'File uploaded'**
  String get databases_fileUploaded;

  /// Database import backup upload failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to upload file'**
  String get databases_uploadFileFailed;

  /// Database import backup file deletion success toast.
  ///
  /// In en, this message translates to:
  /// **'File deleted'**
  String get databases_fileDeleted;

  /// Database import backup file deletion failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete file'**
  String get databases_deleteFileFailed;

  /// Database import backup state not ready error.
  ///
  /// In en, this message translates to:
  /// **'State is not ready'**
  String get databases_stateNotReady;

  /// Database settings not running title.
  ///
  /// In en, this message translates to:
  /// **'Database is not running'**
  String get databases_notRunning;

  /// Remote database connection management section title.
  ///
  /// In en, this message translates to:
  /// **'Connection Management'**
  String get databases_connectionManagement;

  /// Edit remote database connection action title.
  ///
  /// In en, this message translates to:
  /// **'Edit Connection'**
  String get databases_editConnection;

  /// Edit remote database connection action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Modify remote connection configuration'**
  String get databases_editConnectionSubtitle;

  /// Database operations section title.
  ///
  /// In en, this message translates to:
  /// **'Operations'**
  String get databases_operations;

  /// Unbind remote database action title.
  ///
  /// In en, this message translates to:
  /// **'Unbind'**
  String get databases_unbind;

  /// Unbind remote database action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Unbind remote database'**
  String get databases_unbindRemoteDatabase;

  /// Database configuration section title.
  ///
  /// In en, this message translates to:
  /// **'Configuration'**
  String get databases_config;

  /// Database config file action title.
  ///
  /// In en, this message translates to:
  /// **'Config File'**
  String get databases_configFile;

  /// Database config file action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View and modify configuration file'**
  String get databases_configFileSubtitle;

  /// Database performance section title.
  ///
  /// In en, this message translates to:
  /// **'Performance'**
  String get databases_performance;

  /// Database performance tuning action title.
  ///
  /// In en, this message translates to:
  /// **'Performance Tuning'**
  String get databases_performanceTuning;

  /// Database performance parameters saved toast.
  ///
  /// In en, this message translates to:
  /// **'Performance parameters saved'**
  String get databases_performanceParamsSaved;

  /// Database instance version label.
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String databases_versionValue(String version);

  /// Database install path label.
  ///
  /// In en, this message translates to:
  /// **'Install Path'**
  String get databases_installPath;

  /// Database container label.
  ///
  /// In en, this message translates to:
  /// **'Container'**
  String get databases_container;

  /// Database basic parameters card title.
  ///
  /// In en, this message translates to:
  /// **'Basic Parameters'**
  String get databases_basicParams;

  /// Database start time label.
  ///
  /// In en, this message translates to:
  /// **'Start Time'**
  String get databases_startTime;

  /// Database total connections label.
  ///
  /// In en, this message translates to:
  /// **'Total Connections'**
  String get databases_totalConnections;

  /// Database sent bytes label.
  ///
  /// In en, this message translates to:
  /// **'Sent'**
  String get databases_sent;

  /// Database received bytes label.
  ///
  /// In en, this message translates to:
  /// **'Received'**
  String get databases_received;

  /// Database queries per second label.
  ///
  /// In en, this message translates to:
  /// **'Queries per Second'**
  String get databases_queriesPerSecond;

  /// Database transactions per second label.
  ///
  /// In en, this message translates to:
  /// **'Transactions per Second'**
  String get databases_transactionsPerSecond;

  /// Database performance parameters card title.
  ///
  /// In en, this message translates to:
  /// **'Performance Parameters'**
  String get databases_performanceParams;

  /// MySQL thread cache hit rate label.
  ///
  /// In en, this message translates to:
  /// **'Thread Cache Hit Rate'**
  String get databases_threadCacheHitRate;

  /// MySQL index hit rate label.
  ///
  /// In en, this message translates to:
  /// **'Index Hit Rate'**
  String get databases_indexHitRate;

  /// MySQL InnoDB index hit rate label.
  ///
  /// In en, this message translates to:
  /// **'InnoDB Index Hit Rate'**
  String get databases_innodbIndexHitRate;

  /// MySQL query cache hit rate label.
  ///
  /// In en, this message translates to:
  /// **'Query Cache Hit Rate'**
  String get databases_queryCacheHitRate;

  /// MySQL temporary disk tables label.
  ///
  /// In en, this message translates to:
  /// **'Temporary Tables on Disk'**
  String get databases_tmpDiskTables;

  /// MySQL open tables label.
  ///
  /// In en, this message translates to:
  /// **'Open Tables'**
  String get databases_openTables;

  /// MySQL no index usage label.
  ///
  /// In en, this message translates to:
  /// **'No Index Usage'**
  String get databases_noIndexUsage;

  /// MySQL no index join label.
  ///
  /// In en, this message translates to:
  /// **'No Index JOIN'**
  String get databases_noIndexJoin;

  /// MySQL sort merge passes label.
  ///
  /// In en, this message translates to:
  /// **'Sort Merge Passes'**
  String get databases_sortMergePasses;

  /// MySQL table locks label.
  ///
  /// In en, this message translates to:
  /// **'Table Locks'**
  String get databases_tableLocks;

  /// MySQL QPS tuning hint.
  ///
  /// In en, this message translates to:
  /// **'If too high, increase max_connections'**
  String get databases_qpsHighHint;

  /// MySQL thread cache tuning hint.
  ///
  /// In en, this message translates to:
  /// **'If too low, increase thread_cache_size'**
  String get databases_threadCacheLowHint;

  /// MySQL key buffer tuning hint.
  ///
  /// In en, this message translates to:
  /// **'If too low, increase key_buffer_size'**
  String get databases_keyBufferLowHint;

  /// MySQL InnoDB buffer tuning hint.
  ///
  /// In en, this message translates to:
  /// **'If too low, increase innodb_buffer_pool_size'**
  String get databases_innodbBufferLowHint;

  /// MySQL query cache tuning hint.
  ///
  /// In en, this message translates to:
  /// **'If too low, increase query_cache_size'**
  String get databases_queryCacheLowHint;

  /// MySQL temporary disk table tuning hint.
  ///
  /// In en, this message translates to:
  /// **'If too high, try increasing tmp_table_size'**
  String get databases_tmpDiskTablesHighHint;

  /// MySQL table open cache tuning hint.
  ///
  /// In en, this message translates to:
  /// **'table_open_cache should be greater than or equal to this value'**
  String get databases_tableOpenCacheHint;

  /// MySQL index check tuning hint.
  ///
  /// In en, this message translates to:
  /// **'If not 0, check whether table indexes are reasonable'**
  String get databases_indexCheckHint;

  /// MySQL sort buffer tuning hint.
  ///
  /// In en, this message translates to:
  /// **'If too high, increase sort_buffer_size'**
  String get databases_sortBufferHighHint;

  /// MySQL table locks tuning hint.
  ///
  /// In en, this message translates to:
  /// **'If too high, consider increasing database performance'**
  String get databases_tableLocksHighHint;

  /// Database running status card title.
  ///
  /// In en, this message translates to:
  /// **'Running Status'**
  String get databases_runningStatus;

  /// Redis running days label.
  ///
  /// In en, this message translates to:
  /// **'Running Days'**
  String get databases_runningDays;

  /// Days value label.
  ///
  /// In en, this message translates to:
  /// **'{days} days'**
  String databases_daysValue(String days);

  /// Redis listening port label.
  ///
  /// In en, this message translates to:
  /// **'Listening Port'**
  String get databases_listeningPort;

  /// Redis connected clients label.
  ///
  /// In en, this message translates to:
  /// **'Connected Clients'**
  String get databases_connectedClients;

  /// Redis memory RSS label.
  ///
  /// In en, this message translates to:
  /// **'Memory (RSS)'**
  String get databases_memoryRss;

  /// Redis used memory label.
  ///
  /// In en, this message translates to:
  /// **'Memory Used'**
  String get databases_memoryUsed;

  /// Redis memory peak label.
  ///
  /// In en, this message translates to:
  /// **'Memory Peak'**
  String get databases_memoryPeak;

  /// Redis fragmentation ratio label.
  ///
  /// In en, this message translates to:
  /// **'Fragmentation Ratio'**
  String get databases_fragmentationRatio;

  /// Redis total commands label.
  ///
  /// In en, this message translates to:
  /// **'Total Commands'**
  String get databases_totalCommands;

  /// Redis operations per second label.
  ///
  /// In en, this message translates to:
  /// **'Ops per Second'**
  String get databases_opsPerSecond;

  /// Redis keyspace hits label.
  ///
  /// In en, this message translates to:
  /// **'Hits'**
  String get databases_hits;

  /// Redis keyspace misses label.
  ///
  /// In en, this message translates to:
  /// **'Misses'**
  String get databases_misses;

  /// Redis hit rate label.
  ///
  /// In en, this message translates to:
  /// **'Hit Rate'**
  String get databases_hitRate;

  /// Redis latest fork time label.
  ///
  /// In en, this message translates to:
  /// **'Latest Fork Time'**
  String get databases_latestForkTime;

  /// Redis memory RSS hint.
  ///
  /// In en, this message translates to:
  /// **'Memory requested from the operating system'**
  String get databases_memoryRssHint;

  /// Redis memory used hint.
  ///
  /// In en, this message translates to:
  /// **'Current memory used by Redis'**
  String get databases_memoryUsedHint;

  /// Redis memory peak hint.
  ///
  /// In en, this message translates to:
  /// **'Peak Redis memory usage'**
  String get databases_memoryPeakHint;

  /// Redis fragmentation ratio hint.
  ///
  /// In en, this message translates to:
  /// **'If too high, try increasing tmp_table_size'**
  String get databases_fragmentationRatioHint;

  /// Redis total connections hint.
  ///
  /// In en, this message translates to:
  /// **'Total number of clients connected since startup'**
  String get databases_totalConnectionsHint;

  /// Redis total commands hint.
  ///
  /// In en, this message translates to:
  /// **'Total number of commands executed since startup'**
  String get databases_totalCommandsHint;

  /// Redis operations per second hint.
  ///
  /// In en, this message translates to:
  /// **'Number of commands executed per second'**
  String get databases_opsPerSecondHint;

  /// Redis hits hint.
  ///
  /// In en, this message translates to:
  /// **'Number of successful database key lookups'**
  String get databases_hitsHint;

  /// Redis misses hint.
  ///
  /// In en, this message translates to:
  /// **'Number of failed database key lookups'**
  String get databases_missesHint;

  /// Redis hit rate hint.
  ///
  /// In en, this message translates to:
  /// **'Database key lookup hit rate'**
  String get databases_hitRateHint;

  /// Redis latest fork time hint.
  ///
  /// In en, this message translates to:
  /// **'Microseconds spent by the latest fork() operation'**
  String get databases_latestForkTimeHint;

  /// Performance settings connection group title.
  ///
  /// In en, this message translates to:
  /// **'Connection'**
  String get databases_perfGroupConnection;

  /// Performance settings buffer group title.
  ///
  /// In en, this message translates to:
  /// **'Buffer'**
  String get databases_perfGroupBuffer;

  /// Performance settings query group title.
  ///
  /// In en, this message translates to:
  /// **'Query'**
  String get databases_perfGroupQuery;

  /// Performance settings other group title.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get databases_perfGroupOther;

  /// Performance settings memory group title.
  ///
  /// In en, this message translates to:
  /// **'Memory'**
  String get databases_perfGroupMemory;

  /// MySQL max connections variable label.
  ///
  /// In en, this message translates to:
  /// **'Max Connections'**
  String get databases_perfMaxConnections;

  /// MySQL thread cache size variable label.
  ///
  /// In en, this message translates to:
  /// **'Thread Cache Size'**
  String get databases_perfThreadCacheSize;

  /// MySQL thread stack size variable label.
  ///
  /// In en, this message translates to:
  /// **'Connections, stack size per thread'**
  String get databases_perfThreadStackSize;

  /// MySQL join buffer size variable label.
  ///
  /// In en, this message translates to:
  /// **'Connections, join buffer size'**
  String get databases_perfJoinBufferSize;

  /// MySQL sort buffer size variable label.
  ///
  /// In en, this message translates to:
  /// **'Connections, sort buffer per thread'**
  String get databases_perfSortBufferSize;

  /// MySQL read buffer size variable label.
  ///
  /// In en, this message translates to:
  /// **'Connections, read buffer size'**
  String get databases_perfReadBufferSize;

  /// MySQL random read buffer size variable label.
  ///
  /// In en, this message translates to:
  /// **'Connections, random read buffer size'**
  String get databases_perfReadRndBufferSize;

  /// MySQL temporary table size variable label.
  ///
  /// In en, this message translates to:
  /// **'Temporary table cache size'**
  String get databases_perfTmpTableSize;

  /// MySQL max heap table size variable label.
  ///
  /// In en, this message translates to:
  /// **'Memory table limit'**
  String get databases_perfMaxHeapTableSize;

  /// MySQL InnoDB buffer pool size variable label.
  ///
  /// In en, this message translates to:
  /// **'InnoDB buffer pool size'**
  String get databases_perfInnodbBufferPoolSize;

  /// MySQL InnoDB log buffer size variable label.
  ///
  /// In en, this message translates to:
  /// **'InnoDB log buffer size'**
  String get databases_perfInnodbLogBufferSize;

  /// MySQL key buffer size variable label.
  ///
  /// In en, this message translates to:
  /// **'Index buffer size'**
  String get databases_perfKeyBufferSize;

  /// MySQL table open cache variable label.
  ///
  /// In en, this message translates to:
  /// **'Table cache'**
  String get databases_perfTableOpenCache;

  /// MySQL query cache size variable label.
  ///
  /// In en, this message translates to:
  /// **'Query cache size'**
  String get databases_perfQueryCacheSize;

  /// MySQL query cache type variable label.
  ///
  /// In en, this message translates to:
  /// **'Query cache type'**
  String get databases_perfQueryCacheType;

  /// MySQL binary log cache size variable label.
  ///
  /// In en, this message translates to:
  /// **'Connections, binary log cache size (multiple of 4096)'**
  String get databases_perfBinlogCacheSize;

  /// Redis timeout setting description.
  ///
  /// In en, this message translates to:
  /// **'Client idle timeout (seconds), 0 means no timeout'**
  String get databases_perfRedisTimeoutDesc;

  /// Redis maxclients setting description.
  ///
  /// In en, this message translates to:
  /// **'Maximum number of concurrent clients'**
  String get databases_perfRedisMaxclientsDesc;

  /// Redis maxmemory setting description.
  ///
  /// In en, this message translates to:
  /// **'Maximum memory limit (bytes), 0 means unlimited'**
  String get databases_perfRedisMaxmemoryDesc;

  /// Database global variable tuning subtitle.
  ///
  /// In en, this message translates to:
  /// **'{name} global variable tuning'**
  String databases_globalVariablesTuning(String name);

  /// Slow log settings action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Slow query records and threshold configuration'**
  String get databases_slowLogSubtitle;

  /// Database network section title.
  ///
  /// In en, this message translates to:
  /// **'Network'**
  String get databases_network;

  /// Database port action title.
  ///
  /// In en, this message translates to:
  /// **'Database Port'**
  String get databases_databasePort;

  /// Database current listening port subtitle.
  ///
  /// In en, this message translates to:
  /// **'Current listening port: {port}'**
  String databases_currentListeningPort(Object port);

  /// Database maintenance section title.
  ///
  /// In en, this message translates to:
  /// **'Maintenance'**
  String get databases_maintenance;

  /// Database container logs action title.
  ///
  /// In en, this message translates to:
  /// **'Container Logs'**
  String get databases_containerLogs;

  /// Database container logs action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View database runtime logs in real time'**
  String get databases_containerLogsSubtitle;

  /// Warning when database container name is unavailable.
  ///
  /// In en, this message translates to:
  /// **'Container name unavailable'**
  String get databases_containerNameUnavailable;

  /// Database config save success toast.
  ///
  /// In en, this message translates to:
  /// **'Configuration saved'**
  String get databases_configSaved;

  /// Redis config file action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View and modify redis.conf'**
  String get databases_redisConfigFileSubtitle;

  /// Redis persistence section title.
  ///
  /// In en, this message translates to:
  /// **'Persistence'**
  String get databases_persistence;

  /// Redis persistence config action title.
  ///
  /// In en, this message translates to:
  /// **'Persistence Configuration'**
  String get databases_persistenceConfig;

  /// Redis persistence config action subtitle.
  ///
  /// In en, this message translates to:
  /// **'RDB snapshot and AOF log settings'**
  String get databases_persistenceConfigSubtitle;

  /// Redis AOF configuration saved toast.
  ///
  /// In en, this message translates to:
  /// **'AOF configuration saved'**
  String get databases_aofConfigSaved;

  /// Redis RDB configuration saved toast.
  ///
  /// In en, this message translates to:
  /// **'RDB configuration saved'**
  String get databases_rdbConfigSaved;

  /// Redis RDB seconds validation message.
  ///
  /// In en, this message translates to:
  /// **'Seconds range 0-100000'**
  String get databases_secondsRange;

  /// Redis RDB count validation message.
  ///
  /// In en, this message translates to:
  /// **'Count range 0-100000'**
  String get databases_countRange;

  /// Redis AOF persistence section title.
  ///
  /// In en, this message translates to:
  /// **'AOF Persistence'**
  String get databases_aofPersistence;

  /// Redis enable AOF setting label.
  ///
  /// In en, this message translates to:
  /// **'Enable AOF'**
  String get databases_enableAof;

  /// Redis fsync policy setting label.
  ///
  /// In en, this message translates to:
  /// **'fsync Policy'**
  String get databases_fsyncPolicy;

  /// Redis AOF persistence hint.
  ///
  /// In en, this message translates to:
  /// **'Append Only File persists data by recording each write operation, offering stronger data safety.'**
  String get databases_aofHint;

  /// Redis RDB snapshot section title.
  ///
  /// In en, this message translates to:
  /// **'RDB Snapshot'**
  String get databases_rdbSnapshot;

  /// Redis RDB empty rules label.
  ///
  /// In en, this message translates to:
  /// **'No rules. RDB persistence is disabled'**
  String get databases_noRdbRules;

  /// Redis add RDB snapshot rule action.
  ///
  /// In en, this message translates to:
  /// **'Add Snapshot Rule'**
  String get databases_addSnapshotRule;

  /// Redis RDB snapshot hint.
  ///
  /// In en, this message translates to:
  /// **'An RDB snapshot is triggered when any condition is met. Example: at least 1 change within 3600 seconds.'**
  String get databases_rdbHint;

  /// Redis RDB seconds input placeholder.
  ///
  /// In en, this message translates to:
  /// **'Seconds'**
  String get databases_secondsPlaceholder;

  /// Redis RDB seconds suffix.
  ///
  /// In en, this message translates to:
  /// **'sec'**
  String get databases_withinSeconds;

  /// Redis RDB count input placeholder.
  ///
  /// In en, this message translates to:
  /// **'Count'**
  String get databases_countPlaceholder;

  /// Redis RDB count suffix.
  ///
  /// In en, this message translates to:
  /// **'changes'**
  String get databases_changeTimes;

  /// Database backup section title.
  ///
  /// In en, this message translates to:
  /// **'Backup'**
  String get databases_backup;

  /// Redis backup list action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View and manage Redis backups'**
  String get databases_redisBackupListSubtitle;

  /// Remote MySQL instance menu item.
  ///
  /// In en, this message translates to:
  /// **'Remote MySQL Instance'**
  String get databases_remoteMysqlInstance;

  /// Remote MariaDB instance menu item.
  ///
  /// In en, this message translates to:
  /// **'Remote MariaDB Instance'**
  String get databases_remoteMariadbInstance;

  /// Remote PostgreSQL instance menu item.
  ///
  /// In en, this message translates to:
  /// **'Remote PostgreSQL Instance'**
  String get databases_remotePostgresqlInstance;

  /// Database instances sheet title.
  ///
  /// In en, this message translates to:
  /// **'Database Instances'**
  String get databases_instances;

  /// Database instances empty title.
  ///
  /// In en, this message translates to:
  /// **'No available databases'**
  String get databases_noAvailableDatabases;

  /// Database instances empty rich text prefix.
  ///
  /// In en, this message translates to:
  /// **'No database instances are installed on the current server\nGo to '**
  String get databases_emptyInstallPrefix;

  /// Database instances empty rich text middle.
  ///
  /// In en, this message translates to:
  /// **' to install one, or '**
  String get databases_emptyInstallMiddle;

  /// Database instances no local title.
  ///
  /// In en, this message translates to:
  /// **'Only remote databases found'**
  String get databases_onlyRemoteDatabases;

  /// Database instances no local subtitle.
  ///
  /// In en, this message translates to:
  /// **'No local database instances\nRemote database management is coming soon'**
  String get databases_noLocalRemoteComingSoon;

  /// Database management menu label.
  ///
  /// In en, this message translates to:
  /// **'Manage'**
  String get databases_manage;

  /// New database menu item.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get databases_new;

  /// Sync databases from server action.
  ///
  /// In en, this message translates to:
  /// **'Sync from Server'**
  String get databases_syncFromServer;

  /// View database connection info action.
  ///
  /// In en, this message translates to:
  /// **'View Connection Info'**
  String get databases_viewConnectionInfo;

  /// Sync databases from server confirmation.
  ///
  /// In en, this message translates to:
  /// **'Sync the database list from the {name} instance to the panel. Deleted records may be restored, and new databases will be imported. Continue?'**
  String databases_syncFromServerConfirm(String name);

  /// Confirm sync action label.
  ///
  /// In en, this message translates to:
  /// **'Sync'**
  String get databases_sync;

  /// Database sync success toast.
  ///
  /// In en, this message translates to:
  /// **'Sync completed'**
  String get databases_syncCompleted;

  /// Database sync failure toast.
  ///
  /// In en, this message translates to:
  /// **'Sync failed'**
  String get databases_syncFailed;

  /// Remote database name required validation.
  ///
  /// In en, this message translates to:
  /// **'Enter name'**
  String get databases_enterName;

  /// Remote database name no spaces validation.
  ///
  /// In en, this message translates to:
  /// **'Name cannot contain spaces'**
  String get databases_nameNoSpaces;

  /// Remote database name allowed characters validation.
  ///
  /// In en, this message translates to:
  /// **'Name can only contain letters, numbers, underscores, hyphens, and dots'**
  String get databases_nameAllowedChars;

  /// Remote database address required validation.
  ///
  /// In en, this message translates to:
  /// **'Enter address'**
  String get databases_enterAddress;

  /// Remote database port required validation.
  ///
  /// In en, this message translates to:
  /// **'Enter port'**
  String get databases_enterPort;

  /// Remote database address field placeholder.
  ///
  /// In en, this message translates to:
  /// **'IP or domain'**
  String get databases_ipOrDomain;

  /// Remote database timeout validation.
  ///
  /// In en, this message translates to:
  /// **'Timeout range 1-600 seconds'**
  String get databases_timeoutRange;

  /// Remote database SSL client key validation.
  ///
  /// In en, this message translates to:
  /// **'Enter client private key when SSL is enabled'**
  String get databases_sslClientKeyRequired;

  /// Remote database SSL client certificate validation.
  ///
  /// In en, this message translates to:
  /// **'Enter client certificate when SSL is enabled'**
  String get databases_sslClientCertRequired;

  /// Remote database SSL CA certificate validation.
  ///
  /// In en, this message translates to:
  /// **'Enter CA certificate when CA is enabled'**
  String get databases_sslCaCertRequired;

  /// Remote database connection test failure.
  ///
  /// In en, this message translates to:
  /// **'Connection failed'**
  String get databases_connectionFailed;

  /// Remote database connection timeout or error.
  ///
  /// In en, this message translates to:
  /// **'Connection timed out or failed'**
  String get databases_connectionTimeoutOrError;

  /// Remote database creation success toast.
  ///
  /// In en, this message translates to:
  /// **'Remote database created'**
  String get databases_remoteDatabaseCreated;

  /// Remote database edit load connection info failure toast.
  ///
  /// In en, this message translates to:
  /// **'Failed to load connection info'**
  String get databases_loadConnectionInfoFailed;

  /// Remote database edit success toast.
  ///
  /// In en, this message translates to:
  /// **'Connection updated'**
  String get databases_connectionUpdated;

  /// Remote database edit failure toast.
  ///
  /// In en, this message translates to:
  /// **'Update failed'**
  String get databases_updateFailed;

  /// Edit remote database connection sheet title.
  ///
  /// In en, this message translates to:
  /// **'Edit Remote Connection'**
  String get databases_editRemoteConnection;

  /// Remote database connection test success label.
  ///
  /// In en, this message translates to:
  /// **'Connection succeeded'**
  String get databases_connectionSucceeded;

  /// Remote database test connection button.
  ///
  /// In en, this message translates to:
  /// **'Test Connection'**
  String get databases_testConnection;

  /// Add remote MySQL sheet title.
  ///
  /// In en, this message translates to:
  /// **'Add Remote MySQL'**
  String get databases_addRemoteMysql;

  /// Add remote MariaDB sheet title.
  ///
  /// In en, this message translates to:
  /// **'Add Remote MariaDB'**
  String get databases_addRemoteMariadb;

  /// Add remote PostgreSQL sheet title.
  ///
  /// In en, this message translates to:
  /// **'Add Remote PostgreSQL'**
  String get databases_addRemotePostgresql;

  /// Add remote Redis sheet title.
  ///
  /// In en, this message translates to:
  /// **'Add Remote Redis'**
  String get databases_addRemoteRedis;

  /// Add remote database fallback sheet title.
  ///
  /// In en, this message translates to:
  /// **'Add Remote Instance'**
  String get databases_addRemoteInstance;

  /// Remote database name field label.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get databases_name;

  /// Remote database name placeholder.
  ///
  /// In en, this message translates to:
  /// **'e.g. my-remote-db'**
  String get databases_remoteNameExample;

  /// Remote database version field label.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get databases_version;

  /// PostgreSQL initial database field label.
  ///
  /// In en, this message translates to:
  /// **'Initial Database'**
  String get databases_initialDatabase;

  /// PostgreSQL initial database placeholder.
  ///
  /// In en, this message translates to:
  /// **'Database name used for connection'**
  String get databases_initialDatabasePlaceholder;

  /// Remote database username placeholder.
  ///
  /// In en, this message translates to:
  /// **'Database username'**
  String get databases_databaseUsernamePlaceholder;

  /// Optional password field label.
  ///
  /// In en, this message translates to:
  /// **'Password (optional)'**
  String get databases_passwordOptional;

  /// Redis no password placeholder.
  ///
  /// In en, this message translates to:
  /// **'Leave blank if no password'**
  String get databases_noPasswordPlaceholder;

  /// Remote database SSL skip certificate verification option.
  ///
  /// In en, this message translates to:
  /// **'Skip Certificate Verification'**
  String get databases_skipCertVerify;

  /// Remote database SSL has CA certificate option.
  ///
  /// In en, this message translates to:
  /// **'Has CA Certificate'**
  String get databases_hasCaCert;

  /// Remote database SSL client private key field label.
  ///
  /// In en, this message translates to:
  /// **'Client Private Key'**
  String get databases_clientPrivateKey;

  /// Remote database SSL client certificate field label.
  ///
  /// In en, this message translates to:
  /// **'Client Certificate'**
  String get databases_clientCertificate;

  /// Remote database SSL CA certificate field label.
  ///
  /// In en, this message translates to:
  /// **'CA Certificate'**
  String get databases_caCertificate;

  /// Remote database timeout field label.
  ///
  /// In en, this message translates to:
  /// **'Timeout (seconds)'**
  String get databases_timeoutSeconds;

  /// Remote database remark placeholder.
  ///
  /// In en, this message translates to:
  /// **'Remark'**
  String get databases_remarkInfo;

  /// Supervisor feature page title.
  ///
  /// In en, this message translates to:
  /// **'Process Guard'**
  String get supervisor_title;

  /// Supervisor feature menu title.
  ///
  /// In en, this message translates to:
  /// **'Process Guard'**
  String get supervisor_menuTitle;

  /// Supervisor feature menu subtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage Supervisor services, process configs, and logs'**
  String get supervisor_menuSubtitle;

  /// Start Supervisor service menu item.
  ///
  /// In en, this message translates to:
  /// **'Start Supervisor'**
  String get supervisor_serviceStart;

  /// Stop Supervisor service menu item.
  ///
  /// In en, this message translates to:
  /// **'Stop Supervisor'**
  String get supervisor_serviceStop;

  /// Restart Supervisor service menu item.
  ///
  /// In en, this message translates to:
  /// **'Restart Supervisor'**
  String get supervisor_serviceRestart;

  /// Initialize Supervisor menu item.
  ///
  /// In en, this message translates to:
  /// **'Initialize Supervisor'**
  String get supervisor_initSupervisor;

  /// Supervisor settings label.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get supervisor_settings;

  /// Confirmation message for Supervisor service operation.
  ///
  /// In en, this message translates to:
  /// **'Confirm {operation} for the Supervisor service?'**
  String supervisor_serviceOperateConfirm(String operation);

  /// Confirmation message for Supervisor process operation.
  ///
  /// In en, this message translates to:
  /// **'Confirm {operation} for {name}?'**
  String supervisor_processOperateConfirm(String operation, String name);

  /// Supervisor operation success toast.
  ///
  /// In en, this message translates to:
  /// **'Operation succeeded'**
  String get supervisor_operationSuccess;

  /// Supervisor operation failure toast.
  ///
  /// In en, this message translates to:
  /// **'Operation failed'**
  String get supervisor_operationFailed;

  /// Supervisor refresh failure toast.
  ///
  /// In en, this message translates to:
  /// **'Refresh failed'**
  String get supervisor_refreshFailed;

  /// Supervisor not ready warning.
  ///
  /// In en, this message translates to:
  /// **'Supervisor is not ready'**
  String get supervisor_notReady;

  /// Subtitle for Supervisor process config editor.
  ///
  /// In en, this message translates to:
  /// **'Supervisor process configuration'**
  String get supervisor_processConfigSubtitle;

  /// Supervisor main config title.
  ///
  /// In en, this message translates to:
  /// **'Supervisor Main Config'**
  String get supervisor_mainConfig;

  /// Supervisor main log title.
  ///
  /// In en, this message translates to:
  /// **'Supervisor Main Log'**
  String get supervisor_mainLog;

  /// Supervisor main config source action.
  ///
  /// In en, this message translates to:
  /// **'Main Config Source'**
  String get supervisor_configSource;

  /// Supervisor main config source subtitle.
  ///
  /// In en, this message translates to:
  /// **'Read and save the supervisord main config'**
  String get supervisor_configSourceSubtitle;

  /// Supervisor main log subtitle.
  ///
  /// In en, this message translates to:
  /// **'Read the supervisord logfile by line'**
  String get supervisor_mainLogSubtitle;

  /// Supervisor base init action.
  ///
  /// In en, this message translates to:
  /// **'Base / Reinitialize'**
  String get supervisor_baseInit;

  /// Supervisor base init action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Main config path and systemctl service name'**
  String get supervisor_baseInitSubtitle;

  /// Supervisor process start action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Start this process group'**
  String get supervisor_processStartSubtitle;

  /// Supervisor process stop action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Stop this process group'**
  String get supervisor_processStopSubtitle;

  /// Supervisor process restart action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Restart this process group'**
  String get supervisor_processRestartSubtitle;

  /// Supervisor action section title.
  ///
  /// In en, this message translates to:
  /// **'Config & Logs'**
  String get supervisor_configAndLogs;

  /// Supervisor edit action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Change command, directory, user, and startup policy'**
  String get supervisor_editSubtitle;

  /// Supervisor source file action.
  ///
  /// In en, this message translates to:
  /// **'Source File'**
  String get supervisor_sourceFile;

  /// Supervisor source file action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View or edit this process ini snippet'**
  String get supervisor_sourceFileSubtitle;

  /// Supervisor stdout log action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View the standard output log'**
  String get supervisor_runLogSubtitle;

  /// Supervisor stderr log action subtitle.
  ///
  /// In en, this message translates to:
  /// **'View the standard error log'**
  String get supervisor_errorLogSubtitle;

  /// Supervisor working directory label.
  ///
  /// In en, this message translates to:
  /// **'Working Directory'**
  String get supervisor_workDir;

  /// Supervisor danger section title.
  ///
  /// In en, this message translates to:
  /// **'Danger Zone'**
  String get supervisor_dangerZone;

  /// Supervisor delete action subtitle.
  ///
  /// In en, this message translates to:
  /// **'Delete this process config and update Supervisor'**
  String get supervisor_deleteSubtitle;

  /// Supervisor missing state title.
  ///
  /// In en, this message translates to:
  /// **'supervisord Not Detected'**
  String get supervisor_notInstalledTitle;

  /// Supervisor missing state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Install Supervisor on the server first and make sure the systemd service exists.'**
  String get supervisor_notInstalledSubtitle;

  /// Supervisor ctl missing state title.
  ///
  /// In en, this message translates to:
  /// **'supervisorctl Not Detected'**
  String get supervisor_ctlMissingTitle;

  /// Supervisor ctl missing state subtitle.
  ///
  /// In en, this message translates to:
  /// **'The process list and process operations depend on supervisorctl.'**
  String get supervisor_ctlMissingSubtitle;

  /// Supervisor initialization required state title.
  ///
  /// In en, this message translates to:
  /// **'Initialization Required'**
  String get supervisor_needInitTitle;

  /// Supervisor initialization required state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Initialization rewrites the [include] files parameter in the main config and restarts the Supervisor service.'**
  String get supervisor_needInitSubtitle;

  /// Supervisor empty state title.
  ///
  /// In en, this message translates to:
  /// **'No Guarded Processes'**
  String get supervisor_emptyTitle;

  /// Supervisor empty state subtitle.
  ///
  /// In en, this message translates to:
  /// **'After creating a process, the corresponding ini config and stdout/stderr log paths are generated.'**
  String get supervisor_emptySubtitle;

  /// Supervisor stopped warning.
  ///
  /// In en, this message translates to:
  /// **'The Supervisor service is not running, so process status may be unavailable. Start it from the top-right menu.'**
  String get supervisor_serviceStoppedWarn;

  /// Supervisor working directory picker title.
  ///
  /// In en, this message translates to:
  /// **'Choose Working Directory'**
  String get supervisor_chooseWorkDir;

  /// Supervisor required fields warning.
  ///
  /// In en, this message translates to:
  /// **'Fill in all required fields'**
  String get supervisor_requiredFields;

  /// Supervisor process name validation message.
  ///
  /// In en, this message translates to:
  /// **'Name supports letters, numbers, - and _, and cannot start with a special character'**
  String get supervisor_nameRule;

  /// Supervisor numprocs validation message.
  ///
  /// In en, this message translates to:
  /// **'Process count must be between 1 and 9999'**
  String get supervisor_numprocsRule;

  /// Supervisor update success toast.
  ///
  /// In en, this message translates to:
  /// **'Updated'**
  String get supervisor_updateSuccess;

  /// Supervisor create success toast.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get supervisor_createSuccess;

  /// Supervisor save failure toast.
  ///
  /// In en, this message translates to:
  /// **'Save failed'**
  String get supervisor_saveFailed;

  /// Supervisor create process sheet title.
  ///
  /// In en, this message translates to:
  /// **'Create Guarded Process'**
  String get supervisor_createProcess;

  /// Supervisor edit process sheet title.
  ///
  /// In en, this message translates to:
  /// **'Edit Guarded Process'**
  String get supervisor_editProcess;

  /// Supervisor process name field label.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get supervisor_name;

  /// Supervisor process user field label.
  ///
  /// In en, this message translates to:
  /// **'Run User'**
  String get supervisor_user;

  /// Supervisor command field label.
  ///
  /// In en, this message translates to:
  /// **'Start Command'**
  String get supervisor_command;

  /// Supervisor numprocs field label.
  ///
  /// In en, this message translates to:
  /// **'Process Count'**
  String get supervisor_numprocs;

  /// Supervisor environment field label.
  ///
  /// In en, this message translates to:
  /// **'Environment'**
  String get supervisor_environment;

  /// Supervisor auto restart field label.
  ///
  /// In en, this message translates to:
  /// **'Auto Restart'**
  String get supervisor_autoRestart;

  /// Supervisor auto restart subtitle.
  ///
  /// In en, this message translates to:
  /// **'Supervisor restarts the process after an abnormal exit'**
  String get supervisor_autoRestartSubtitle;

  /// Supervisor auto start field label.
  ///
  /// In en, this message translates to:
  /// **'Auto Start'**
  String get supervisor_autoStart;

  /// Supervisor auto start subtitle.
  ///
  /// In en, this message translates to:
  /// **'Start this process automatically when Supervisor starts'**
  String get supervisor_autoStartSubtitle;

  /// Supervisor init required fields message.
  ///
  /// In en, this message translates to:
  /// **'Enter the main config path and service name'**
  String get supervisor_configPathAndServiceRequired;

  /// Supervisor init success toast.
  ///
  /// In en, this message translates to:
  /// **'Initialized'**
  String get supervisor_initSuccess;

  /// Supervisor init failure toast.
  ///
  /// In en, this message translates to:
  /// **'Initialization failed'**
  String get supervisor_initFailed;

  /// Supervisor init sheet title.
  ///
  /// In en, this message translates to:
  /// **'Initialize Supervisor'**
  String get supervisor_initTitle;

  /// Supervisor init warning text.
  ///
  /// In en, this message translates to:
  /// **'Initialization modifies the [include] files parameter in the main config and restarts the matching systemd service.'**
  String get supervisor_initWarning;

  /// Supervisor primary config field label.
  ///
  /// In en, this message translates to:
  /// **'Main Config File'**
  String get supervisor_primaryConfig;

  /// Supervisor service name field label.
  ///
  /// In en, this message translates to:
  /// **'Service Name'**
  String get supervisor_serviceName;

  /// Supervisor clear log title.
  ///
  /// In en, this message translates to:
  /// **'Clear Log'**
  String get supervisor_clearLog;

  /// Supervisor clear log confirmation.
  ///
  /// In en, this message translates to:
  /// **'Clear the current log file?'**
  String get supervisor_clearLogConfirm;

  /// Supervisor log cleared toast.
  ///
  /// In en, this message translates to:
  /// **'Log cleared'**
  String get supervisor_logCleared;

  /// Supervisor clear log failure toast.
  ///
  /// In en, this message translates to:
  /// **'Clear failed'**
  String get supervisor_clearFailed;

  /// Supervisor compact clear action label.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get supervisor_clear;

  /// Supervisor log line count control label.
  ///
  /// In en, this message translates to:
  /// **'Lines'**
  String get supervisor_lineCount;

  /// Supervisor log follow control label.
  ///
  /// In en, this message translates to:
  /// **'Follow'**
  String get supervisor_follow;

  /// Supervisor stdout log tab.
  ///
  /// In en, this message translates to:
  /// **'Run Log'**
  String get supervisor_runLog;

  /// Supervisor stderr log tab.
  ///
  /// In en, this message translates to:
  /// **'Error Log'**
  String get supervisor_errorLog;

  /// Supervisor read log failure state title.
  ///
  /// In en, this message translates to:
  /// **'Failed to Read Logs'**
  String get supervisor_readLogFailed;

  /// Supervisor empty log state title.
  ///
  /// In en, this message translates to:
  /// **'No Logs'**
  String get supervisor_emptyLogTitle;

  /// Supervisor empty log state subtitle.
  ///
  /// In en, this message translates to:
  /// **'The log file is empty or has not been generated yet.'**
  String get supervisor_emptyLogSubtitle;

  /// Compact Supervisor process count label.
  ///
  /// In en, this message translates to:
  /// **'{count} processes'**
  String supervisor_processCountShort(String count);

  /// Supervisor extra child processes label.
  ///
  /// In en, this message translates to:
  /// **'{count} more child processes'**
  String supervisor_moreChildren(int count);

  /// Supervisor starting aggregate status.
  ///
  /// In en, this message translates to:
  /// **'Starting'**
  String get supervisor_statusStarting;

  /// Supervisor running aggregate status.
  ///
  /// In en, this message translates to:
  /// **'Running'**
  String get supervisor_statusRunning;

  /// Supervisor partial running aggregate status.
  ///
  /// In en, this message translates to:
  /// **'Partially Running'**
  String get supervisor_statusWarning;

  /// Supervisor stopped aggregate status.
  ///
  /// In en, this message translates to:
  /// **'Stopped'**
  String get supervisor_statusStopped;

  /// Supervisor start operation label.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get supervisor_start;

  /// Supervisor stop operation label.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get supervisor_stop;

  /// Supervisor restart operation label.
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get supervisor_restart;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
