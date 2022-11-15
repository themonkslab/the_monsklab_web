import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_monkslab_web/src/models/_index.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required String id,
    required String title,
    required List<Section> sections,
  }) = _Course;

  factory Course.fromJson(Map<String, Object?> json) => _$CourseFromJson(json);

  factory Course.fromDocumentReference(
      DocumentReference<Map<String, dynamic>> doc) {
    return Course(
      id: doc.id,
      title: "Falta el título?",
      sections: [],
    );
  }
}
