import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/constants/environment.dart';
import 'package:the_monkslab_web/src/features/_index.dart';
import 'package:the_monkslab_web/src/features/archive/presentation/bloc/archive_cubit.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/extensions.dart';

class ArchivePage extends StatelessWidget {
  const ArchivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ArchiveCubit>(
      create: (context) => ArchiveCubit(
        context.read<CoursesRepository>(),
      )..fetchLearningPath(AppEnvironment.flutterLearningPathId),
      child: const ArchiveView(),
    );
  }
}

class ArchiveView extends StatelessWidget {
  const ArchiveView({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO -LOW/MEDIUM- create AppLayoutBuilder
    final screenType = context.getScreenType();
    final isPhoneOrTablet =
        screenType == ScreenType.phone || screenType == ScreenType.tablet;

    return BlocBuilder<ArchiveCubit, ArchiveState>(
      builder: (context, state) {
        switch (state.status) {
          case ArchiveStatus.loading:
            return const AppLoader();
          case ArchiveStatus.failure:
            return const AppFailure();
          case ArchiveStatus.success:
            return ArchivePopulated(
              isPhoneOrTablet: isPhoneOrTablet,
              learningPath: state.learningPath!,
            );
          default:
            return const AppFailure();
        }
      },
    );
  }
}
