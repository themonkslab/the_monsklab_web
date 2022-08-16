import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/index.dart';
import 'package:the_monkslab_web/src/ui/index.dart';

import '../../../core/routing/routing.dart';

class SectionItem extends StatelessWidget {
  const SectionItem({
    Key? key,
    required this.section,
  }) : super(key: key);
  final CourseSection section;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          gapH24,
          Container(
            padding: const EdgeInsets.all(16.0),
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
                            '${AppRoutes.article.name}/:chapter',
                            data: chapter,
                          ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
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
