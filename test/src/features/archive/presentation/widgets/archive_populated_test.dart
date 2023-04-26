import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:the_monkslab_web/src/features/_index.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

import '../../../../utils/common.dart';
import '../../archive_robot.dart';

void main() {
  group('ArchivePopulated when isPhoneOrTablet', () {
    late List<CourseGroup> courseGroupList;
    setUpAll(
      () {
        final List list = TestHelper.getJsonFromTestResources(
            'test/resources/courses_es.json');
        final fileCourseList =
            list.map((e) => FileCoursesGroup.fromMap(e)).toList();
        courseGroupList = fileCourseList.map((e) => e.toViewModel()).toList();
      },
    );
    testWidgets('renders AppResponsiveScaffold with padH8', (tester) async {
      final r = ArchiveRobot(tester);

      await r.pumpWidget(
        child: ArchivePopulated(
          isPhoneOrTablet: true,
          coursesGroupList: courseGroupList,
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
    late List<CourseGroup> courseGroupList;
    setUpAll(
      () {
        final String json =
            TestHelper.getJsonFromTestResources('test/resources/courses.json');
        courseGroupList =
            coursesFromJson(json).map((e) => e.toViewModel()).toList();
      },
    );
    testWidgets('renders AppResponsiveScaffold with padH24', (tester) async {
      final r = ArchiveRobot(tester);

      await r.pumpWidget(
        child: ArchivePopulated(
          isPhoneOrTablet: false,
          coursesGroupList: courseGroupList,
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
