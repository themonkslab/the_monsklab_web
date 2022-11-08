// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Course _$$_CourseFromJson(Map<String, dynamic> json) => _$_Course(
      id: json['id'] as int,
      title: json['title'] as String,
      subTitle: json['subTitle'] as String?,
      description: json['description'] as String,
      authors: (json['authors'] as List<dynamic>)
          .map((e) => Author.fromJson(e as Map<String, dynamic>))
          .toList(),
      materialsAuthor: json['materialsAuthor'] as String?,
      content: (json['content'] as List<dynamic>)
          .map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CourseToJson(_$_Course instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'description': instance.description,
      'authors': instance.authors,
      'materialsAuthor': instance.materialsAuthor,
      'content': instance.content,
    };
