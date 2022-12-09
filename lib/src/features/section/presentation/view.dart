import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/core/routing/routing.dart';
import 'package:the_monkslab_web/src/features/section/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

class SectionPage extends StatelessWidget {
  const SectionPage({
    required this.path,
    super.key,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SectionCubit>(
      create: (context) => SectionCubit(
        coursesRepository: context.read<CoursesRepository>(),
      )..fetchSection(path),
      child: const SectionView(),
    );
  }
}

class SectionView extends StatelessWidget {
  const SectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SectionCubit, SectionState>(
      builder: ((context, state) {
        switch (state.status) {
          case SectionStatus.loading:
            //TODO -MEDIUM- coordinate loading in relation with parent
            return const SizedBox.shrink();
          case SectionStatus.failure:
            return const AppFailure();
          case SectionStatus.success:
            return SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppGaps.gapH24,
                  Container(
                    padding: AppPaddings.padAll16,
                    width: double.infinity,
                    child: Text(
                      state.section!.title.toUpperCase(),
                      style: AppTextStyles.h2.copyWith(color: AppColors.black),
                    ),
                  ),
                  AppGaps.gapH12,
                  for (var article in state.section!.articles)
                    Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    ContinuousRectangleBorder>(
                                  const ContinuousRectangleBorder(),
                                ),
                              ),
                              onPressed: () => context.beamToNamed(
                                    '/${AppRoutes.article.name}/${article.path}',
                                  ),
                              child: Padding(
                                padding: AppPaddings.padAll16,
                                child: Row(
                                  children: [
                                    Text(article.title),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                ],
              ),
            );
          default:
            return const AppFailure();
        }
      }),
    );
  }
}
