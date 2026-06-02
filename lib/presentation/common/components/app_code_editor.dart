import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AdaptiveTextSelectionToolbar;
import 'package:re_editor/re_editor.dart';
import 'package:re_highlight/languages/bash.dart';
import 'package:re_highlight/languages/css.dart';
import 'package:re_highlight/languages/dart.dart';
import 'package:re_highlight/languages/dockerfile.dart';
import 'package:re_highlight/languages/go.dart';
import 'package:re_highlight/languages/ini.dart';
import 'package:re_highlight/languages/javascript.dart';
import 'package:re_highlight/languages/json.dart';
import 'package:re_highlight/languages/markdown.dart';
import 'package:re_highlight/languages/nginx.dart';
import 'package:re_highlight/languages/php.dart';
import 'package:re_highlight/languages/python.dart';
import 'package:re_highlight/languages/sql.dart';
import 'package:re_highlight/languages/typescript.dart';
import 'package:re_highlight/languages/xml.dart';
import 'package:re_highlight/languages/yaml.dart';
import 'package:re_highlight/re_highlight.dart';
import 'package:re_highlight/styles/atom-one-dark.dart';
import 'package:re_highlight/styles/atom-one-light.dart';

import '../../../core/localization/l10n_x.dart';
import '../../../core/network/network_exceptions.dart';
import '../../../core/theme/app_theme.dart';
import '../app_toast.dart';
import 'action_sheet_launcher.dart';
import 'skeleton_item.dart';

/// 常见语言与 re_highlight Mode 的映射，新增语言时在此扩展。
final Map<String, Mode> _kLanguageModes = <String, Mode>{
  'nginx': langNginx,
  'json': langJson,
  'yaml': langYaml,
  'dockerfile': langDockerfile,
  'ini': langIni,
  'cnf': langIni,
  'bash': langBash,
  'sh': langBash,
  'shell': langBash,
  'css': langCss,
  'dart': langDart,
  'go': langGo,
  'javascript': langJavascript,
  'js': langJavascript,
  'typescript': langTypescript,
  'ts': langTypescript,
  'markdown': langMarkdown,
  'md': langMarkdown,
  'php': langPhp,
  'python': langPython,
  'py': langPython,
  'sql': langSql,
  'xml': langXml,
  'html': langXml,
};

/// 通用等宽字体回退，兼顾 iOS / Android / Web。
const List<String> _kMonoFontFamilyFallback = <String>[
  'SF Mono',
  'Menlo',
  'Monaco',
  'Consolas',
  'Roboto Mono',
  'monospace',
];

final SelectionToolbarController _kEditableCodeSelectionToolbarController =
    _CodeSelectionToolbarController(readOnly: false);

final SelectionToolbarController _kReadOnlyCodeSelectionToolbarController =
    _CodeSelectionToolbarController(readOnly: true);

/// 代码编辑器小部件，仅负责编辑视图本身，不关心外壳/导航/保存。
///
/// 典型用法是与 [showAppCodeEditorSheet] 组合；若有定制需求也可单独嵌入页面。
class AppCodeEditor extends StatelessWidget {
  const AppCodeEditor({
    super.key,
    required this.controller,
    this.language,
    this.readOnly = false,
    this.showLineNumbers = true,
    this.hint,
    this.padding,
  });

  final CodeLineEditingController controller;

  /// 语法名，例如 `nginx`、`json`、`yaml`、`dockerfile`。为 `null` 则不高亮。
  final String? language;
  final bool readOnly;
  final bool showLineNumbers;
  final String? hint;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final isDark = CupertinoTheme.brightnessOf(context) == Brightness.dark;
    final highlightTheme = _resolveHighlightTheme(language, isDark);
    final textColor = AppColors.label(context);
    final bgColor = AppColors.background(context);
    return CodeEditor(
      controller: controller,
      toolbarController: readOnly
          ? _kReadOnlyCodeSelectionToolbarController
          : _kEditableCodeSelectionToolbarController,
      readOnly: readOnly,
      wordWrap: false,
      hint: hint,
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      indicatorBuilder: showLineNumbers
          ? (context, editingController, chunkController, notifier) => Row(
              children: [
                DefaultCodeLineNumber(
                  controller: editingController,
                  notifier: notifier,
                  textStyle: TextStyle(
                    fontSize: 12,
                    color: AppColors.tertiaryLabel(context),
                    fontFamilyFallback: _kMonoFontFamilyFallback,
                  ),
                  focusedTextStyle: TextStyle(
                    fontSize: 12,
                    color: AppColors.secondaryLabel(context),
                    fontWeight: FontWeight.w600,
                    fontFamilyFallback: _kMonoFontFamilyFallback,
                  ),
                ),
                DefaultCodeChunkIndicator(
                  width: 16,
                  controller: chunkController,
                  notifier: notifier,
                ),
              ],
            )
          : null,
      style: CodeEditorStyle(
        fontSize: 13,
        fontHeight: 1.45,
        fontFamilyFallback: _kMonoFontFamilyFallback,
        textColor: textColor,
        backgroundColor: bgColor,
        cursorColor: CupertinoColors.activeBlue.resolveFrom(context),
        selectionColor: CupertinoColors.activeBlue
            .resolveFrom(context)
            .withValues(alpha: 0.22),
        codeTheme: highlightTheme,
      ),
    );
  }

  static CodeHighlightTheme? _resolveHighlightTheme(
    String? language,
    bool isDark,
  ) {
    if (language == null) return null;
    final mode = _kLanguageModes[language.toLowerCase()];
    if (mode == null) return null;
    return CodeHighlightTheme(
      languages: {language.toLowerCase(): CodeHighlightThemeMode(mode: mode)},
      theme: isDark ? atomOneDarkTheme : atomOneLightTheme,
    );
  }
}

class _CodeSelectionToolbarController implements SelectionToolbarController {
  _CodeSelectionToolbarController({required this.readOnly});

  final bool readOnly;
  OverlayEntry? _entry;

  @override
  void hide(BuildContext context) {
    final entry = _entry;
    if (entry != null) {
      _removeEntry(entry);
    }
  }

  void _removeEntry(OverlayEntry entry) {
    if (!identical(_entry, entry)) return;
    _entry = null;
    entry.remove();
  }

  @override
  void show({
    required BuildContext context,
    required CodeLineEditingController controller,
    required TextSelectionToolbarAnchors anchors,
    Rect? renderRect,
    required LayerLink layerLink,
    required ValueNotifier<bool> visibility,
  }) {
    hide(context);
    final overlay = Overlay.maybeOf(context, rootOverlay: true);
    if (overlay == null) return;

    late final OverlayEntry entry;
    entry = OverlayEntry(
      builder: (_) => Positioned.fill(
        child: _CodeSelectionToolbarOverlay(
          visibility: visibility,
          child: _CodeSelectionToolbar(
            anchors: anchors,
            controller: controller,
            readOnly: readOnly,
            onDismiss: () {
              _removeEntry(entry);
            },
            onRefresh: () {
              if (identical(_entry, entry)) {
                entry.markNeedsBuild();
              }
            },
          ),
        ),
      ),
    );
    overlay.insert(entry);
    _entry = entry;
  }
}

class _CodeSelectionToolbarOverlay extends StatelessWidget {
  const _CodeSelectionToolbarOverlay({
    required this.visibility,
    required this.child,
  });

  final ValueNotifier<bool> visibility;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CodeEditorTapRegion(
      child: ValueListenableBuilder<bool>(
        valueListenable: visibility,
        child: child,
        builder: (context, visible, child) {
          return Visibility(
            visible: visible,
            maintainState: true,
            child: child ?? const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}

class _CodeSelectionToolbar extends StatelessWidget {
  const _CodeSelectionToolbar({
    required this.anchors,
    required this.controller,
    required this.readOnly,
    required this.onDismiss,
    required this.onRefresh,
  });

  final TextSelectionToolbarAnchors anchors;
  final CodeLineEditingController controller;
  final bool readOnly;
  final VoidCallback onDismiss;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    final buttonItems = <ContextMenuButtonItem>[
      if (!readOnly)
        ContextMenuButtonItem(
          type: ContextMenuButtonType.cut,
          onPressed: () {
            controller.cut();
            onDismiss();
          },
        ),
      ContextMenuButtonItem(
        type: ContextMenuButtonType.copy,
        onPressed: () {
          controller.copy();
          onDismiss();
        },
      ),
      if (!readOnly)
        ContextMenuButtonItem(
          type: ContextMenuButtonType.paste,
          onPressed: () {
            controller.paste();
            onDismiss();
          },
        ),
      ContextMenuButtonItem(
        type: ContextMenuButtonType.selectAll,
        onPressed: () {
          controller.selectAll();
          onRefresh();
        },
      ),
    ];

    return AdaptiveTextSelectionToolbar.buttonItems(
      buttonItems: buttonItems,
      anchors: anchors,
    );
  }
}

/// 全屏弹出代码编辑器（底部向上弹，关闭后回到调用处）。
///
/// - [onSave] 为 null 等价于只读预览，不展示保存按钮；
/// - [onSave] 需返回 `true` 才关闭，便于业务方在失败时保留用户输入；
/// - 脏检查与异常提示由本函数统一处理，业务方专注于请求逻辑。
Future<void> showAppCodeEditorSheet(
  BuildContext context, {
  required String title,
  String initialContent = '',
  Future<String> Function()? onLoad,
  String? subtitle,
  String? language,
  bool readOnly = false,
  Future<bool> Function(String content)? onSave,
}) {
  return showActionSheet<void>(
    context: context,
    expand: true,
    useRootNavigator: true,
    builder: (context) => _CodeEditorSheet(
      title: title,
      subtitle: subtitle,
      initialContent: initialContent,
      onLoad: onLoad,
      language: language,
      readOnly: readOnly || onSave == null,
      onSave: onSave,
    ),
  );
}

class _CodeEditorSheet extends StatefulWidget {
  const _CodeEditorSheet({
    required this.title,
    required this.initialContent,
    required this.readOnly,
    this.onLoad,
    this.subtitle,
    this.language,
    this.onSave,
  });

  final String title;
  final String? subtitle;
  final String initialContent;
  final Future<String> Function()? onLoad;
  final String? language;
  final bool readOnly;
  final Future<bool> Function(String content)? onSave;

  @override
  State<_CodeEditorSheet> createState() => _CodeEditorSheetState();
}

class _CodeEditorSheetState extends State<_CodeEditorSheet> {
  late final CodeLineEditingController _controller;
  bool _saving = false;
  bool _loading = false;
  late String _loadedContent;
  String? _loadedSubtitle;

  @override
  void initState() {
    super.initState();
    _controller = CodeLineEditingController.fromText(widget.initialContent);
    _loadedContent = _controller.text;
    _loadedSubtitle = widget.subtitle;
    if (widget.onLoad != null) {
      _loadContent();
    }
  }

  Future<void> _loadContent() async {
    setState(() => _loading = true);
    try {
      final content = await widget.onLoad!();
      if (mounted) {
        _controller.text = content;
        final loadedContent = _controller.text;
        setState(() {
          _loadedContent = loadedContent;
          _loading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        showAppErrorToast(context.l10n.common_loadingFailed, description: '$e');
        Navigator.of(context).pop();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool get _dirty => _controller.text != _loadedContent;

  Future<void> _handleCancel() async {
    if (!_dirty) {
      Navigator.of(context).pop();
      return;
    }
    final discard = await showCupertinoDialog<bool>(
      context: context,
      builder: (ctx) => CupertinoAlertDialog(
        title: Text(context.l10n.common_discardChangesTitle),
        content: Text(context.l10n.common_unsavedChangesContent),
        actions: [
          CupertinoDialogAction(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(context.l10n.common_continueEditing),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(context.l10n.common_discard),
          ),
        ],
      ),
    );
    if (discard == true && mounted) Navigator.of(context).pop();
  }

  Future<void> _handleSave() async {
    final callback = widget.onSave;
    if (callback == null) return;
    final saveFailedText = context.l10n.common_saveFailedCopyDetails;
    setState(() => _saving = true);
    try {
      final ok = await callback(_controller.text);
      if (ok && mounted) Navigator.of(context).pop();
    } on AppNetworkException catch (error) {
      if (mounted) {
        showAppErrorToast(
          saveFailedText,
          description: error.message,
          copyText: error.message,
        );
      }
    } catch (error) {
      if (mounted) {
        showAppErrorToast(
          saveFailedText,
          description: '$error',
          copyText: '$error',
        );
      }
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.background(context),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: AppColors.background(context),
        middle: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.title),
            if (_loadedSubtitle != null && _loadedSubtitle!.isNotEmpty)
              Text(
                _loadedSubtitle!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 11,
                  color: AppColors.secondaryLabel(context),
                ),
              ),
          ],
        ),
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: _saving || _loading ? null : _handleCancel,
          child: Text(context.l10n.common_cancel),
        ),
        trailing: widget.readOnly || _loading
            ? null
            : CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: _saving ? null : _handleSave,
                child: _saving
                    ? const CupertinoActivityIndicator()
                    : Text(context.l10n.common_save),
              ),
      ),
      child: SafeArea(
        top: false,
        child: _loading
            ? _buildSkeleton()
            : AppCodeEditor(
                controller: _controller,
                language: widget.language,
                readOnly: widget.readOnly,
              ),
      ),
    );
  }

  Widget _buildSkeleton() {
    final lineWidths = <double>[
      0.72,
      0.88,
      0.64,
      0.80,
      0.52,
      0.92,
      0.70,
      0.58,
      0.84,
      0.46,
      0.76,
      0.66,
    ];
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 20, 18, 24),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final textWidth = (constraints.maxWidth - 44).clamp(
            160.0,
            double.infinity,
          );
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var i = 0; i < 20; i++) ...[
                Row(
                  children: [
                    SkeletonItem(
                      width: i < 9 ? 14 : 20,
                      height: 10,
                      borderRadius: 3,
                    ),
                    const SizedBox(width: 18),
                    SkeletonItem(
                      width: textWidth * lineWidths[i % lineWidths.length],
                      height: 12,
                      borderRadius: 4,
                    ),
                  ],
                ),
                const SizedBox(height: 14),
              ],
            ],
          );
        },
      ),
    );
  }
}
