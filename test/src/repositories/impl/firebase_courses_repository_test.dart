import 'package:flutter_test/flutter_test.dart';

void main() {
  // late FirebaseCoursesRepository coursesRepository;
  // late FakeCoursesApi fakeCoursesApi;

  setUpAll(() {
    // fakeCoursesApi = FakeCoursesApi();
    // coursesRepository = FirebaseCoursesRepository(coursesApi: fakeCoursesApi);
  });

  group('Courses Repository', () {
    test('get courses by id', () async {
      // List<Courses>? courses = await coursesRepository.getCourses('id');
      // assert(courses == List.of({FakeCoursesApi.courses.copyWith(id: 'id')}));
    });
  });
}
