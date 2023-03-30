import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:the_monkslab_web/src/models/section_reference.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

part 'course.g.dart';

@JsonSerializable()
class Course extends Equatable {
  const Course({
    required this.id,
    required this.title,
    required this.description,
    required this.sections,
  });
  factory Course.fromDocumentSnapshot(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    final sections = (doc.data()!['sections'] as List)
        .map((e) => SectionReference.fromJson(e))
        .toList();

    return Course(
      id: doc.id,
      title: doc.data()!['title'],
      description: doc.data()!['description'],
      sections: sections,
    );
  }

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
  final String id;
  final String title;
  final String description;
  final List<SectionReference> sections;

  @override
  List<Object> get props => [id, title, description, sections];

  Course copyWith({
    String? id,
    String? title,
    String? description,
    List<SectionReference>? sections,
  }) {
    return Course(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      sections: sections ?? this.sections,
    );
  }

  @override
  String toString() =>
      '''Course(${Colorizer.colorizeWithBrightMagenta(text: 'id:')} $id,
  title: $title,
  description: $description,
  sections: $sections)''';
}
