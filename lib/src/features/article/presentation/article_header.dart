// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/extensions.dart';

class ArticleHeader extends StatelessWidget {
  const ArticleHeader({
    required this.chapter,
    Key? key,
  }) : super(key: key);

  final CourseChapter chapter;

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
            padding: screenType == ScreenType.tablet ? padH48 : padH24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chapter.title,
                  style: AppTextStyles.h1HeaderPhone
                      .copyWith(color: AppColors.white),
                ),
                if (chapter.description != '') gapH20,
                if (chapter.description != '')
                  Text(
                    chapter.description,
                    style: AppTextStyles.descriptionHeaderPhone
                        .copyWith(color: AppColors.white),
                  ),
                gapH20,
                Text(
                  chapter.published.toReadable,
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.white,
                  ),
                ),
                if (chapter.readingTime != null)
                  Text(
                    chapter.readingTime!,
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
                Text(
                  chapter.title,
                  style:
                      AppTextStyles.h1Header.copyWith(color: AppColors.white),
                ),
                if (chapter.description != '') gapH20,
                if (chapter.description != '')
                  Text(
                    chapter.description,
                    style: AppTextStyles.descriptionHeader
                        .copyWith(color: AppColors.white),
                  ),
                gapH20,
                Text(
                  chapter.published.toReadable,
                  style: AppTextStyles.caption.copyWith(
                    color: AppColors.white,
                  ),
                ),
                if (chapter.readingTime != null)
                  Text(
                    chapter.readingTime!,
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
