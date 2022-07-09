import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/index.dart';
import 'package:the_monkslab_web/src/ui/sizes.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final courseSections = limitless.structure;

    return Scaffold(
        body: ListView.builder(
      itemCount: courseSections.length,
      itemBuilder: ((context, index) {
        final section = courseSections[index];
        return CourseItem(section: section);
      }),
    ));
  }
}

class CourseItem extends StatelessWidget {
  const CourseItem({
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
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) {
                              return Text(chapter.description);
                            }),
                          ),
                        ),
                    child: Text(chapter.title)),
                gapH12,
              ],
            ),
        ],
      ),
    );
  }
}
