import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/models/_index.dart';

class AppSocialIcon extends StatelessWidget {
  const AppSocialIcon({
    required this.socialsName,
    required this.onTap,
    this.color,
    this.margin,
    this.padding,
    this.width,
    this.height,
    super.key,
  });

  final SocialsType socialsName;
  final void Function()? onTap;
  final Color? color;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: width ?? 16.0,
          height: height ?? 16.0,
          child: SvgPicture.asset(
            socialsName.socialAsset,
            color: color ?? AppColors.black,
          ),
        ),
      ),
    );
  }
}
