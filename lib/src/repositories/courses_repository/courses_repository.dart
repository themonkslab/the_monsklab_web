import 'package:the_monkslab_web/src/apis/courses/courses_api.dart';
import 'package:the_monkslab_web/src/models/_index.dart';

abstract class CoursesRepository {
  CoursesRepository({CoursesApi? coursesApi});

  Future<List<Courses>?> getCourses(String courseGroup);
  Future<Course?> getCourse(String path);
  Future<Section?> getSection(String path);
  Future<Article?> getArticle(String path);
}
