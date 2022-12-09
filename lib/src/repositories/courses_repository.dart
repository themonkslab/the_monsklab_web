import 'package:mocktail/mocktail.dart';
import 'package:the_monkslab_web/src/apis/firestore_api.dart';
import 'package:the_monkslab_web/src/models/_index.dart';

//TODO -MEDIUM- create abstract class
class CoursesRepository {
  CoursesRepository({FirestoreApi? firebaseApi})
      : _firebaseApi = firebaseApi ?? FirestoreApi();

  final FirestoreApi _firebaseApi;

  Future<LearningPath> getLearningPath(String path) async {
    return await _firebaseApi.getLearningPath(path);
  }

  Future<void> createEmptyArticle() async {
    return await _firebaseApi.createEmptyArticles();
  }

  Future<Course> getCourse(String path) async {
    return await _firebaseApi.getCourse(path);
  }

  Future<Section> getSection(String path) async {
    return await _firebaseApi.getSection(path);
  }

  Future<Article> getArticle(String path) async {
    return await _firebaseApi.getArticle(path);
  }
}

class MockCoursesRepository extends Mock implements CoursesRepository {}
