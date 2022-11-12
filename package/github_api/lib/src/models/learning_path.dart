import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_api/src/models/course.dart';

part 'learning_path.freezed.dart';
part 'learning_path.g.dart';

@freezed
class LearningPathApi with _$LearningPath {
  const factory LearningPathApi({
    required int id,
    required String title,
    required List<CourseApi> courses,
  }) = _LearningPath;

  factory LearningPathApi.fromJson(Map<String, Object?> json) =>
      _$LearningPathFromJson(json);
}
