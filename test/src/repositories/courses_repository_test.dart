import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:the_monkslab_web/src/apis/courses/impl/fake_courses_api.dart';
import 'package:the_monkslab_web/src/repositories/courses_repository.dart';

void main() {
  const String rootPath = 'test/resources';
  late CoursesRepository coursesRepository;

  setUpAll(() {
    coursesRepository = CoursesRepository(coursesApi: FakeCoursesApi());

  });

  group('Courses Repository', () {
    test('create last_update file if not exists', () async {
      await coursesRepository.createCoursesIndexes(rootPath);
      Directory directory = Directory(rootPath);
      assert(directory.existsSync());
      assert(File('${directory.path}/last_update').existsSync());
      directory.deleteSync(recursive: true);
      assert(!directory.existsSync());
    });

    test('update courses indexes if last_update not exists won\'t fail', () async {
      Directory directory = Directory(rootPath);
      directory.createSync(recursive: true);
      assert(directory.existsSync());

      File dartCourseFile = File('${directory.path}/dart_course.dart');
      dartCourseFile.createSync();
      assert(dartCourseFile.existsSync());

      File cicdCourseFile = File('${directory.path}/cicd_course.dart');
      cicdCourseFile.createSync();
      assert(cicdCourseFile.existsSync());

      File lastUpdateFile = File('${directory.path}/last_update');
      lastUpdateFile.createSync();
      assert(lastUpdateFile.existsSync());

      await coursesRepository.createCoursesIndexes(rootPath);
      
      directory.deleteSync(recursive: true);
      assert(!directory.existsSync());
    });
  });
}