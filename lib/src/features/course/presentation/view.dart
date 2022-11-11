import 'package:flutter/material.dart';

class CourseView extends StatelessWidget {
  const CourseView(
    this.courseId, {
    Key? key,
  }) : super(key: key);

  final int courseId;

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
    // TODO -MEDIUM- from git/firebase
    // final course = flutterLearningPath.courses
    //     .where((course) => course.id == courseId)
    //     .first;

    // final courseSections = course.sections;

    // return AppResponsiveScaffold(
    //     child: Column(
    //   children: <Widget>[
    //     AppGaps.gapH48,
    //     Padding(
    //       padding: AppPaddings.padH24,
    //       child: Text(
    //         course.title.toUpperCase(),
    //         style: AppTextStyles.h1,
    //       ),
    //     ),
    //     Padding(
    //       padding: AppPaddings.padH24,
    //       child: Text(
    //         course.description,
    //         style: AppTextStyles.p,
    //       ),
    //     ),
    //     AppGaps.gapH24,
    //     for (var section in courseSections)
    //       SectionItem(
    //         sectionId: section.id,
    //         courseId: course.id,
    //       )
    //   ],
    // ));
  }
}
