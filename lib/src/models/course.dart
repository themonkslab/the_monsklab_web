import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_monkslab_web/src/constants/index.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required String title,
    required String description,
    required List<Author> authors,
    required List<Section> content,
    required String url,
    String? subTitle,
    String? materialsAuthor,
  }) = _Course;

  factory Course.fromJson(Map<String, Object?> json) => _$CourseFromJson(json);
}
