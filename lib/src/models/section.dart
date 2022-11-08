import 'package:the_monkslab_web/src/models/article.dart';

class Section {
  Section({
    required this.id,
    required this.title,
    required this.chapters,
    this.description,
  });
  final int id;
  final String title;
  final String? description;
  final List<Article> chapters;
}
