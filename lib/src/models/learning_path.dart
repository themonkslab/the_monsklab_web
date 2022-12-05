import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_monkslab_web/src/models/course_reference.dart';

part 'learning_path.freezed.dart';
part 'learning_path.g.dart';

@freezed
class LearningPath with _$LearningPath {
  const factory LearningPath({
    required String id,
    required String title,
    required List<CourseReference> courses,
  }) = _LearningPath;

  factory LearningPath.fromJson(Map<String, Object?> json) =>
      _$LearningPathFromJson(json);

  factory LearningPath.fromDocumentSnapshot(
      DocumentSnapshot<Map<String, dynamic>> doc) {
    final courses = (doc.data()!['courses'] as List)
        .map((e) => CourseReference.fromJson(e))
        .toList();

    return LearningPath(
      id: doc.id,
      title: doc.data()!['title'],
      courses: courses,
    );
  }

  //? Why a static const and not a named constructor? Less verbose?
  // factory LearningPath.emptyWithNamedConstructor() {
  //   return const LearningPath(id: 'id', title: 'title', courses: []);
  // }

  static const empty = LearningPath(id: '', title: '', courses: []);
}
