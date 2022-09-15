import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
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
                Text(archiveViewTitle, style: AppTextStyles.h1HeaderPhone),
                gapH20,
                Padding(
                  padding: padH8,
                  child: Text(archiveViewDescription, style: AppTextStyles.p),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(archiveViewTitle, style: AppTextStyles.h1Header),
                gapH20,
                Text(archiveViewDescription, style: AppTextStyles.p),
              ],
            ),
    ));
  }
}
