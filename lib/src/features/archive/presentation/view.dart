import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/extensions.dart';

class ArchiveView extends StatelessWidget {
  const ArchiveView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenType = context.getScreenType();

    return AppResponsiveScaffold(
        child: SingleChildScrollView(
      child: screenType == ScreenType.phone || screenType == ScreenType.tablet
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('The Archive', style: AppTextStyles.h1HeaderPhone),
                //TODO -CONT-: add description as constant
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('The Archive', style: AppTextStyles.h1Header),
              ],
            ),
    ));
  }
}
