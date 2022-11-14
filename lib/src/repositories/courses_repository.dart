import 'package:the_monkslab_web/src/apis/firestore_api.dart';
import 'package:the_monkslab_web/src/models/learning_path.dart';

class CoursesRepository {
  CoursesRepository({FirestoreApi? firebaseApi})
      : _firebaseApi = firebaseApi ?? FirestoreApi();

  final FirestoreApi _firebaseApi;

  Future<LearningPath> getLearningPath() async {
    return await _firebaseApi.getLearningPath();
  }
}
