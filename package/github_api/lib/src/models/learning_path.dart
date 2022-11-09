import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_path.freezed.dart';
part 'learning_path.g.dart';

@freezed
class LearningPath with _$LearningPath {
  const factory LearningPath({
    required int id,
    required String title,
    required String url,
  }) = _LearningPath;

  factory LearningPath.fromJson(Map<String, Object?> json) =>
      _$LearningPathFromJson(json);
}
