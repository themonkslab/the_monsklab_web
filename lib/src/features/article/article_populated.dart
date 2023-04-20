import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_monkslab_web/src/features/article/_index.dart';
import 'package:the_monkslab_web/src/features/article/presentation/article_footer.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class ArticlePopulated extends StatelessWidget {
  const ArticlePopulated({
    required this.isHeaderOnScreen,
    required this.scrollController,
    required this.article,
    super.key,
  });

  final bool isHeaderOnScreen;
  final ScrollController scrollController;
  final Article article;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setApplicationSwitcherDescription(
      ApplicationSwitcherDescription(
        label: article.title,
        primaryColor: Theme.of(context).primaryColor.value,
      ),
    );

    final screenType = context.getScreenType();
    final isDesktopOrLarge = screenType == ScreenType.desktop || screenType == ScreenType.large;

    return isDesktopOrLarge
        ? Scaffold(
            appBar: isHeaderOnScreen
                ? const AppAppBar(
                    elevation: 0,
                    backgroundColor: AppColors.black,
                  )
                : const AppAppBar(showSocials: true),
            body: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  ArticleHeader(
                    article: article,
                  ),
                  AppGaps.gapH24,
                  Container(
                    color: Colors.white,
                    width: isDesktopOrLarge ? AppSizes.largeContentContainer : AppSizes.desktopContentContainer,
                    child: ArticleBody(data: article.content ?? ''),
                  ),
                  AppGaps.gapH48,
                  const ArticleFooter(),
                ],
              ),
            ),
          )
        : Scaffold(
            appBar: isHeaderOnScreen
                ? const AppAppBar(
                    elevation: 0,
                    backgroundColor: AppColors.black,
                  )
                : const AppAppBar(showSocials: true),
            body: ListView(
              controller: scrollController,
              children: <Widget>[
                ArticleHeader(article: article),
                AppGaps.gapH24,
                ArticleBody(data: article.content ?? ''),
                AppGaps.gapH48,
                const ArticleFooter(),
              ],
            ),
          );
  }
}
