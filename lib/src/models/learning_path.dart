import 'package:the_monkslab_web/src/models/_index.dart';

class LearningPath {
  LearningPath({
    required this.id,
    required this.title,
    required this.courses,
  });

  final int id;
  final String title;
  final List<Course> courses;
}
