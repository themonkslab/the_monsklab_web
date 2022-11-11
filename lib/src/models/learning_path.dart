import 'package:courses_repository/courses_repository.dart'
    as courses_repository;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_path.freezed.dart';
part 'learning_path.g.dart';

@freezed
class LearningPath with _$LearningPath {
  const factory LearningPath({
    required int id,
    required String title,
  }) = _LearningPath;

  factory LearningPath.fromJson(Map<String, Object?> json) =>
      _$LearningPathFromJson(json);

  factory LearningPath.fromRepository(
      courses_repository.LearningPath learningPath) {
    return LearningPath(
      id: learningPath.id,
      title: learningPath.title,
    );
  }
}
