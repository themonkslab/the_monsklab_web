import 'package:the_monkslab_web/src/apis/firestore_api.dart';
import 'package:the_monkslab_web/src/models/_index.dart';

class CoursesRepository {
  CoursesRepository({FirestoreApi? firebaseApi})
      : _firebaseApi = firebaseApi ?? FirestoreApi();

  final FirestoreApi _firebaseApi;

  Future<LearningPath> getLearningPath() async {
    return await _firebaseApi.getLearningPath();
  }

  Future<Course> getCourse(String path) async {
    return await _firebaseApi.getCourse(path);
  }
}
