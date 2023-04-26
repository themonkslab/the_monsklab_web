import 'package:flutter_test/flutter_test.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

import '../../utils/common.dart';

void main() {
  group('Courses Repository', () {
    test('model mapping', () async {
      final List list =
          TestHelper.getJsonFromTestResources('test/resources/courses.json');

      //* Test single article convertion
      final fileArticle = list[0]['courses'][0]['sections'][0]['articles'][0]
          as Map<String, dynamic>;
      final article = FileArticle.fromMap(fileArticle);
      assert(article.title == '1.Introducción');

      //* Test articles convertion
      final fileArticlesMap =
          list[0]['courses'][0]['sections'][0]['articles'] as List;
      assert(fileArticlesMap.length == 4);
      final articles =
          fileArticlesMap.map((e) => FileArticle.fromMap(e)).toList();
      assert(articles.length == fileArticlesMap.length);

      //* Test sections convertion
      final fileSections = list[0]['courses'][0]['sections'] as List;
      assert(fileSections.length == 2);
      final sections = fileSections.map((e) => FileArticle.fromMap(e)).toList();
      assert(fileSections.length == sections.length);

      //* Test courses convertion
      final fileCourses = list[0]['courses'] as List;
      assert(fileCourses.length == 1);
      final courses = fileCourses.map((e) => FileCourse.fromMap(e)).toList();
      assert(fileCourses.length == courses.length);

      //* Test courses group convertion
      assert(list.length == 2);
      final coursesGroup =
          list.map((e) => FileCoursesGroup.fromMap(e)).toList();
      assert(list.length == coursesGroup.length);
      assert(coursesGroup.first.groupName == 'Learning Path');
    });
  });
}
