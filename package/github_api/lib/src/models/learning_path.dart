import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_api/src/models/course.dart';

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
}

// {
//     "courses": [
//         {
//             "id": 0,
//             "title": "Limitless",
//             "url": "https://raw.githubusercontent.com/themonkslab/courses/main/limitless/limitless_course.json"
//         },
//         {
//             "id": 1,
//             "title": "Dart y Test Driven Design",
//             "url": "https://raw.githubusercontent.com/themonkslab/courses/main/dart/dart_course.json"
//         }
//     ]
// }