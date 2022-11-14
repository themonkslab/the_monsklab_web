import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:the_monkslab_web/src/models/learning_path.dart';

class RequestFailure implements Exception {}

class NotFoundFailure implements Exception {}

class FirestoreApi {
  FirestoreApi({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  final FirebaseFirestore _firestore;

  getLearningPath() async {
    final doc = await _firestore
        .collection('learningPath')
        .doc('fCWOrEcwfax6Y7mew1Qt')
        .get();
    return LearningPath.fromDocumentSnapshot(doc);
  }
}
