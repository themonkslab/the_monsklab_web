import 'package:freezed_annotation/freezed_annotation.dart';

part 'section_reference.freezed.dart';
part 'section_reference.g.dart';

@freezed
class SectionReference with _$SectionReference {
  const factory SectionReference({
    required String path,
    required String title,
  }) = _SectionReference;

  factory SectionReference.fromJson(Map<String, Object?> json) =>
      _$SectionReferenceFromJson(json);
}
