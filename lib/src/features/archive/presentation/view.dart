import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/core/routing/routing.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/ui/widgets/hypertext.dart';
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
                        AppHypertext(
                          text: course.title,
                          onPressed: () => context.beamToNamed(
                            '/${AppRoutes.course.name}/${course.id}',
                          ),
                          style: isPhoneOrTablet
                              ? AppTextStyles.h3Phone
                              : AppTextStyles.h3,
                        )
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
