import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/app_models.dart';
import 'package:the_monkslab_web/src/ui/sizes.dart';

import 'index.dart';

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
              socialsName: SocialsType.twitter,
              onTap: () {},
            ),
          ),
          gapW20,
          AppOnHover(
            child: AppSocialIcon(
              socialsName: SocialsType.instagram,
              onTap: () {},
            ),
          ),
          gapW20,
          AppOnHover(
            child: AppSocialIcon(
              socialsName: SocialsType.linkedin,
              onTap: () {},
            ),
          ),
          gapW12,
          AppOnHover(
            child: AppSocialIcon(
              socialsName: SocialsType.facebook,
              onTap: () {},
            ),
          ),
          gapW20,
        ],
      ),
    );
  }
}
