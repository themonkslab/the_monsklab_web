import 'package:courses_repository/courses_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/features/archive/presentation/bloc/archive_state.dart';
import 'package:the_monkslab_web/src/models/_index.dart';

class ArchiveCubit extends Cubit<ArchiveState> {
  ArchiveCubit(this._coursesRepository) : super(const ArchiveState());

  CoursesRepository _coursesRepository;

  Future<void> fetchCourses() async {
    emit(state.copyWith(status: ArchiveStatus.loading));
    try {
      final learningPath = LearningPath.fromRepository(
        await _coursesRepository.getLearningPath(),
      );
      emit(
        state.copyWith(
          status: ArchiveStatus.success,
          learningPath: learningPath,
        ),
      );
    } on Exception {
      emit(state.copyWith(status: ArchiveStatus.failure));
    }
  }
}
