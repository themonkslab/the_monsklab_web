import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:the_monkslab_web/src/models/course_reference.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class Courses extends Equatable {
  const Courses({
    required this.id,
    required this.title,
    required this.shouldUpdate,
    required this.courses,
  });

  factory Courses.fromDocumentSnapshot(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    final courses = (doc.data()!['courses'] as List)
        .map((e) => CourseReference.fromJson(e))
        .toList();

    return Courses(
      id: doc.id,
      title: doc.data()!['title'],
      courses: courses,
      shouldUpdate: doc.data()!['shouldUpdate'],
    );
  }

  factory Courses.fromJson(String source) =>
      Courses.fromMap(json.decode(source));

  factory Courses.fromMap(Map<String, dynamic> map) {
    return Courses(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      shouldUpdate: map['shouldUpdate'] ?? false,
      courses: List<CourseReference>.from(
        map['courses']?.map((x) => CourseReference.fromMap(x)),
      ),
    );
  }

  factory Courses.initial() {
    return const Courses(
      id: '',
      title: 'title',
      shouldUpdate: false,
      courses: [],
    );
  }
  final String id;
  final String title;
  final bool shouldUpdate;
  final List<CourseReference> courses;

  @override
  List<Object?> get props => [id, title, shouldUpdate, courses];

  Courses copyWith({
    String? id,
    String? title,
    bool? shouldUpdate,
    List<CourseReference>? courses,
  }) {
    return Courses(
      id: id ?? this.id,
      title: title ?? this.title,
      shouldUpdate: shouldUpdate ?? this.shouldUpdate,
      courses: courses ?? this.courses,
    );
  }

  @override
  String toString() {
    return '''Courses(${Colorizer.colorizeWithBrightMagenta(text: 'id:')} $id,
    title: $title,
    shouldUpdate: $shouldUpdate,
    courses: $courses)''';
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{}
      ..addAll({'id': id})
      ..addAll({'title': title})
      ..addAll({'shouldUpdate': shouldUpdate})
      ..addAll({'courses': courses.map((x) => x.toMap()).toList()});

    return result;
  }

  String toJson() => json.encode(toMap());
}
