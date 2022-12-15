import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/features/_index.dart';
import 'package:the_monkslab_web/src/models/learning_path.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/ui/widgets/hypertext.dart';

import '../home_robot.dart';

//? Wouldn't be better to gather everyone in one file? Or much better: in the abstract class?
// class MockCoursesRepository extends Mock implements CoursesRepository {}
//? Mock with Stream variable with non-nullable type (Tete) | Problem with Mockito?

void main() {
  group('HomeView', () {
    late CoursesRepository coursesRepository;

    setUp(() {
      coursesRepository = MockCoursesRepository();
    });

    testWidgets('is rendered as the root page', (tester) async {
      final r = HomeRobot(tester);
      await r.pumpWidget(App(coursesRepository: coursesRepository));
      await r.expectOneOfType(HomeView);
    });

    testWidgets('navigates to the archive when hypertext is tapped',
        (tester) async {
      final r = HomeRobot(tester);
      await r.pumpWidget(App(coursesRepository: coursesRepository));
      when(() => coursesRepository.getLearningPath(any()))
          .thenAnswer((_) async => LearningPath.empty);
      await r.tap(AppHypertext);
      await tester.pumpAndSettle();
      await r.expectOneOfType(ArchivePage);
    });
  });
}
