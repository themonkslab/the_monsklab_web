import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:the_monkslab_web/src/models/article_reference.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

part 'section.g.dart';

@JsonSerializable()
class Section extends Equatable {
  const Section({
    required this.id,
    required this.title,
    required this.description,
    required this.articles,
  });
  factory Section.fromDocumentSnapshot(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    final articles = (doc.data()!['articles'] as List)
        .map((e) => ArticleReference.fromJson(e))
        .toList();

    return Section(
      id: doc.id,
      title: doc.data()!['title'],
      description: doc.data()!['description'],
      articles: articles,
    );
  }

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
  final String id;
  final String title;
  final String description;
  final List<ArticleReference> articles;

  @override
  List<Object> get props => [id, title, description, articles];

  Section copyWith({
    String? id,
    String? title,
    String? description,
    List<ArticleReference>? articles,
  }) {
    return Section(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      articles: articles ?? this.articles,
    );
  }

  @override
  String toString() =>
      '''Section(${Colorizer.colorizeWithBrightMagenta(text: 'id:')} $id,
  title: $title,
  description: $description,
  articles: $articles)''';
}
