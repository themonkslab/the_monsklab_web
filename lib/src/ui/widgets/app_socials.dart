import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/index.dart';
import 'package:the_monkslab_web/src/ui/index.dart';

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
        children: const [
          AppSocialIcon(socialsName: AppSocialsType.twitter),
          gapW16,
          AppSocialIcon(socialsName: AppSocialsType.instagram),
          gapW16,
          AppSocialIcon(socialsName: AppSocialsType.linkedin),
          gapW16,
          AppSocialIcon(socialsName: AppSocialsType.facebook),
          gapW16,
          AppSocialIcon(socialsName: AppSocialsType.google),
        ],
      ),
    );
  }
}
