import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/features/article/article_populated.dart';
import 'package:the_monkslab_web/src/features/article/presentation/bloc/article_cubit.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({
    required this.articlePath,
    required this.sectionPath,
    required this.coursePath,
    required this.groupName,
    super.key,
  });

  final String articlePath;
  final String sectionPath;
  final String coursePath;
  final String groupName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ArticleCubit>(
      create: (context) => ArticleCubit(
        coursesRepository: context.read<CoursesRepository>(),
      )..fetchArticle(
          articlePath,
          sectionPath,
          coursePath,
          groupName,
        ),
      child: const ArticleView(),
    );
  }
}

class ArticleView extends StatefulWidget {
  const ArticleView({
    super.key,
  });

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  final scrollController = ScrollController();
  bool isHeaderOnScreen = true;
  double screenHeight = 1;

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
      builder: (context, state) {
        switch (state.status) {
          case ArticleStatus.initial:
          case ArticleStatus.loading:
            return const AppLoader();
          case ArticleStatus.failure:
            return const AppFailure();
          case ArticleStatus.success:
            return ArticlePopulated(
              isHeaderOnScreen: isHeaderOnScreen,
              scrollController: scrollController,
              article: state.article!,
            );
        }
      },
    );
  }
}
