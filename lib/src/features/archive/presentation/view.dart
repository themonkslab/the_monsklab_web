import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/extensions.dart';

class ArchiveView extends StatelessWidget {
  const ArchiveView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenType = context.getScreenType();

    final isPhoneOrTablet =
        screenType == ScreenType.phone || screenType == ScreenType.tablet;

    return AppResponsiveScaffold(
        child: SingleChildScrollView(
      child: Padding(
        padding: padH8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(archiveViewTitle,
                style: isPhoneOrTablet
                    ? AppTextStyles.h1HeaderPhone
                    : AppTextStyles.h1Header),
            gapH20,
            Text(archiveViewDescription, style: AppTextStyles.p),
            gapH64,
            Row(
              children: [
                for (var learningPath in [flutterLearningPath])
                  //TODO -CONT- make width max aligning column left
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        learningPath.title,
                        style: isPhoneOrTablet
                            ? AppTextStyles.h2Phone
                            : AppTextStyles.h2,
                      ),
                      gapH12,
                      for (var course in learningPath.courses)
                        Text(
                          course.title,
                          style: isPhoneOrTablet
                              ? AppTextStyles.h3Phone
                                  .copyWith(color: Colors.cyan)
                              : AppTextStyles.h3.copyWith(
                                  color: Colors.cyan,
                                ),
                        ),
                    ],
                  )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
