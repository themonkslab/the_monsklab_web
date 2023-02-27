import 'package:beamer/beamer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/generated/locale_keys.g.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/ui/widgets/hypertext.dart';

class ArchivePopulated extends StatelessWidget {
  const ArchivePopulated({
    required this.isPhoneOrTablet,
    required this.coursesList,
    super.key,
  });

  final bool isPhoneOrTablet;
  final List<Courses> coursesList;

  @override
  Widget build(BuildContext context) {
    return AppResponsiveScaffold(
      child: Padding(
        padding: isPhoneOrTablet ? AppPaddings.padH8 : AppPaddings.padH24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppGaps.gapH48,
            Text(
              LocaleKeys.archiveViewTitle.tr(),
              style: isPhoneOrTablet ? AppTextStyles.h1HeaderPhone : AppTextStyles.h1Header,
            ),
            AppGaps.gapH20,
            Text(
              LocaleKeys.archiveViewDescription.tr(),
              style: AppTextStyles.p,
            ),
            AppGaps.gapH64,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var courses in coursesList)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        courses.title,
                        style: isPhoneOrTablet ? AppTextStyles.h2Phone : AppTextStyles.h2,
                      ),
                      AppGaps.gapH12,
                      for (var course in courses.courses)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: AppHypertext(
                            text: course.title,
                            onPressed: () => context.beamToNamed('/course/${course.path}'),
                            style: isPhoneOrTablet ? AppTextStyles.h3Phone : AppTextStyles.h3,
                          ),
                        )
                    ],
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
