import 'dart:convert';
import 'dart:io';

import 'package:mocktail/mocktail.dart';
import 'package:the_monkslab_web/src/apis/courses/courses_api.dart';
import 'package:the_monkslab_web/src/apis/courses/impl/firestore_api.dart';
import 'package:the_monkslab_web/src/models/_index.dart';

//TODO -MEDIUM/MEDIUM- create abstract class
class CoursesRepository {
  CoursesRepository({CoursesApi? coursesApi})
      : _coursesApi = coursesApi ?? FirestoreApi();

  final CoursesApi _coursesApi;

  Future<LearningPath> getLearningPath(String path) async {
    return await _coursesApi.getLearningPath(path);
  }

  Future<void> createCoursesIndexes(String rootPath) async {
    var roorPathDir = Directory(rootPath);
    if (!roorPathDir.existsSync()) {
      await roorPathDir.create(recursive: true);
    }
    var lastUpdateResource = '$rootPath/last_update';
    if (File(lastUpdateResource).existsSync()) {
      return;
    }
    File file = await File(lastUpdateResource).create();

    var dartCourseResource = '$rootPath/dart_course.json';
    await createCourseIndexFromResource(
      dartCourseResource, 
      '4q3OBzCmxhQye1DU0mla', 
      'Dart y TDD', 
      'Aprender a programar desde cero desde fin a principio, aprendiendo a testear a cada paso'
    );

    var cicdCourseResource = '$rootPath/cicd_course.json';
    await createCourseIndexFromResource(
      cicdCourseResource,
      'cicd-basic-es-001',
      'Curso de CICD orientado a Flutter',
      'Aprender a utilizar GitHub como herramienta de CICD para proyectos Flutter',
    );

    await file.writeAsString(DateTime.now().toString());
  }

  //TODO -HIGH- write in firebase from json
  Future<void> createCourseIndexFromResource(
      String resource, 
      String docId, 
      String title, 
      String description,
    ) async {
    if (File(resource).existsSync()) {
      var course = jsonDecode(utf8.decode(File(resource).readAsBytesSync())).toString();

      return _addCourse(
        docId: docId, 
        title: title, 
        description: description, 
        course: course,
      );
    }
  }

  Future<void> _addCourse({
    required String docId, 
    required String title, 
    required String description, 
    required dynamic course,
  }) async {
    try {
      final sectionsList = [];
      // sections
      for (var i = 0; i < course.length; i++) {
        final sectionPath = course[i]['path'] as String;
        sectionsList.add({
          'path': sectionPath,
          'title': course[i]['title'],
        });
        //! delete
        await _coursesApi.deleteSection('section_$i');
        //! set
        await _coursesApi.setSection(sectionPath, course[i]);

        // articles
        final List<Map<String, dynamic>> articlesList =
            course[i]['articles'] as List<Map<String, dynamic>>;

        for (var j = 0; j < articlesList.length; j++) {
          final articlePath = articlesList[j]['path'] as String;

          //! delete
          await _coursesApi.deleteArticle('article_$j');
          //! set
          await _coursesApi.setArticle(articlePath,articlesList[j]);
        }
      }
      _coursesApi.setCourse(docId, title, description, sectionsList);
    } catch (e) {
      throw Exception(e);
    }
  }

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
