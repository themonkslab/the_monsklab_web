import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

class AppHypertext extends StatefulWidget {
  const AppHypertext({
    Key? key,
    required this.text,
    this.onPressed,
    this.style,
    this.textAlign,
    this.enabledDisabledColors,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  final TextStyle? style;
  final TextAlign? textAlign;
  final List<Color>? enabledDisabledColors;

  @override
  State<AppHypertext> createState() => _AppHypertextState();
}

class _AppHypertextState extends State<AppHypertext> {
  bool isHovered = false;
  late bool isEnabled;
  late List<Color> finalEnabledDisabledColors;

  void onHover(bool isHovered) => setState(() => this.isHovered = isHovered);

  @override
  void initState() {
    isEnabled = widget.onPressed != null;
    finalEnabledDisabledColors = widget.enabledDisabledColors ??
        [
          AppColors.cyan,
          AppColors.lighterGrey,
        ];
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
          textAlign: widget.textAlign ?? TextAlign.left,
          child: Text(
            widget.text,
            style: widget.style?.copyWith(
                    color: isEnabled
                        ? finalEnabledDisabledColors[0]
                        : finalEnabledDisabledColors[1],) ??
                AppTextStyles.hypertext.copyWith(
                    color: isEnabled
                        ? finalEnabledDisabledColors[0]
                        : finalEnabledDisabledColors[1],),
          ),
        ),
      ),
    );
  }
}
