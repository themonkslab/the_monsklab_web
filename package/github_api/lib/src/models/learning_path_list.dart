import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_api/src/models/_index.dart';

part 'learning_path_list.freezed.dart';
part 'learning_path_list.g.dart';

@freezed
class LearningPathList with _$LearningPathList {
  const factory LearningPathList({
    required int id,
    required String title,
    required List<LearningPath> courses,
  }) = _LearningPathList;

  factory LearningPathList.fromJson(Map<String, Object?> json) =>
      _$LearningPathListFromJson(json);
}
