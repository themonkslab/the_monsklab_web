import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/models.dart';
import 'package:the_monkslab_web/src/ui/sizes.dart';

import '_index.dart';

class AppSocials extends StatelessWidget {
  const AppSocials({Key? key}) : super(key: key);
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
              socialsName: AppSocialsType.twitter,
              onTap: () {},
            ),
          ),
          AppGaps.gapW20,
          AppOnHover(
            child: AppSocialIcon(
              socialsName: AppSocialsType.instagram,
              onTap: () {},
            ),
          ),
          AppGaps.gapW20,
          AppOnHover(
            child: AppSocialIcon(
              socialsName: AppSocialsType.linkedin,
              onTap: () {},
            ),
          ),
          AppGaps.gapW12,
          AppOnHover(
            child: AppSocialIcon(
              socialsName: AppSocialsType.facebook,
              onTap: () {},
            ),
          ),
          AppGaps.gapW20,
        ],
      ),
    );
  }
}
