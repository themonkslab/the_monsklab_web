import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/constants/urls.dart';
import 'package:the_monkslab_web/src/core/_index.dart';
import 'package:the_monkslab_web/src/features/section/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/ui/widgets/hypertext.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class SectionPage extends StatelessWidget {
  const SectionPage({
    required this.sectionPath,
    required this.coursePath,
    required this.groupName,
    super.key,
  });

  final String sectionPath;
  final String coursePath;
  final String groupName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SectionCubit>(
      create: (context) => SectionCubit(
        coursesRepository: context.read<CoursesRepository>(),
      )..fetchSection(
          sectionPath,
          coursePath,
          groupName,
        ),
      child: SectionView(
        sectionPath: sectionPath,
        coursePath: coursePath,
        groupName: groupName,
      ),
    );
  }
}

class SectionView extends StatelessWidget {
  const SectionView({
    required this.sectionPath,
    required this.coursePath,
    required this.groupName,
    super.key,
  });

  final String sectionPath;
  final String coursePath;
  final String groupName;

  @override
  Widget build(BuildContext context) {
    final screenType = context.getScreenType();
    final isPhone = screenType == ScreenType.phone;

    return BlocBuilder<SectionCubit, SectionState>(
      builder: (context, state) {
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
                        isPhone
                            ? SizedBox(
                                width: double.infinity,
                                child: OutlinedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        ContinuousRectangleBorder>(
                                      const ContinuousRectangleBorder(),
                                    ),
                                  ),
                                  onPressed: () => context.beamToNamed(
                                    '/${context.read<LocaleCubit>().state.locale.languageCode}/archive/$groupName/$coursePath/$sectionPath/${article.path}',
                                  ),
                                  child: Padding(
                                    padding: AppPaddings.padAll16,
                                    child: Row(
                                      children: [
                                        Text(article.title),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : Padding(
                                padding: AppPaddings.padV4,
                                child: AppHypertext(
                                  text: article.title,
                                  onTap: () => context.beamToNamed(
                                    '/${context.read<LocaleCubit>().state.locale.languageCode}/archive/$groupName/$coursePath/$sectionPath/${article.path}',
                                  ),
                                  onTertiaryTapUp: () => UrlHelper.launchUrl(
                                    '${AppUrls.monkslabWeb}${AppRoutes.article.name}/${article.path}',
                                  ),
                                  style: AppTextStyles.h3,
                                ),
                              ),
                      ],
                    ),
                ],
              ),
            );
          default:
            return const AppFailure();
        }
      },
    );
  }
}
