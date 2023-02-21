
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:the_monkslab_web/src/apis/_index.dart';
import 'package:the_monkslab_web/src/apis/courses/courses_api.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/repositories/courses_repository/impl/firebase_courses_repository.dart';

class FirestoreApi extends CoursesApi {
  FirestoreApi({
    FirebaseFirestore? firestore,
    HttpApi? httpApi,
  })  : _firestore = firestore ?? FirebaseFirestore.instance,
        _httpApi = httpApi ?? HttpApi();

  final FirebaseFirestore _firestore;
  final HttpApi _httpApi;

  @override
  Future<void> setCourse(String id, String title, String description, List<dynamic> sectionsList) async {
    final firestoreSection = sectionsList as List<FirestoreSection>;
    debugPrint('setCourse(id: $id, title: $title, description: $description)');
    _firestore.collection('section').doc(id).set({
      'title': title,
      'description': description,
      'sections': jsonEncode(firestoreSection),
    });
  }

  @override
  Future<void> setArticle(String id, Map<String, dynamic> content) async {
    debugPrint('setArticle(id: $id)');
    _firestore.collection('section').doc(id).set(content);
  }
  
  @override
  Future<void> deleteArticle(String id) async {
    _firestore.collection('article').doc(id).delete();
  }

  @override
  Future<void> setSection(String id, Map<String, dynamic> content) async {
    debugPrint('setSection(id: $id)');
    _firestore.collection('section').doc(id).set(content);
  }

  @override
  Future<void> deleteSection(String id) async {
    _firestore.collection('section').doc(id).delete();
  }

  @override
  Future<Courses> getCourses(String id) async {
    final doc = await _firestore.collection('learningPath').doc(id).get();
    return Courses.fromDocumentSnapshot(doc);
  }

  @override
  Future<void> updateLearningPath(String id, Map<String, dynamic> content) async {
    debugPrint('updateLearningPath(id: $id)');
    _firestore.collection('learningPath').doc(id).set(content);
  }

  @override
  Future<Course> getCourse(String path) async {
    final doc = await _firestore.collection('course').doc(path).get();
    return Course.fromDocumentSnapshot(doc);
  }

  @override
  Future<Section> getSection(String path) async {
    final doc = await _firestore.collection('section').doc(path).get();
    return Section.fromDocumentSnapshot(doc);
  }

  @override
  Future<Article> getArticle(String path) async {
    final doc = await _firestore.collection('article').doc(path).get();
    final articleContent = await _httpApi.getRequest(doc.data()!['contentUrl']);
    return Article(
      id: doc.id,
      title: doc.data()!['title'],
      description: doc.data()!['description'],
      content: articleContent,
      author: Author(name: doc.data()!['author'], picture: 'mau_photo'),
      published: doc.data()!['published'],
    );
  }
}