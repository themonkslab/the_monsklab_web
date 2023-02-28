import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/features/_index.dart';
import 'package:the_monkslab_web/src/features/course/presentation/course_populated.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

class CoursePage extends StatelessWidget {
  const CoursePage(this.path, {super.key});

  final String path;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CourseCubit>(
      create: (context) => CourseCubit(
        coursesRepository: context.read<CoursesRepository>(),
      )..fetchCourse(path),
      child: const CourseView(),
    );
  }
}

class CourseView extends StatelessWidget {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseCubit, CourseState>(
      builder: (context, state) {
        switch (state.status) {
          case CourseStatus.loading:
            return const AppLoader();
          case CourseStatus.failure:
            return const AppFailure();
          case CourseStatus.success:
            return CoursePopulated(
              course: state.course!,
            );
          default:
            return const AppFailure();
        }
      },
    );
  }
}
