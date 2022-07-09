import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_monkslab_web/src/constants/index.dart';

class AppSocialIcon extends StatelessWidget {
  const AppSocialIcon({
    Key? key,
    required this.socialsName,
    this.newColor,
    this.newMargin,
    this.newPadding,
    this.newWidth,
    this.newHeight,
  }) : super(key: key);

  final AppSocialsType socialsName;
  final Color? newColor;
  final EdgeInsets? newMargin;
  final EdgeInsets? newPadding;
  final double? newWidth;
  final double? newHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: newWidth ?? 24.0,
      height: newHeight ?? 24.0,
      child: SvgPicture.asset(
        socialsName.socialAsset,
        color: newColor ?? AppColors.grey,
      ),
    );
  }
}
