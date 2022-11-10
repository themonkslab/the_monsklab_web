import 'package:courses_repository/src/models/_index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required int id,
    required String title,
    String? subTitle,
    required String description,
    required List<Author> authors,
    String? materialsAuthor,
    required List<Section> sections,
  }) = _Course;

  factory Course.fromJson(Map<String, Object?> json) => _$CourseFromJson(json);
}
