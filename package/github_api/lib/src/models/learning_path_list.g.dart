// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_path_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LearningPathList _$$_LearningPathListFromJson(Map<String, dynamic> json) =>
    _$_LearningPathList(
      id: json['id'] as int,
      title: json['title'] as String,
      courses: (json['courses'] as List<dynamic>)
          .map((e) => LearningPath.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LearningPathListToJson(_$_LearningPathList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'courses': instance.courses,
    };
