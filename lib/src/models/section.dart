import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_monkslab_web/src/models/_index.dart';

part 'section.freezed.dart';
part 'section.g.dart';

@freezed
class Section with _$Section {
  const factory Section({
    required String id,
    required String title,
    String? description,
    required List<Article> articles,
  }) = _Section;

  factory Section.fromJson(Map<String, Object?> json) =>
      _$SectionFromJson(json);
}
