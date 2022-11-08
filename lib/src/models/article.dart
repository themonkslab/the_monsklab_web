import 'package:the_monkslab_web/src/models/_index.dart';

class Article {
  Article({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.author,
    required this.published,
    this.readingTime,
  });
  final int id;
  final String title;
  final String description;
  final String content;
  final Author author;
  final DateTime published;
  final String? readingTime;
}
