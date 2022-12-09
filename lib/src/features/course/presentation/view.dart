import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/features/_index.dart';
import 'package:the_monkslab_web/src/features/section/_index.dart';
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
            return AppResponsiveScaffold(
                child: Padding(
              padding: AppPaddings.padBottom40,
              child: Column(
                children: <Widget>[
                  AppGaps.gapH48,
                  Padding(
                    padding: AppPaddings.padH24,
                    child: Text(
                      state.course!.title.toUpperCase(),
                      style: AppTextStyles.h1,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.padH24,
                    child: Text(
                      state.course!.description,
                      style: AppTextStyles.p,
                    ),
                  ),
                  AppGaps.gapH24,
                  for (var section in state.course!.sections)
                    SectionPage(path: section.path)
                ],
              ),
            ));
          default:
            return const AppFailure();
        }
      },
    );
  }
}
