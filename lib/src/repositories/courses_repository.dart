import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_monkslab_web/src/apis/courses/courses_api.dart';
import 'package:the_monkslab_web/src/apis/courses/impl/firestore_api.dart';
import 'package:the_monkslab_web/src/constants/assets.dart';
import 'package:the_monkslab_web/src/models/_index.dart';

//TODO -MEDIUM/MEDIUM- create abstract class
class CoursesRepository {
  CoursesRepository({CoursesApi? coursesApi})
      : _coursesApi = coursesApi ?? FirestoreApi();

  final CoursesApi _coursesApi;

  Future<LearningPath> getLearningPath(String id) async {
    LearningPath learningPath = await _coursesApi.getLearningPath(id);
    if (learningPath.shouldUpdate) {
      await createCoursesIndexes(learningPath);
    }
    return learningPath;
  }

  Future<void> createCoursesIndexes(LearningPath learningPath) async {
    await createCourseIndexFromResource(
      AppAssets.dartCourse, 
      '4q3OBzCmxhQye1DU0mla', 
      'Dart y TDD', 
      'Aprender a programar desde cero desde fin a principio, aprendiendo a testear a cada paso'
    );

    await createCourseIndexFromResource(
      AppAssets.cicdCourse,
      'cicd-basic-es-001',
      'Curso de CICD orientado a Flutter',
      'Aprender a utilizar GitHub como herramienta de CICD para proyectos Flutter',
    );

    await _coursesApi.updateLearningPath(learningPath.id, learningPath.copyWith(shouldUpdate: false).toJson());
  }

  //TODO -HIGH- write in firebase from json
  Future<void> createCourseIndexFromResource(
      String resource, 
      String docId, 
      String title, 
      String description,
    ) async {
      try {
        var courseJson = await rootBundle
          .loadString(resource);
        await _addCourse(
          docId: docId, 
          title: title, 
          description: description, 
          course: jsonDecode(courseJson),
        );
      } on Exception {
        debugPrint('file not found');
      }
    }

  Future<void> _addCourse({
    required String docId, 
    required String title, 
    required String description, 
    required List<dynamic> course,
  }) async {
    try {
      List<FirestoreCourse> list = course.map((e) => FirestoreCourse.fromJson(e)).toList();
      List<FirestoreSection> sectionsList = <FirestoreSection>[];
      // sections
      for (var i = 0; i < list.length; i++) {
        final firebaseCourse = list[i];
        final sectionPath = firebaseCourse.path;
        final articles = firebaseCourse.articles;
        if (sectionPath != null && articles != null) {
          FirestoreSection firestoreSection = FirestoreSection(
            path: sectionPath, 
            title: firebaseCourse.title,
          );
          sectionsList.add(firestoreSection);
          //! delete
          await _coursesApi.deleteSection('section_$i');
          //! set
          await _coursesApi.setSection(sectionPath, firebaseCourse.toJson());

          for (var j = 0; j < articles.length; j++) {
            final article = articles[j];
            final articlePath = article.path;

            if (articlePath != null) {
              //! delete
              await _coursesApi.deleteArticle('article_$j');
              //! set
              await _coursesApi.setArticle(articlePath, article.toJson());
            }
          }
        }        
      }
      await _coursesApi.setCourse(docId, title, description, sectionsList);
    } catch (e) {
      debugPrint(e.toString());
      throw Exception(e);
    }
  }

  // Future<void> _addCourse2({
  //   required String docId, 
  //   required String title, 
  //   required String description, 
  //   required dynamic course,
  // }) async {
  //   try {
  //     final sectionsList = [];
  //     // sections
  //     for (var i = 0; i < course.length; i++) {
  //       final sectionPath = course[i]['path'] as String;
  //       sectionsList.add({
  //         'path': sectionPath,
  //         'title': course[i]['title'],
  //       });
  //       //! delete
  //       _firestore.collection('section').doc('section_$i').delete();
  //       //! set
  //       _firestore.collection('section').doc(sectionPath).set(course[i]);

  //       // articles
  //       final List<Map<String, dynamic>> articlesList =
  //           course[i]['articles'] as List<Map<String, dynamic>>;

  //       for (var j = 0; j < articlesList.length; j++) {
  //         final articlePath = articlesList[j]['path'] as String;

  //         //! delete
  //         _firestore.collection('article').doc('article_$j').delete();
  //         //! set
  //         _firestore
  //             .collection('article')
  //             .doc(articlePath)
  //             .set((articlesList[j]));
  //       }
  //     }
  //     _firestore.collection('course').doc(docId).set({
  //       'title': title,
  //       'description':
  //           description,
  //       'sections': sectionsList,
  //     });
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  // }

  Future<Course> getCourse(String path) async {
    return await _coursesApi.getCourse(path);
  }

  Future<Section> getSection(String path) async {
    return await _coursesApi.getSection(path);
  }

  Future<Article> getArticle(String path) async {
    return await _coursesApi.getArticle(path);
  }
}

class MockCoursesRepository extends Mock implements CoursesRepository {}

class FirestoreCourse {
  String? path;
  String? title;
  String? description;
  List<Articles>? articles;

  FirestoreCourse({this.path, this.title, this.description, this.articles});

  FirestoreCourse.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    title = json['title'];
    description = json['description'];
    if (json['articles'] != null) {
      articles = <Articles>[];
      json['articles'].forEach((v) {
        articles!.add(Articles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['path'] = path;
    data['title'] = title;
    data['description'] = description;
    if (articles != null) {
      data['articles'] = articles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Articles {
  String? path;
  String? title;
  String? description;
  String? contentUrl;
  String? author;
  String? published;

  Articles(
      {this.path,
      this.title,
      this.description,
      this.contentUrl,
      this.author,
      this.published});

  Articles.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    title = json['title'];
    description = json['description'];
    contentUrl = json['contentUrl'];
    author = json['author'];
    published = json['published'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['path'] = path;
    data['title'] = title;
    data['description'] = description;
    data['contentUrl'] = contentUrl;
    data['author'] = author;
    data['published'] = published;
    return data;
  }
}

class FirestoreSection {
  String? path;
  String? title;

  FirestoreSection({this.path, this.title});

  FirestoreSection.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['path'] = path;
    data['title'] = title;
    return data;
  }
}
