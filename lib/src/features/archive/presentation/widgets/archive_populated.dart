import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/ui/widgets/hypertext.dart';

class ArchivePopulated extends StatelessWidget {
  const ArchivePopulated({
    required this.isPhoneOrTablet,
    required this.learningPath,
    super.key,
  });

  final bool isPhoneOrTablet;
  final LearningPath learningPath;

  @override
  Widget build(BuildContext context) {
    return AppResponsiveScaffold(
        child: Padding(
      padding: isPhoneOrTablet ? AppPaddings.padH8 : AppPaddings.padH24,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppGaps.gapH48,
          Text(archiveViewTitle,
              style: isPhoneOrTablet
                  ? AppTextStyles.h1HeaderPhone
                  : AppTextStyles.h1Header),
          AppGaps.gapH20,
          Text(
            archiveViewDescription,
            style: AppTextStyles.p,
          ),
          AppGaps.gapH64,
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    learningPath.title,
                    style: isPhoneOrTablet
                        ? AppTextStyles.h2Phone
                        : AppTextStyles.h2,
                  ),
                  AppGaps.gapH12,
                  for (var course in learningPath.courses)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: AppHypertext(
                        text: course.title,
                        onPressed: () => context.beamToNamed('/${course.path}'),
                        style: isPhoneOrTablet
                            ? AppTextStyles.h3Phone
                            : AppTextStyles.h3,
                      ),
                    )
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
