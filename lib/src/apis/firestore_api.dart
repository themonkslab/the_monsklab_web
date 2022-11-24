import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:the_monkslab_web/src/apis/_index.dart';
import 'package:the_monkslab_web/src/models/_index.dart';

class FirestoreApi {
  FirestoreApi({
    FirebaseFirestore? firestore,
    HttpApi? httpApi,
  })  : _firestore = firestore ?? FirebaseFirestore.instance,
        _httpApi = httpApi ?? HttpApi();

  final FirebaseFirestore _firestore;
  final HttpApi _httpApi;

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
    final doc = await _firestore.collection('article').doc(path).get();
    final articleContent = await _httpApi.getRequest(doc.data()!['contentUrl']);
    return Article(
      id: doc.id,
      title: doc.data()!['title'],
      description: doc.data()!['description'],
      content: articleContent,
      author: Author(name: doc.data()!['author'], picture: 'mau_photo'),
      //published: doc.data()!['published'],
      published: DateTime.now(),
    );
  }
}
