import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class CourseApi with _$Course {
  const factory CourseApi({
    required int id,
    required String title,
    required String url,
  }) = _Course;

  factory CourseApi.fromJson(Map<String, Object?> json) =>
      _$CourseFromJson(json);
}
