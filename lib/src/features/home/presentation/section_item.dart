import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_monkslab_web/src/constants/index.dart';
import 'package:the_monkslab_web/src/routing/app_router.dart';
import 'package:the_monkslab_web/src/ui/index.dart';

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
          Text(section.title),
          gapH12,
          for (var chapter in section.chapters)
            Column(
              children: [
                ElevatedButton(
                    onPressed: () => context.goNamed(AppRoute.article.name,
                        params: {'data': chapter.data}),
                    child: Text(chapter.title)),
                gapH12,
              ],
            ),
        ],
      ),
    );
  }
}
