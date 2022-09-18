import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

import '../../../core/routing/routing.dart';

class SectionItem extends StatelessWidget {
  const SectionItem({
    required this.sectionId,
    required this.courseId,
    Key? key,
  }) : super(key: key);

  final int sectionId;
  final int courseId;

  @override
  Widget build(BuildContext context) {
    final section = flutterLearningPath.courses[courseId].content[sectionId];

    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapH24,
          Container(
            padding: padAll16,
            width: double.infinity,
            child: Text(
              section.title.toUpperCase(),
              style: AppTextStyles.h2.copyWith(color: AppColors.black),
            ),
          ),
          gapH12,
          for (var chapter in section.chapters)
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
                      onPressed: () => context.beamToNamed(
                            '/${AppRoutes.article.name}/$courseId/$sectionId/${chapter.id}',
                          ),
                      child: Padding(
                        padding: padAll16,
                        child: Row(
                          children: [
                            Text(chapter.title),
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
