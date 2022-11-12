import 'package:courses_repository/courses_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/models/learning_path.dart';

part 'archive_cubit.freezed.dart';

class ArchiveCubit extends Cubit<ArchiveState> {
  ArchiveCubit(this._coursesRepository) : super(const ArchiveState());

  final CoursesRepository _coursesRepository;

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

enum ArchiveStatus { initial, loading, success, failure }

@freezed
class ArchiveState with _$ArchiveState {
  const factory ArchiveState({
    @Default(ArchiveStatus.initial) ArchiveStatus status,
    LearningPath? learningPath,
  }) = _ArchiveState;
}
