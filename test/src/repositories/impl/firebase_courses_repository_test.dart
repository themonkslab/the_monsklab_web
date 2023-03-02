
import 'package:flutter_test/flutter_test.dart';
import 'package:the_monkslab_web/src/apis/courses/impl/fake_courses_api.dart';
import 'package:the_monkslab_web/src/repositories/courses_repository/impl/firebase_courses_repository.dart';

void main() {
  late FirebaseCoursesRepository coursesRepository;
  late FakeCoursesApi fakeCoursesApi;

  setUpAll(() {
    fakeCoursesApi = FakeCoursesApi();
    coursesRepository = FirebaseCoursesRepository(coursesApi: fakeCoursesApi);

  });

  group('Courses Repository', () {
    test('get courses by id', () async {
      // List<Courses>? courses = await coursesRepository.getCourses('id');
      // assert(courses == List.of({FakeCoursesApi.courses.copyWith(id: 'id')}));
    });
  });
}