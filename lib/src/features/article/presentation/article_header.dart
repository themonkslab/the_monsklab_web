// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/index.dart';
import 'package:the_monkslab_web/src/ui/sizes.dart';
import 'package:the_monkslab_web/src/utils/extensions.dart';

class ArticleHeader extends StatelessWidget {
  const ArticleHeader({
    required this.chapter,
    Key? key,
  }) : super(key: key);

  final CourseChapter chapter;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      height: deviceHeight,
      color: AppColors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              chapter.title,
              style: AppTextStyles.h1Header.copyWith(color: AppColors.white),
            ),
            if (chapter.description != '') gapH20,
            if (chapter.description != '')
              Text(
                chapter.description,
                style: AppTextStyles.descriptionHeader.copyWith(
                  color: AppColors.white,
                ),
              ),
            gapH20,
            Text(
              'June 27 · 3 min read'.hardcoded,
              style: AppTextStyles.caption.copyWith(
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
