import 'package:flutter_test/flutter_test.dart';

import 'widgets_robot.dart';

void main() {
  group('AppOnHover:', () {
    setUp(() {});

    testWidgets('''
[correct rendering]
Given a AppOnHover
When is constructed
Then should be finded
''', (tester) async {
      final r = WidgetsRobot(tester: tester);

      await r.pumpWidget();
      await r.expectSubject();
      await r.expectSubjectOriginalSize();
    });

    testWidgets('''
[scale up]
Given a child to a AppOnHover
When is being hovered
Then child should scale up
''', (tester) async {
      final r = WidgetsRobot(tester: tester);

      await r.pumpWidget();
      await r.introduceMousePointer();
      await r.setMousePointerPosition();
      await r.setTearDown();
      await r.hoverSubject();
      await r.expectSubjectScaledUp();
    });

    testWidgets('''
[scale down]
Given a child to a AppOnHover
When is being hovered and then not hovered
Then child should scale up and down
''', (tester) async {
      final r = WidgetsRobot(tester: tester);

      await r.pumpWidget();
      await r.introduceMousePointer();
      await r.setMousePointerPosition();
      await r.setTearDown();
      await r.hoverSubject();
      await r.expectSubjectScaledUp();
      await r.unHoverSubject();
      await r.expectPointerBackToOriginalPosition();
      await r.expectSubjectScaledDown();
    });
  });
}
