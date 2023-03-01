import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:the_monkslab_web/src/models/_index.dart';
class Article extends Equatable {
  final String id;
  final String title;
  final String description;
  final String content;
  final Author author;
  final String published;
  final String? readingTime;
  const Article({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.author,
    required this.published,
    this.readingTime,
  });

  factory Article.initial() {
    return const Article(id: '', title: '', description: 'description', content: '', author: Author(name: '', picture: ''), published: '');
  }

  @override
  List<Object?> get props => [id, title, description, content, author, published, readingTime];

  Article copyWith({
    String? id,
    String? title,
    String? description,
    String? content,
    Author? author,
    String? published,
    String? readingTime,
  }) {
    return Article(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      content: content ?? this.content,
      author: author ?? this.author,
      published: published ?? this.published,
      readingTime: readingTime ?? this.readingTime,
    );
  }

  @override
  String toString() {
    return 'Article(id: $id, title: $title, description: $description, content: $content, author: $author, published: $published, readingTime: $readingTime)';
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'title': title});
    result.addAll({'description': description});
    result.addAll({'content': content});
    result.addAll({'author': author.toMap()});
    result.addAll({'published': published});
    if(readingTime != null){
      result.addAll({'readingTime': readingTime});
    }
  
    return result;
  }

  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      content: map['content'] ?? '',
      author: Author.fromMap(map['author']),
      published: map['published'] ?? '',
      readingTime: map['readingTime'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Article.fromJson(String source) => Article.fromMap(json.decode(source));
}
