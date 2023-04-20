import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:the_monkslab_web/src/features/_index.dart';
import 'package:the_monkslab_web/src/features/archive/presentation/bloc/archive_cubit.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/ui/widgets/_index.dart';

import '../archive_robot.dart';

class MockArchiveCubit extends MockCubit<ArchiveState> implements ArchiveCubit {}

class MockCoursesRepository extends Mock implements CoursesRepository {}

void main() {
  group('ArchivePage', () {
    late CoursesRepository coursesRepository;
    setUp(() {
      coursesRepository = MockCoursesRepository();
    });

    testWidgets('renders ArchiveView', (tester) async {
      final r = ArchiveRobot(tester);
      when(() => coursesRepository.fetchAll()).thenAnswer((_) async => []);
      await r.pumpWidgetWithRepository(coursesRepository);
      await r.expectOneOfType(ArchiveView);
    });
  });
  group('ArchiveView', () {
    late ArchiveCubit archiveCubit;

    setUp(() {
      archiveCubit = MockArchiveCubit();
    });

    testWidgets('renders AppLoader for ArchiveStatus.loading', (tester) async {
      final r = ArchiveRobot(tester);
      when(() => archiveCubit.state).thenReturn(const ArchiveState(status: ArchiveStatus.loading));

      await r.pumpWidgetWithProvider(
        archiveCubit: archiveCubit,
        child: const ArchiveView(),
      );
      await r.expectOneOfType(AppLoader);
    });

    testWidgets('renders AppFailure for ArchiveStatus.failure', (tester) async {
      final r = ArchiveRobot(tester);
      when(() => archiveCubit.state).thenReturn(const ArchiveState(status: ArchiveStatus.failure));

      await r.pumpWidgetWithProvider(
        archiveCubit: archiveCubit,
        child: const ArchiveView(),
      );
      await r.expectOneOfType(AppFailure);
    });

    testWidgets('renders AppSuccess for ArchiveStatus.success', (tester) async {
      final r = ArchiveRobot(tester);
      when(() => archiveCubit.state).thenReturn(
        const ArchiveState(
          status: ArchiveStatus.success,
          coursesGroupList: [],
        ),
      );

      await r.pumpWidgetWithProvider(
        archiveCubit: archiveCubit,
        child: const ArchiveView(),
      );
      await r.expectOneOfType(ArchivePopulated);
    });
  });
}
