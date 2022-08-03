import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/index.dart';
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
          gapH24,
          Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            child: Text(
              section.title.toUpperCase(),
              style: AppTextStyles.h2.copyWith(color: Colors.black),
            ),
          ),
          gapH12,
          for (var chapter in section.chapters)
            Column(
              children: [
                OutlinedButton(
                    onPressed: () {},
                    // onPressed: () =>
                    //     context.goNamed(AppRoute.article.name, params: {
                    //       'data': chapter.data,
                    //     }),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(chapter.title),
                    )),
                gapH8,
              ],
            ),
        ],
      ),
    );
  }
}
