// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_path.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LearningPath _$$_LearningPathFromJson(Map<String, dynamic> json) =>
    _$_LearningPath(
      id: json['id'] as String,
      title: json['title'] as String,
      shouldUpdate: json['shouldUpdate'] as bool,
      courses: (json['courses'] as List<dynamic>)
          .map((e) => CourseReference.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LearningPathToJson(_$_LearningPath instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'shouldUpdate': instance.shouldUpdate,
      'courses': instance.courses,
    };
