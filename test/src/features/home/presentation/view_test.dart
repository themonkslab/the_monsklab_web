import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/features/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/ui/widgets/hypertext.dart';

import '../home_robot.dart';

class MockCoursesRepository extends Mock implements CoursesRepository {}

void main() {
  group('HomeView', () {
    late CoursesRepository coursesRepository;

    setUp(() {
      coursesRepository = MockCoursesRepository();
    });

    testWidgets('is rendered as the root page', (tester) async {
      final r = HomeRobot(tester);
      await r.pumpWidget(const AppPage());
      await r.expectOneOfType(HomePage);
    });

    testWidgets('navigates to the archive when hypertext is tapped', (tester) async {
      final r = HomeRobot(tester);
      await r.pumpWidget(const AppPage());
      when(() => coursesRepository.fetchAll()).thenAnswer((_) async => []);
      await r.tap(AppHypertext);
      await tester.pumpAndSettle();
      await r.expectOneOfType(ArchivePage);
    });
  });
}
