import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/ui/sizes.dart';

class AppBorderedContainer extends Container {
  AppBorderedContainer({
    required this.newChild,
    this.newColor,
    this.newMargin,
    this.newPadding,
    this.newWidth,
    this.newHeight,
    super.key,
  });

  final Widget newChild;
  final Color? newColor;
  final EdgeInsets? newMargin;
  final EdgeInsets? newPadding;
  final double? newWidth;
  final double? newHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: newWidth,
      height: newHeight,
      margin: newMargin ?? AppPaddings.padAll0,
      padding: newPadding ?? AppPaddings.padAll0,
      decoration: BoxDecoration(
        color: newColor ?? Colors.transparent,

        /// comment to see border on container
        /// faster than the widget inspector
        // border: Border.all(),
      ),
      child: newChild,
    );
  }
}
