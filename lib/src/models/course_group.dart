import 'package:the_monkslab_web/src/models/_index.dart';

class CourseGroup {
  const CourseGroup({
    this.groupName,
    this.id,
    this.courses,
  });

  final String? id;
  final String? groupName;
  final List<Course>? courses;
}
