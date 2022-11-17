import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

class SectionItem extends StatelessWidget {
  const SectionItem({
    required this.section,
    Key? key,
  }) : super(key: key);

  final SectionReference section;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppGaps.gapH24,
          Container(
            padding: AppPaddings.padAll16,
            width: double.infinity,
            child: Text(
              section.title.toUpperCase(),
              style: AppTextStyles.h2.copyWith(color: AppColors.black),
            ),
          ),
          AppGaps.gapH12,
          for (var article in section.articles)
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<
                            ContinuousRectangleBorder>(
                          const ContinuousRectangleBorder(),
                        ),
                      ),
                      // onPressed: () => context.beamToNamed(
                      //       '/${AppRoutes.article.name}/$courseId/$sectionId/${chapter.id}',
                      //     ),
                      onPressed: () {},
                      child: Padding(
                        padding: AppPaddings.padAll16,
                        child: Row(
                          children: [
                            Text(article.title),
                          ],
                        ),
                      )),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
