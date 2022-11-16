import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

part 'course_cubit.freezed.dart';

class CourseCubit extends Cubit<CourseState> {
  CourseCubit({
    required CoursesRepository coursesRepository,
    required this.path,
  })  : _coursesRepository = coursesRepository,
        super(const CourseState());

  final CoursesRepository _coursesRepository;
  final String path;

  Future<void> fetchCourse() async {
    emit(state.copyWith(status: CourseStatus.loading));
    try {
      final course = await _coursesRepository.getCourse(path);

      emit(
        state.copyWith(
          status: CourseStatus.success,
          course: course,
        ),
      );
    } on Exception {
      emit(state.copyWith(status: CourseStatus.failure));
    }
  }
}

enum CourseStatus { initial, loading, success, failure }

@freezed
class CourseState with _$CourseState {
  const factory CourseState({
    @Default(CourseStatus.initial) CourseStatus status,
    Course? course,
  }) = _CourseState;
}
