import 'package:freezed_annotation/freezed_annotation.dart';

part 'section.freezed.dart';
part 'section.g.dart';

@freezed
class Section with _$Section {
  const factory Section({
    required int id,
    required String title,
    required String url,
  }) = _Section;

  factory Section.fromJson(Map<String, Object?> json) =>
      _$SectionFromJson(json);
}
