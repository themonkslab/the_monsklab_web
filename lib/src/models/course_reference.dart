import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_reference.freezed.dart';
part 'course_reference.g.dart';

@freezed
class CourseReference with _$CourseReference {
  const factory CourseReference({
    required String path,
    required String title,
  }) = _CourseReference;

  factory CourseReference.fromJson(Map<String, Object?> json) =>
      _$CourseReferenceFromJson(json);
}
