import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/models/learning_path.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

class ArchiveCubit extends Cubit<ArchiveState> {
  ArchiveCubit(this._coursesRepository) : super(ArchiveState.initial());

  final CoursesRepository _coursesRepository;

  Future<void> fetchCourses(String courseGroup) async {
    emit(state.copyWith(status: ArchiveStatus.loading));
    try {
      final coursesList = await _coursesRepository.getCourses(courseGroup);

      emit(
        state.copyWith(
          status: ArchiveStatus.success,
          coursesList: coursesList,
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

class ArchiveState extends Equatable {
  const ArchiveState({
    required this.status,
    this.coursesList,
  });
  factory ArchiveState.initial() {
    return const ArchiveState(status: ArchiveStatus.initial);
  }
  final ArchiveStatus status;
  final List<Courses>? coursesList;

  @override
  List<Object?> get props => [status, coursesList];

  ArchiveState copyWith({
    ArchiveStatus? status,
    List<Courses>? coursesList,
  }) {
    return ArchiveState(
      status: status ?? this.status,
      coursesList: coursesList ?? coursesList,
    );
  }

  @override
  String toString() => 'ArchiveState(status: $status, learningPath: $coursesList)';
}
