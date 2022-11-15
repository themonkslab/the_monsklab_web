// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      content: json['content'] as String,
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
      published: DateTime.parse(json['published'] as String),
      readingTime: json['readingTime'] as String?,
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'content': instance.content,
      'author': instance.author,
      'published': instance.published.toIso8601String(),
      'readingTime': instance.readingTime,
    };
