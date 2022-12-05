import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart' show MaterialApp, Widget;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_monkslab_web/src/core/routing/routing.dart';
import 'package:the_monkslab_web/src/repositories/courses_repository.dart';

class ArchiveRobot {
  const ArchiveRobot(this.tester);
  final WidgetTester tester;

  Future<void> pumpWidget(CoursesRepository coursesRepository) async {
    await tester.pumpWidget(RepositoryProvider.value(
      value: coursesRepository,
      child: MaterialApp.router(
        routeInformationParser: BeamerParser(),
        routerDelegate: routerDelegate(initialPath: '/archive'),
      ),
    ));
  }

  //* Expect
  Future<void> expectOneOfType(Type type) async {
    expect(find.byType(type), findsOneWidget);
  }

  //* Interactions
  Future<void> tap(Type type) async {
    await tester.tap(find.byType(type));
  }
}
