import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/features/article/article_populated.dart';
import 'package:the_monkslab_web/src/features/article/presentation/bloc/article_cubit.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

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
    super.key,
  });

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
      }),
    );
  }
}
