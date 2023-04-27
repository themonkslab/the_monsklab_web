import 'package:the_monkslab_web/src/models/_index.dart';

class Course {
  const Course({
    required this.id,
    required this.title,
    required this.description,
    required this.sections,
    required this.path,
  });
  final String id;
  final String title;
  final String description;
  final String path;
  final List<Section> sections;
}
