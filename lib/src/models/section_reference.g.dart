// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SectionReference _$$_SectionReferenceFromJson(Map<String, dynamic> json) =>
    _$_SectionReference(
      title: json['title'] as String,
      description: json['description'] as String?,
      articles: (json['articles'] as List<dynamic>)
          .map((e) => ArticleReference.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SectionReferenceToJson(_$_SectionReference instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'articles': instance.articles,
    };
