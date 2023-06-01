// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/extensions.dart';

class ArticleHeader extends StatelessWidget {
  const ArticleHeader({
    required this.article,
    super.key,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = context.height;
    final screenType = context.getScreenType();

    if (screenType == ScreenType.phone || screenType == ScreenType.tablet) {
      return Container(
        height: deviceHeight,
        width: double.infinity,
        color: AppColors.black,
        child: Center(
          child: Padding(
            padding: screenType == ScreenType.tablet
                ? AppPaddings.padH48
                : AppPaddings.padH24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  article.title,
                  style: AppTextStyles.h1HeaderPhone
                      .copyWith(color: AppColors.white),
                ),
                if (article.description != '') AppGaps.gapH20,
                if (article.description != '')
                  AppText(
                    article.description,
                    style: AppTextStyles.descriptionHeaderPhone
                        .copyWith(color: AppColors.white),
                  ),
                AppGaps.gapH20,
                // AppText(
                //   article.published,
                //   style: AppTextStyles.caption.copyWith(
                //     color: AppColors.white,
                //   ),
                // ),
                if (article.readingTime != null)
                  AppText(
                    article.readingTime!,
                    style: AppTextStyles.captionMini.copyWith(
                      color: AppColors.white,
                    ),
                  ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Container(
        height: deviceHeight,
        width: double.infinity,
        color: AppColors.black,
        child: Center(
          child: SizedBox(
            height: deviceHeight,
            width: AppSizes.desktopContentContainer,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  article.title,
                  style:
                      AppTextStyles.h1Header.copyWith(color: AppColors.white),
                ),
                if (article.description != '') AppGaps.gapH20,
                if (article.description != '')
                  AppText(
                    article.description,
                    style: AppTextStyles.descriptionHeader
                        .copyWith(color: AppColors.white),
                  ),
                AppGaps.gapH20,
                // AppText(
                //   article.published,
                //   style: AppTextStyles.caption.copyWith(
                //     color: AppColors.white,
                //   ),
                // ),
                if (article.readingTime != null)
                  AppText(
                    article.readingTime!,
                    style: AppTextStyles.captionMini.copyWith(
                      color: AppColors.white,
                    ),
                  ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
