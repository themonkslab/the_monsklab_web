import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:the_monkslab_web/src/models/learning_path.dart';

class RequestFailure implements Exception {}

class NotFoundFailure implements Exception {}

class FirestoreApi {
  FirestoreApi({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  final FirebaseFirestore _firestore;

  Future<LearningPath> getLearningPath() async {
    final doc = await _firestore
        .collection('learningPath')
        .doc('iDZmfaVMVGQdh1UB3QSS')
        .get();
    return LearningPath.fromDocumentSnapshot(doc);
  }
}
