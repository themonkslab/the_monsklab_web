import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart' show Widget, MaterialApp;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_monkslab_web/src/core/routing/routing.dart';

class HomeRobot {
  const HomeRobot(this.tester);
  final WidgetTester tester;

  Future<void> pumpWidget(
    Widget child, {
    List<BlocProvider>? providers,
    bool withRouter = false,
  }) async {
    await tester.pumpWidget(
      withRouter
          ? MaterialApp.router(
              routeInformationParser: BeamerParser(),
              routerDelegate: routerDelegate(),
            )
          : MultiBlocProvider(
              providers: providers ?? [],
              child: child,
            ),
    );
  }

  //* Expect
  Future<void> expectOneOfType(Type type) async {
    expect(find.byType(type), findsOneWidget);
  }
}
