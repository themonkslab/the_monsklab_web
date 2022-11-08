import 'package:the_monkslab_web/src/models/_index.dart';

class Course {
  Course({
    required this.id,
    required this.title,
    required this.description,
    required this.authors,
    required this.content,
    this.subTitle,
    this.materialsAuthor,
  });

  final int id;
  final String title;
  final String? subTitle;
  final String description;
  final List<Author> authors;
  final String? materialsAuthor;
  final List<Section> content;
}
