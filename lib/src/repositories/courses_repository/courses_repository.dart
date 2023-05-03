import 'dart:ui';

import 'package:the_monkslab_web/src/models/_index.dart';

abstract class CoursesRepository {
  Locale locale = const Locale('en');
  Future<List<CourseGroup>?> fetchAll();
  Future<CourseGroup?> fetchCourseGroup(String groupName);
  Future<Course?> fetchCourse(String coursePath, String groupName);
  Future<Section?> fetchSection(
    String sectionPath,
    String coursePath,
    String groupName,
  );
  Future<Article?> fetchArticle(
    String articlePath,
    String sectionPath,
    String coursePath,
    String groupName,
  );
}
