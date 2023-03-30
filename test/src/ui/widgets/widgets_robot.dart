import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_monkslab_web/src/ui/widgets/components/_index.dart';

class WidgetsRobot {
  WidgetsRobot({
    required this.tester,
  });
  final WidgetTester tester;

  final ptOnHoverKey = const Key('ptOnHoverKey');
  final Offset originalPosition = Offset.zero;
  final Size subjectOriginalSize = const Size(100, 100);

  late TestGesture gesture;
  late Offset targetPosition;
  late StatefulElement subject;
  late AppOnHoverState subjectState;

  Future<void> pumpWidget() async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AppOnHover(
              key: ptOnHoverKey,
              child: SizedBox(
                width: subjectOriginalSize.width,
                height: subjectOriginalSize.height,
              ),),
        ),
      ),
    );
  }

  //* Expect
  Future<void> expectSubject() async {
    expect(findSubject(), findsOneWidget);
  }

  Future<void> expectSubjectOriginalSize() async {
    expect(getSubjectSize(), subjectOriginalSize);
  }

  Future<void> expectPointerBackToOriginalPosition() async {
    expect(originalPosition == targetPosition, true);
  }

  Future<void> expectSubjectScaledUp() async {
    subject = tester.element(find.byKey(ptOnHoverKey));
    subjectState = subject.state as AppOnHoverState;
    final lastScaleAnimationValue = subjectState.scaleAnimation.value;
    expect(lastScaleAnimationValue == 1.04, true);
  }

  Future<void> expectSubjectScaledDown() async {
    subject = tester.element(find.byKey(ptOnHoverKey));
    subjectState = subject.state as AppOnHoverState;
    final lastAnimationControllerValue = subjectState.animationController.value;
    expect(lastAnimationControllerValue == 1, true);
  }

  //* Events
  Future<void> introduceMousePointer() async {
    gesture = await tester.createGesture(kind: PointerDeviceKind.mouse);
  }

  Future<void> setMousePointerPosition() async {
    await gesture.addPointer(location: Offset.zero);
  }

  Future<void> setTearDown() async {
    addTearDown(gesture.removePointer);
  }

  Future<void> hoverSubject() async {
    targetPosition = tester.getCenter(findSubject());
    await gesture.moveTo(targetPosition);
    await tester.pumpAndSettle();
  }

  Future<void> unHoverSubject() async {
    await gesture.moveTo(originalPosition);
    targetPosition = originalPosition;
    await tester.pumpAndSettle();
  }

  //* Helpers
  Finder findSubject() => find.byKey(ptOnHoverKey);
  Size getSubjectSize() => tester.getSize(findSubject());
}
