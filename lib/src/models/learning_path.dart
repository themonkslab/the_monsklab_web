import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_monkslab_web/src/models/_index.dart';

part 'learning_path.freezed.dart';
part 'learning_path.g.dart';

@freezed
class LearningPath with _$LearningPath {
  const factory LearningPath({
    required String id,
    required String title,
    required List<Course> courses,
  }) = _LearningPath;

  factory LearningPath.fromJson(Map<String, Object?> json) =>
      _$LearningPathFromJson(json);

  factory LearningPath.fromDocumentSnapshot(
      DocumentSnapshot<Map<String, dynamic>> doc) {
    final courses = doc.data()!['courses'] as List<Course>;
    return LearningPath(
      id: doc.id,
      title: doc.data()!['title'],
      courses: courses,
    );
    // courses:courses.map((course) =>
    //     Course(id: course.id, title: course.title, sections: course)));
  }

  // static const empty = LearningPath(
  //   id: '',
  //   title: '--',
  //   courses: [],
  // );
}
