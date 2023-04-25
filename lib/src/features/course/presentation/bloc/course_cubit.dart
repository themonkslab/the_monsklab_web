import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class CourseCubit extends Cubit<CourseState> {
  CourseCubit({
    required CoursesRepository coursesRepository,
  })  : _coursesRepository = coursesRepository,
        super(const CourseState(status: CourseStatus.initial));

  final CoursesRepository _coursesRepository;

  Future<void> fetchCourse(String coursePath, String groupName) async {
    emit(state.copyWith(status: CourseStatus.loading));
    try {
      final course = await _coursesRepository.fetchCourse(coursePath, groupName);
      emit(
        state.copyWith(
          status: CourseStatus.success,
          course: course,
          groupName: groupName,
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

class CourseState extends Equatable {
  const CourseState({
    required this.status,
    this.course,
    this.groupName,
  });

  final CourseStatus status;
  final Course? course;
  final String? groupName;

  @override
  List<Object?> get props => [
        status,
        course,
        groupName,
      ];

  @override
  String toString() => '''CourseState(${Colorizer.colorizeWithBrightMagenta(text: 'status:')} $status,
      course: $course), groupName $groupName''';

  CourseState copyWith({
    CourseStatus? status,
    Course? course,
    String? groupName,
  }) {
    return CourseState(
      status: status ?? this.status,
      course: course ?? this.course,
      groupName: groupName ?? this.groupName,
    );
  }
}

enum CourseStatus { initial, loading, success, failure }
