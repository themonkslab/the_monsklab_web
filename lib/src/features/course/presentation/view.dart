import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/features/course/presentation/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

class CourseView extends StatelessWidget {
  const CourseView(
    this.courseId, {
    Key? key,
  }) : super(key: key);

  final int courseId;

  @override
  Widget build(BuildContext context) {
    //TODO -MEDIUM- from git/firebase
    final course = flutterLearningPath.courses
        .where((course) => course.id == courseId)
        .first;

    final courseSections = course.content;

    return AppResponsiveScaffold(
        child: Column(
      children: <Widget>[
        gapH48,
        Padding(
          padding: padH24,
          child: Text(course.title.toUpperCase(), style: AppTextStyles.h1),
        ),
        Padding(
          padding: padH24,
          child: Text(course.description, style: AppTextStyles.p),
        ),
        gapH24,
        for (var section in courseSections)
          SectionItem(
            sectionId: section.id,
            courseId: course.id,
          )
      ],
    ));
  }
}
