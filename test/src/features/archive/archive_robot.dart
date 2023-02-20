import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart' show MaterialApp, Widget;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_monkslab_web/src/core/routing/routing.dart';
import 'package:the_monkslab_web/src/features/archive/presentation/bloc/archive_cubit.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

class ArchiveRobot {
  const ArchiveRobot(this.tester);
  final WidgetTester tester;

  Future<void> pumpWidgetWithRepository(
      CoursesRepository coursesRepository) async {
    await tester.pumpWidget(RepositoryProvider.value(
      value: coursesRepository,
      child: MaterialApp.router(
        routeInformationParser: BeamerParser(),
        routerDelegate: routerDelegate(initialPath: '/archive'),
      ),
    ));
  }

  Future<void> pumpWidgetWithProvider({
    required ArchiveCubit archiveCubit,
    required Widget child,
  }) async {
    await tester.pumpWidget(
      BlocProvider<ArchiveCubit>.value(
        value: archiveCubit,
        child: MaterialApp(home: child),
      ),
    );
  }

  Future<void> pumpWidget({required Widget child}) async {
    await tester.pumpWidget(MaterialApp(home: child));
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
