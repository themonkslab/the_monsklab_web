import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

class AppFilledButton extends StatefulWidget {
  const AppFilledButton({
    required this.text,
    this.onTap,
    this.defaultColor = AppColors.primaryDark,
    this.hoverColor = AppColors.secondaryLight,
    super.key,
  });

  final String text;
  final VoidCallback? onTap;
  final Color hoverColor;
  final Color defaultColor;

  @override
  State<AppFilledButton> createState() => _AppFilledButtonState();
}

class _AppFilledButtonState extends State<AppFilledButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() {
          isHovered = !isHovered;
        }),
        onExit: (_) => setState(() {
          isHovered = !isHovered;
        }),
        child: ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 220),
          child: Container(
            padding: AppPaddings.padH24 + AppPaddings.padV12,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.white),
              borderRadius: BorderRadius.circular(25),
              color: widget.onTap != null
                  ? isHovered
                      ? widget.hoverColor
                      : widget.defaultColor
                  : AppColors.grey,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: const Offset(0, 2),
                  color: AppColors.black10,
                )
              ],
            ),
            child: Center(
              child: AppText(
                widget.text,
                style: AppTextStyles.captionMini
                    .copyWith(color: AppColors.white, fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
