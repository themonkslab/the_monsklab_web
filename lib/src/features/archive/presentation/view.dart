import 'package:beamer/beamer.dart';
import 'package:courses_repository/courses_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/core/routing/routing.dart';
import 'package:the_monkslab_web/src/features/archive/presentation/bloc/archive_cubit.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/ui/widgets/hypertext.dart';
import 'package:the_monkslab_web/src/utils/extensions.dart';

class ArchivePage extends StatelessWidget {
  const ArchivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ArchiveCubit(
        context.read<CoursesRepository>()..getLearningPath(),
      ),
      child: const ArchiveView(),
    );
  }
}

class ArchiveView extends StatelessWidget {
  const ArchiveView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenType = context.getScreenType();

    final isPhoneOrTablet =
        screenType == ScreenType.phone || screenType == ScreenType.tablet;

    return BlocBuilder<ArchiveCubit, ArchiveState>(
      builder: (context, state) {
        switch (state.status) {
          case ArchiveStatus.loading:
            return const Material(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case ArchiveStatus.failure:
            return const Material(
              child: Center(
                child: Text('Ooops! Something happened! Sorry!'),
              ),
            );
          case ArchiveStatus.success:
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
                            state.learningPath!.title,
                            style: isPhoneOrTablet
                                ? AppTextStyles.h2Phone
                                : AppTextStyles.h2,
                          ),
                          AppGaps.gapH12,
                          for (var course in state.learningPath!.courses)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: AppHypertext(
                                text: course.title,
                                onPressed: () => context.beamToNamed(
                                  '/${AppRoutes.course.name}/${course.id}',
                                ),
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
          default:
            return const Material(
              child: Center(
                child: Text('Coming soon!'),
              ),
            );
        }
      },
    );
  }
}
