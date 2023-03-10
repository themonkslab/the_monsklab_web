import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

part 'course_cubit.g.dart';

class CourseCubit extends Cubit<CourseState> {
  CourseCubit({
    required CoursesRepository coursesRepository,
  })  : _coursesRepository = coursesRepository,
        super(const CourseState(status: CourseStatus.initial));

  final CoursesRepository _coursesRepository;

  Future<void> fetchCourse(String path) async {
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

  @override
  String toString() =>
      '''CourseCubit(${Colorizer.colorizeWithBrightMagenta(text: '_coursesRepository:')} $_coursesRepository)''';
}

@JsonSerializable()
class CourseState extends Equatable {
  const CourseState({
    required this.status,
    this.course,
  });
  factory CourseState.fromJson(Map<String, dynamic> json) =>
      _$CourseStateFromJson(json);

  final CourseStatus status;
  final Course? course;

  Map<String, dynamic> toJson() => _$CourseStateToJson(this);

  CourseState copyWith({
    CourseStatus? status,
    Course? course,
  }) {
    return CourseState(
      status: status ?? this.status,
      course: course ?? this.course,
    );
  }

  @override
  List<Object?> get props => [status, course];

  @override
  String toString() =>
      '''CourseState(${Colorizer.colorizeWithBrightMagenta(text: 'status:')} $status,
      course: $course)''';
}

enum CourseStatus { initial, loading, success, failure }
