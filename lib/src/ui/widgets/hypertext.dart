import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

class AppHypertext extends StatefulWidget {
  const AppHypertext({
    Key? key,
    required this.text,
    this.onPressed,
    this.style,
    this.alignment,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  final TextStyle? style;
  final TextAlign? alignment;

  @override
  State<AppHypertext> createState() => _AppHypertextState();
}

class _AppHypertextState extends State<AppHypertext> {
  bool isHovered = false;
  late bool isEnabled;

  void onHover(bool isHovered) => setState(() => this.isHovered = isHovered);

  @override
  void initState() {
    isEnabled = widget.onPressed != null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: isEnabled ? (event) => onHover(true) : null,
      onExit: isEnabled ? (event) => onHover(false) : null,
      cursor: isEnabled ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedDefaultTextStyle(
          style: widget.onPressed != null
              ? isHovered
                  ? const TextStyle(decoration: TextDecoration.underline)
                  : const TextStyle(decoration: TextDecoration.none)
              : const TextStyle(decoration: TextDecoration.none),
          duration: const Duration(
            milliseconds: 50,
          ),
          textAlign: widget.alignment ?? TextAlign.left,
          child: Text(
            widget.text,
            style: widget.style?.copyWith(
                    color:
                        isEnabled ? AppColors.cyan : AppColors.lighterGrey) ??
                AppTextStyles.hypertext.copyWith(
                    color: isEnabled ? AppColors.cyan : AppColors.lighterGrey),
          ),
        ),
      ),
    );
  }
}
