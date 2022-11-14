import 'package:freezed_annotation/freezed_annotation.dart';

part 'learning_path_list.freezed.dart';
part 'learning_path_list.g.dart';

@freezed
class LearningPathList with _$LearningPathList {
  const factory LearningPathList({
    required int id,
    required String title,
    required String url,
  }) = _LearningPathList;

  factory LearningPathList.fromJson(Map<String, Object?> json) =>
      _$LearningPathListFromJson(json);
}

// {
//     "learning_path_list": [
//         {
//             "id": 0,
//             "title": "Flutter Learning Path",
//             "url": "https://raw.githubusercontent.com/themonkslab/courses/main/flutter_learning_path.json"
//         }
//     ]
// }