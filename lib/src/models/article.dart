import 'package:the_monkslab_web/src/models/_index.dart';

class Article {
  const Article({
    required this.id,
    required this.title,
    required this.description,
    required this.author,
    required this.published,
    required this.path,
    this.content,
    this.readingTime,
  });

  final String id;
  final String title;
  final String description;
  final String? content;
  final Author author;
  final String published;
  final String? readingTime;
  final String path;

  Article copyWith({
    String? id,
    String? title,
    String? description,
    String? content,
    Author? author,
    String? published,
    String? readingTime,
    String? path,
  }) {
    return Article(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      content: content ?? this.content,
      author: author ?? this.author,
      published: published ?? this.published,
      readingTime: readingTime ?? this.readingTime,
      path: path ?? this.path,
    );
  }
}
