import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/features/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

class CoursePage extends StatelessWidget {
  const CoursePage(this.path, {super.key});

  final String path;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CourseCubit>(
      create: (context) => CourseCubit(
        coursesRepository: context.read<CoursesRepository>(),
        path: path,
      )..fetchCourse(),
      child: const CourseView(),
    );
  }
}

class CourseView extends StatelessWidget {
  const CourseView({
    Key? key,
  }) : super(key: key);

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
