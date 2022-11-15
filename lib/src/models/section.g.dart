// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Section _$$_SectionFromJson(Map<String, dynamic> json) => _$_Section(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      articles: (json['articles'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SectionToJson(_$_Section instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'articles': instance.articles,
    };
