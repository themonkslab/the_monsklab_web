import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_monkslab_web/src/features/_index.dart';
import 'package:the_monkslab_web/src/models/learning_path.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

import '../archive_robot.dart';

void main() {
  group('ArchivePage', () {
    late CoursesRepository coursesRepository;
    setUp(() {
      coursesRepository = MockCoursesRepository();
    });

    testWidgets('renders ArchiveView', (tester) async {
      final r = ArchiveRobot(tester);
      when(() => coursesRepository.getLearningPath(any()))
          .thenAnswer((_) async => LearningPath.empty);
      await r.pumpWidget(coursesRepository);
      await r.expectOneOfType(ArchiveView);
    });
  });
}
