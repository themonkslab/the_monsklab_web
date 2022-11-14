// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_path.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LearningPathRepo _$$_LearningPathRepoFromJson(Map<String, dynamic> json) =>
    _$_LearningPathRepo(
      id: json['id'] as int,
      title: json['title'] as String,
      courses: (json['courses'] as List<dynamic>)
          .map((e) => CourseRepo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LearningPathRepoToJson(_$_LearningPathRepo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'courses': instance.courses,
    };
