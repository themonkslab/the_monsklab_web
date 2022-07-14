import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/index.dart';
import 'package:the_monkslab_web/src/ui/index.dart';
import 'package:the_monkslab_web/src/utils/index.dart';

import 'article_body.dart';
import 'article_header.dart';

class Article extends StatelessWidget {
  const Article({
    Key? key,
    required this.data,
  }) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    final screenType = context.getScreenType();
    final isDesktopOrLarge =
        screenType == ScreenType.desktop || screenType == ScreenType.large;

    if (screenType == ScreenType.phone) {
      return Scaffold(
        appBar: const AppAppBar(),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            gapH24,
            const ArticleHeader(
                author: AppAuthor(
              name: 'Mau Di Bert',
              picture: AppAssets.mauPicture,
            )),
            gapH8,
            const AppSocials(),
            gapH24,
            ArticleBody(data: data),
            gapH48,
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: const AppAppBar(),
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
                  children: const [
                    ArticleHeader(
                        author: AppAuthor(
                      name: 'Mau Di Bert',
                      picture: AppAssets.mauPicture,
                    )),
                    AppSocials(),
                  ],
                ),
                gapH24,
                ArticleBody(data: data),
                gapH48,
              ],
            ),
          ),
        ),
      );
    }
  }
}
