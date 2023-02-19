
import 'package:flutter_test/flutter_test.dart';
import 'package:the_monkslab_web/src/apis/courses/impl/fake_courses_api.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/repositories/courses_repository.dart';

void main() {
  late CoursesRepository coursesRepository;
  late FakeCoursesApi fakeCoursesApi;

  setUpAll(() {
    fakeCoursesApi = FakeCoursesApi();
    coursesRepository = CoursesRepository(coursesApi: fakeCoursesApi);

  });

  group('Courses Repository', () {
    test('get learning path', () async {
      LearningPath learninPath = await coursesRepository.getLearningPath('id');
      assert(learninPath == FakeCoursesApi.learningPath);
    });

    test('create courses indexed set shouldUpdate to false', () async {
      LearningPath learningPath =  FakeCoursesApi.learningPath.copyWith(shouldUpdate: true);
      await coursesRepository.createCoursesIndexes(learningPath);
      fakeCoursesApi.lastUpdatedContent = learningPath.copyWith(shouldUpdate: false).toJson();
    });
  });
}