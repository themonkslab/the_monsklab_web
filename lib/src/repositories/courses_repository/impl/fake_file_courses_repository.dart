import 'dart:convert';
import 'dart:io';

import 'package:the_monkslab_web/src/repositories/_index.dart';

class FakeFileCoursesRepository extends FileCoursesRepository {
  FakeFileCoursesRepository();

  @override
  Future<String> fetchCoursesIndexString() async {
    return jsonDecode(utf8.decode(File('test/resources/courses.json').readAsBytesSync()));
  }

  @override
  Future<String> getArticleContent(FileArticle fileArticle) async {
    return '123';
  }
}
