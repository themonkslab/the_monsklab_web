import 'package:flutter/material.dart' show Widget;
import 'package:flutter_test/flutter_test.dart';

class HomeRobot {
  const HomeRobot(this.tester);
  final WidgetTester tester;

  Future<void> pumpWidget(Widget child) async {
    await tester.pumpWidget(child);
  }

  //* Expect
  Future<void> expectOneOfType(Type type) async {
    expect(find.byType(type), findsOneWidget);
  }
}
