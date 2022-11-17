import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_monkslab_web/src/models/article_reference.dart';

part 'section_reference.freezed.dart';
part 'section_reference.g.dart';

@freezed
class SectionReference with _$SectionReference {
  const factory SectionReference({
    required String title,
    String? description,
    required List<ArticleReference> articles,
  }) = _SectionReference;

  factory SectionReference.fromJson(Map<String, Object?> json) =>
      _$SectionReferenceFromJson(json);
}
