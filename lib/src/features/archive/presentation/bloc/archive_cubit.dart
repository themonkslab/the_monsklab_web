import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/models/learning_path.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

part 'archive_cubit.freezed.dart';

class ArchiveCubit extends Cubit<ArchiveState> {
  ArchiveCubit(this._coursesRepository) : super(const ArchiveState());

  final CoursesRepository _coursesRepository;

  Future<void> fetchLearningPath(String path) async {
    emit(state.copyWith(status: ArchiveStatus.loading));
    try {
      await _coursesRepository.createCoursesIndexes('src/resources/courses');
    } catch (e) {
      debugPrint(e.toString());
    }
    try {
      final learningPath = await _coursesRepository.getLearningPath(path);

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

//? answered - Why using JsonSerializable and Equatable when freezed is less verbose
// - Equatable no generates code, making the process of development much faster and even faster the CICD in production.
// - Less time in Github, is less money
// - Equatable has a team and a company that mantains the package thus is more reliable.
// TODO -MEDIUM/EASY- migrate to Equatable
@freezed
class ArchiveState with _$ArchiveState {
  const factory ArchiveState({
    @Default(ArchiveStatus.initial) ArchiveStatus status,
    LearningPath? learningPath,
  }) = _ArchiveState;
}
