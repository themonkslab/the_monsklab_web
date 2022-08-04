import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/index.dart';
import 'package:the_monkslab_web/src/ui/index.dart';
import 'package:the_monkslab_web/src/utils/index.dart';

import 'article_body.dart';
import 'article_header.dart';

//TODO Continue with Mark Manson approach
// 1. Get height
// 2. Get position of scrolling
// 3. Display different app bars / headers
// 4. Change styles
class Article extends StatefulWidget {
  const Article({
    Key? key,
    required this.chapter,
  }) : super(key: key);

  final CourseChapter chapter;

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  final scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      debugPrint('offset: ${scrollController.offset}');
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenType = context.getScreenType();
    final isDesktopOrLarge =
        screenType == ScreenType.desktop || screenType == ScreenType.large;

    if (screenType == ScreenType.phone) {
      return Scaffold(
        appBar: const AppAppBar(showSocials: true),
        body: ListView(
          controller: scrollController,
          children: <Widget>[
            ArticleHeader(chapter: widget.chapter),
            gapH24,
            ArticleBody(data: widget.chapter.data),
            gapH48,
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: const AppAppBar(),
        body: SingleChildScrollView(
            child: Column(
          children: [
            ArticleHeader(
              chapter: widget.chapter,
            ),
            gapH24,
            Container(
                color: Colors.white,
                width: isDesktopOrLarge
                    ? AppSizes.largeContentContainer
                    : AppSizes.desktopContentContainer,
                child: ArticleBody(data: widget.chapter.data)),
            gapH48,
          ],
        )),
      );
    }
  }
}
