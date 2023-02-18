import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_monkslab_web/src/apis/courses/impl/fake_courses_api.dart';
import 'package:the_monkslab_web/src/features/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

import '../../archive_robot.dart';

void main() {
  group('ArchivePopulated when isPhoneOrTablet', () {
    testWidgets('renders AppResponsiveScaffold with padH8', (tester) async {
      final r = ArchiveRobot(tester);

      await r.pumpWidget(
        child: ArchivePopulated(
          isPhoneOrTablet: true,
          learningPath: FakeCoursesApi.learningPath,
        ),
      );
      await r.expectOneOfType(AppResponsiveScaffold);
      expect(
        tester.widget(find.byType(Padding).first),
        isA<Padding>().having((p) => p.padding, 'padding', AppPaddings.padH8),
      );
    });
  });
  group('ArchivePopulated when not isPhoneOrTablet', () {
    testWidgets('renders AppResponsiveScaffold with padH24', (tester) async {
      final r = ArchiveRobot(tester);

      await r.pumpWidget(
        child: ArchivePopulated(
          isPhoneOrTablet: false,
          learningPath: FakeCoursesApi.learningPath,
        ),
      );
      await r.expectOneOfType(AppResponsiveScaffold);
      expect(
        tester.widget(find.byType(Padding).first),
        isA<Padding>().having((p) => p.padding, 'padding', AppPaddings.padH24),
      );
    });
  });
}
