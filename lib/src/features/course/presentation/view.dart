import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/features/course/presentation/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

class CourseView extends StatelessWidget {
  const CourseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final courseSections = limitless.content;

    return AppResponsiveScaffold(
        child: ListView(
      children: <Widget>[
        gapH24,
        Padding(
          padding: padH24,
          child: Text(limitless.title.toUpperCase(), style: AppTextStyles.h1),
        ),
        Padding(
          padding: padH24,
          child: Text(limitless.description, style: AppTextStyles.p),
        ),
        gapH24,
        for (var section in courseSections) SectionItem(section: section)
      ],
    ));
  }
}
