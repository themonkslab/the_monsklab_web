import 'package:the_monkslab_web/src/models/_index.dart';

abstract class CoursesApi {
  Future<void> setCourse(String id, String title, String description, List<dynamic> sectionsList);
  Future<void> setArticle(String id, Map<String, dynamic> content);
  Future<void> deleteArticle(String id);
  Future<void> setSection(String id, Map<String, dynamic> content);
  Future<void> deleteSection(String id);
  Future<LearningPath> getLearningPath(String id);
  Future<void> updateLearningPath(String id, Map<String, dynamic> content);
  Future<Course> getCourse(String path);
  Future<Section> getSection(String path);
  Future<Article> getArticle(String path);
}
