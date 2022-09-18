import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

import 'article_body.dart';
import 'article_header.dart';

class Article extends StatefulWidget {
  const Article({
    required this.chapterId,
    required this.sectionId,
    required this.courseId,
    Key? key,
  }) : super(key: key);

  final int chapterId;
  final int sectionId;
  final int courseId;

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
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
    screenHeight = MediaQuery.of(context).size.height;
    final chapter = flutterLearningPath.courses[widget.courseId]
        .content[widget.sectionId].chapters[widget.chapterId];

    final screenType = context.getScreenType();
    final isDesktopOrLarge =
        screenType == ScreenType.desktop || screenType == ScreenType.large;

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
            ArticleHeader(chapter: chapter),
            gapH24,
            ArticleBody(data: chapter.data),
            gapH48,
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
                  chapter: chapter,
                ),
                gapH24,
                Container(
                    color: Colors.white,
                    width: isDesktopOrLarge
                        ? AppSizes.largeContentContainer
                        : AppSizes.desktopContentContainer,
                    child: ArticleBody(data: chapter.data)),
                gapH48,
              ],
            )),
      );
    }
  }
}
