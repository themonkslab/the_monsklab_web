import 'package:courses_repository/src/models/_index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_path.freezed.dart';
part 'learning_path.g.dart';

@freezed
class LearningPathRepo with _$LearningPathRepo {
  const factory LearningPathRepo({
    required int id,
    required String title,
    required List<CourseRepo> courses,
  }) = _LearningPathRepo;

  factory LearningPathRepo.fromJson(Map<String, Object?> json) =>
      _$LearningPathRepoFromJson(json);
}
