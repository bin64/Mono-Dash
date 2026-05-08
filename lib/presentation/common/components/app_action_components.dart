import 'package:flutter/cupertino.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import '../../../core/theme/app_theme.dart';

class AppSectionHeader extends StatelessWidget {
  const AppSectionHeader({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 8),
      child: Row(
        children: [
          Icon(icon, size: 14, color: AppColors.secondaryLabel(context)),
          const SizedBox(width: 6),
          Text(
            title.toUpperCase(),
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.secondaryLabel(context),
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}

class AppActionGroup extends StatelessWidget {
  const AppActionGroup({
    super.key,
    required this.children,
    this.dividerPadding,
  });

  final List<Widget> children;
  final EdgeInsetsGeometry? dividerPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryBackground(context).withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: children.asMap().entries.map((entry) {
          final index = entry.key;
          final child = entry.value;
          final isLast = index == children.length - 1;
          if (isLast) return child;
          return Column(
            children: [
              child,
              Padding(
                padding: dividerPadding ?? const EdgeInsets.only(left: 60),
                child: Container(
                  height: 0.5,
                  color: AppColors.separator(context).withValues(alpha: 0.3),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}

class AppActionRow extends StatelessWidget {
  const AppActionRow({
    super.key,
    this.icon,
    this.iconColor,
    this.leading,
    required this.title,
    required this.subtitle,
    this.enabled = true,
    this.isDestructive = false,
    this.onTap,
    this.trailing,
  });

  final IconData? icon;
  final Color? iconColor;
  final Widget? leading;
  final String title;
  final Widget subtitle;
  final bool enabled;
  final bool isDestructive;
  final VoidCallback? onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final titleColor = isDestructive
        ? CupertinoColors.systemRed.resolveFrom(context)
        : AppColors.label(context);

    final leadingWidget =
        leading ??
        (icon != null && iconColor != null
            ? Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: iconColor!.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: iconColor, size: 18),
              )
            : null);

    final rowContent = Opacity(
      opacity: enabled ? 1.0 : 0.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            if (leadingWidget != null) ...[
              leadingWidget,
              const SizedBox(width: 14),
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: titleColor,
                    ),
                  ),
                  const SizedBox(height: 1),
                  DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.secondaryLabel(context),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    child: subtitle,
                  ),
                ],
              ),
            ),
            trailing ??
                Icon(
                  TablerIcons.chevron_right,
                  size: 14,
                  color: AppColors.tertiaryLabel(
                    context,
                  ).withValues(alpha: 0.5),
                ),
          ],
        ),
      ),
    );

    if (onTap == null) return rowContent;

    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: enabled ? onTap : null,
      child: rowContent,
    );
  }
}
