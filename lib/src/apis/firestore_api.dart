import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/models/section.dart';

class RequestFailure implements Exception {}

class NotFoundFailure implements Exception {}

class FirestoreApi {
  FirestoreApi({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  final FirebaseFirestore _firestore;

  Future<LearningPath> getLearningPath(String path) async {
    final doc = await _firestore.collection('learningPath').doc(path).get();
    return LearningPath.fromDocumentSnapshot(doc);
  }

  Future<Course> getCourse(String path) async {
    final doc = await _firestore.collection('course').doc(path).get();
    return Course.fromDocumentSnapshot(doc);
  }

  Future<Section> getSection(String path) async {
    final doc = await _firestore.collection('section').doc(path).get();
    return Section.fromDocumentSnapshot(doc);
  }

  Future<Article> getArticle(String path) async {
    //TODO -HIGH- make http instead
    final doc = await _firestore.collection('article').doc(path).get();
    final content = await getArticleContent(doc.data()!['contentUrl']);
    return Article(
      id: doc.id,
      title: doc.data()!['title'],
      description: doc.data()!['description'],
      content: content,
      author: Author(name: doc.data()!['author'], picture: 'mau_photo'),
      //published: doc.data()!['published'],
      published: DateTime.now(),
    );
  }

  Future<String> getArticleContent(String contentUrl) async {
    try {
      var response = await Dio().get(contentUrl);
      return response.data;
    } catch (e) {
      return e.toString();
    }
  }
}
