import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/core/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

class MockCoursesRepository extends Mock implements CoursesRepository {}

void main() {
  group('Home Page', () {
    late CoursesRepository coursesRepository;
    late Widget widget;

    setUp(() {
      coursesRepository = FakeFileCoursesRepository();
      widget = MaterialApp(
        home: RepositoryProvider<CoursesRepository>(
          create: (context) => coursesRepository,
          child: BlocProvider.value(
            value: LocaleCubit(),
            child: const AppPage(),
          ),
        ),
      );
    });

    testWidgets('renders as the root page', (tester) async {
      await tester.pumpWidget(widget);
      expect(find.byType(AppPage), findsOneWidget);
    });
  });
}
