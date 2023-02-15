import 'package:freezed_annotation/freezed_annotation.dart';

part 'section_reference.freezed.dart';
part 'section_reference.g.dart';

@freezed
class SectionReference with _$SectionReference {
  const factory SectionReference({
    required String title,
    required String path,
  }) = _SectionReference;

  factory SectionReference.fromJson(Map<String, Object?> json) =>
      _$SectionReferenceFromJson(json);
}
