import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/features/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/ui/widgets/hypertext.dart';

import '../home_robot.dart';

//? Wouldn't be better to gather everyone in one file? Or much better: in the abstract class?
class MockCoursesRepository extends Mock implements CoursesRepository {}

void main() {
  group('HomeView', () {
    late CoursesRepository coursesRepository;

    setUp(() {
      coursesRepository = MockCoursesRepository();
    });

    //? We have no HomePage because we need no injection. Is correct to directly insert a HomeView?
    //? Is correct to test like this?
    testWidgets('is rendered as the root page', (tester) async {
      final r = HomeRobot(tester);
      await r.pumpWidget(App(coursesRepository: coursesRepository));
      await r.expectOneOfType(HomeView);
    });

    //TODO -CONT- check how to inject providers on top of MaterialApp
    //TODO -CONT- mock classes and complete test
    testWidgets('navigates to the archive when hypertext is tapped',
        (tester) async {
      final r = HomeRobot(tester);
      await r.pumpWidget(
        const HomeView(),
        withRouter: true,
      );
      await tester.tap(find.byType(AppHypertext));
      await tester.pumpAndSettle();
      expect(find.byType(ArchivePage), findsOneWidget);
    });
  });
}
