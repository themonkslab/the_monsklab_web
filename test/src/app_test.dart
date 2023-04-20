import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_monkslab_web/src/app.dart';

void main() {
  group('App', () {
    testWidgets('renders AppView', (tester) async {
      await tester.pumpWidget(const AppPage());
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
}
