import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/ui/colors.dart';
import 'package:the_monkslab_web/src/ui/sizes.dart';

import '_index.dart';

class AppSocials extends StatelessWidget {
  const AppSocials({
    super.key,
    this.iconColor = AppColors.black,
  });
  final iconColor;
  final _height = 40.0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppOnHover(
            child: AppSocialIcon(
              socialsName: SocialsType.twitter,
              color: iconColor,
              onTap: () {},
            ),
          ),
          AppGaps.gapW20,
          AppOnHover(
            child: AppSocialIcon(
              socialsName: SocialsType.instagram,
              color: iconColor,
              onTap: () {},
            ),
          ),
          AppGaps.gapW20,
          AppOnHover(
            child: AppSocialIcon(
              socialsName: SocialsType.linkedin,
              color: iconColor,
              onTap: () {},
            ),
          ),
          AppGaps.gapW12,
          AppOnHover(
            child: AppSocialIcon(
              socialsName: SocialsType.facebook,
              color: iconColor,
              onTap: () {},
            ),
          ),
          AppGaps.gapW20,
        ],
      ),
    );
  }
}
