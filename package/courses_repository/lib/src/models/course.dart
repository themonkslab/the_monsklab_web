import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class CourseRepo with _$CourseRepo {
  const factory CourseRepo({
    required int id,
    required String title,
    required String url,
  }) = _CourseRepo;

  factory CourseRepo.fromJson(Map<String, Object?> json) =>
      _$CourseRepoFromJson(json);
}
