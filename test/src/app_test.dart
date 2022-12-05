import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

class MockCoursesRepository extends Mock implements CoursesRepository {}

void main() {
  group('App', () {
    //? Why separating between declaration and setup?
    late CoursesRepository coursesRepository;

    setUp(() {
      coursesRepository = MockCoursesRepository();
    });

    testWidgets('renders AppView', (tester) async {
      await tester.pumpWidget(App(coursesRepository: coursesRepository));
      expect(find.byType(AppView), findsOneWidget);
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
}
