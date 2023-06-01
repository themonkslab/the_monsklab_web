import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_monkslab_web/src/features/section/_index.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

class CoursePopulated extends StatelessWidget {
  const CoursePopulated({
    required this.course,
    required this.groupName,
    super.key,
  });

  final Course course;
  final String groupName;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setApplicationSwitcherDescription(
      ApplicationSwitcherDescription(
        label: course.title,
        primaryColor: Theme.of(context).primaryColor.value,
      ),
    );
    return AppResponsiveScaffold(
      child: Padding(
        padding: AppPaddings.padBottom40,
        child: Column(
          children: <Widget>[
            AppGaps.gapH48,
            Padding(
              padding: AppPaddings.padH24,
              child: AppText(
                course.title.toUpperCase(),
                style: AppTextStyles.h1,
              ),
            ),
            Padding(
              padding: AppPaddings.padH24,
              child: AppText(
                course.description,
                style: AppTextStyles.p,
              ),
            ),
            AppGaps.gapH24,
            for (var section in course.sections)
              SectionPage(
                sectionPath: section.path,
                coursePath: course.path,
                groupName: groupName,
              )
          ],
        ),
      ),
    );
  }
}
