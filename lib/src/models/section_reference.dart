import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

part 'section_reference.g.dart';

@JsonSerializable()
class SectionReference extends Equatable {
  const SectionReference({
    required this.title,
    required this.path,
  });

  factory SectionReference.fromJson(Map<String, dynamic> json) =>
      _$SectionReferenceFromJson(json);
  final String title;
  final String path;

  @override
  List<Object> get props => [title, path];

  Map<String, dynamic> toJson() => _$SectionReferenceToJson(this);

  SectionReference copyWith({
    String? title,
    String? path,
  }) {
    return SectionReference(
      title: title ?? this.title,
      path: path ?? this.path,
    );
  }

  @override
  String toString() =>
      '''SectionReference(${Colorizer.colorizeWithBrightMagenta(text: 'title:')} $title,
  path: $path)''';
}
