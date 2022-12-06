import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_monkslab_web/src/features/_index.dart';
import 'package:the_monkslab_web/src/models/learning_path.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

import '../../archive_robot.dart';

void main() {
  group('ArchivePopulated when isPhoneOrTablet', () {
    testWidgets('renders AppResponsiveScaffold with padH8', (tester) async {
      final r = ArchiveRobot(tester);

      await r.pumpWidget(
        child: const ArchivePopulated(
          isPhoneOrTablet: true,
          learningPath: LearningPath.sample,
        ),
      );
      await r.expectOneOfType(AppResponsiveScaffold);
      expect(
        tester.widget(find.byType(Padding).first),
        isA<Padding>().having((p) => p.padding, 'padding', AppPaddings.padH8),
      );
    });
  });
}
