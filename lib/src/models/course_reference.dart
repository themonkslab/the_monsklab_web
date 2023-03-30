import 'dart:convert';

import 'package:equatable/equatable.dart';

class CourseReference extends Equatable {
  const CourseReference({required this.path, required this.title});

  factory CourseReference.initial() {
    return const CourseReference(path: '', title: '');
  }

  factory CourseReference.fromMap(Map<String, dynamic> map) {
    return CourseReference(
      path: map['path'] ?? '',
      title: map['title'] ?? '',
    );
  }

  factory CourseReference.fromJson(String source) =>
      CourseReference.fromMap(json.decode(source));
  final String path;
  final String title;

  @override
  List<Object?> get props => [path, title];

  CourseReference copyWith({
    String? path,
    String? title,
  }) {
    return CourseReference(
      path: path ?? this.path,
      title: title ?? this.title,
    );
  }

  @override
  String toString() => 'CourseReference(path: $path, title: $title)';

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{}
      ..addAll({'path': path})
      ..addAll({'title': title});

    return result;
  }

  String toJson() => json.encode(toMap());
}
