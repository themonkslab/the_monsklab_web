import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/features/article/_index.dart';
import 'package:the_monkslab_web/src/repositories/courses_repository.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

import 'bloc/article_cubit.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({
    required this.path,
    super.key,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ArticleCubit>(
      create: (context) => ArticleCubit(
        coursesRepository: context.read<CoursesRepository>(),
      )..fetchArticle(path),
      child: const ArticleView(),
    );
  }
}

class ArticleView extends StatefulWidget {
  const ArticleView({
    Key? key,
  }) : super(key: key);

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  final scrollController = ScrollController();
  late bool isHeaderOnScreen;
  late double screenHeight;

  @override
  void initState() {
    super.initState();
    isHeaderOnScreen = true;

    scrollController.addListener(() {
      if (scrollController.offset > screenHeight) {
        isHeaderOnScreen = false;
        setState(() {});
      } else {
        isHeaderOnScreen = true;
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticleCubit, ArticleState>(
      builder: ((context, state) {
        screenHeight = MediaQuery.of(context).size.height;

        //TODO -MEDIUM- use build.when?
        switch (state.status) {
          case ArticleStatus.loading:
            return const AppLoader();
          case ArticleStatus.failure:
            return const AppFailure();
          case ArticleStatus.success:
            final article = state.article;
            final screenType = context.getScreenType();
            final isDesktopOrLarge = screenType == ScreenType.desktop ||
                screenType == ScreenType.large;

            if (screenType == ScreenType.phone) {
              return Scaffold(
                appBar: isHeaderOnScreen
                    ? const AppAppBar(
                        elevation: 0,
                        showSocials: false,
                        backgroundColor: AppColors.black,
                      )
                    : const AppAppBar(showSocials: true),
                body: ListView(
                  controller: scrollController,
                  children: <Widget>[
                    ArticleHeader(article: article!),
                    AppGaps.gapH24,
                    ArticleBody(data: article.content),
                    AppGaps.gapH48,
                  ],
                ),
              );
            } else {
              return Scaffold(
                appBar: isHeaderOnScreen
                    ? const AppAppBar(
                        elevation: 0,
                        showSocials: false,
                        backgroundColor: AppColors.black,
                      )
                    : const AppAppBar(showSocials: true),
                body: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        ArticleHeader(
                          article: article!,
                        ),
                        AppGaps.gapH24,
                        Container(
                            color: Colors.white,
                            width: isDesktopOrLarge
                                ? AppSizes.largeContentContainer
                                : AppSizes.desktopContentContainer,
                            child: ArticleBody(data: article.content)),
                        AppGaps.gapH48,
                      ],
                    )),
              );
            }

          default:
            return const AppFailure();
        }
      }),
    );
  }
}
