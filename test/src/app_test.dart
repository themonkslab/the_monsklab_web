//TODO -CONT- test app if renders with Beamer injection

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

class MockCoursesRepository extends Mock implements CoursesRepository {}

void main() {
  group('App', () {
    //? Why separe between declaration and setup?
    late CoursesRepository coursesRepository;

    setUp(() {
      coursesRepository = MockCoursesRepository();
    });
    testWidgets('renders AppView', (tester) async {
      await tester.pumpWidget(App(coursesRepository: coursesRepository));
      expect(find.byType(AppView), findsOneWidget);
    });
  });
}
