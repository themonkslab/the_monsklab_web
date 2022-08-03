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
    required this.data,
  }) : super(key: key);
  final String data;

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  final scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      print('offset: ${scrollController.offset}');
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenType = context.getScreenType();
    final isDesktopOrLarge =
        screenType == ScreenType.desktop || screenType == ScreenType.large;

    if (screenType == ScreenType.phone) {
      return Scaffold(
        appBar: const AppAppBar(
          title: '',
          showSocials: true,
        ),
        body: ListView(
          controller: scrollController,
          children: <Widget>[
            ArticleHeader(
              chapter: CourseChapter(
                author: const AppAuthor(
                  name: 'Mau Di Bert',
                  picture: AppAssets.mauPicture,
                ),
                data: '',
                description:
                    'Mentalidad es la disposición mental que limita o expande las posibilidades de lo que uno puede hacer. Cuando asumimos la responsabilidad de algo, nos imbuimos de un gran poder para mejorar las cosas',
                title: 'Mentalidad sin límites',
              ),
            ),
            gapH24,
            ArticleBody(data: widget.data),
            gapH48,
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: const AppAppBar(title: ''),
        body: Center(
          child: Container(
            color: Colors.white,
            width: isDesktopOrLarge ? 960.0 : 760.0,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              children: <Widget>[
                gapH24,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ArticleHeader(
                      chapter: CourseChapter(
                        author: const AppAuthor(
                          name: 'Mau Di Bert',
                          picture: AppAssets.mauPicture,
                        ),
                        data: '',
                        description:
                            'Mentalidad es la disposición mental que limita o expande las posibilidades de lo que uno puede hacer. Cuando asumimos la responsabilidad de algo, nos imbuimos de un gran poder para mejorar las cosas',
                        title: 'Mentalidad sin límites',
                      ),
                    ),
                  ],
                ),
                gapH24,
                ArticleBody(data: widget.data),
                gapH48,
              ],
            ),
          ),
        ),
      );
    }
  }
}
