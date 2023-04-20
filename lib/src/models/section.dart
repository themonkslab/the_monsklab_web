import 'package:the_monkslab_web/src/models/_index.dart';

class Section {
  const Section({
    required this.id,
    required this.title,
    required this.description,
    required this.articles,
    required this.path,
  });

  final String id;
  final String title;
  final String description;
  final List<Article> articles;
  final String path;
}
