import 'package:courses_repository/courses_repository.dart'
    as courses_repository;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_monkslab_web/src/models/_index.dart';

part 'learning_path.freezed.dart';
part 'learning_path.g.dart';

@freezed
class LearningPath with _$LearningPath {
  const factory LearningPath({
    required int id,
    required String title,
    required List<Course> courses,
  }) = _LearningPath;

  factory LearningPath.fromJson(Map<String, Object?> json) =>
      _$LearningPathFromJson(json);

  factory LearningPath.fromRepository(
      courses_repository.LearningPathRepo learningPath) {
    return LearningPath(
      id: learningPath.id,
      title: learningPath.title,
      courses: learningPath.courses
          .map(
            (course) =>
                Course(id: course.id, title: course.title, url: course.url),
          )
          .toList(),
    );
  }

  static const empty = LearningPath(
    id: -1,
    title: '--',
    courses: [],
  );
}
