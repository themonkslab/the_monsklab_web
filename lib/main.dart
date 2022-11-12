import 'package:courses_repository/courses_repository.dart';
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    App(
      coursesRepository: CoursesRepository(),
    ),
  );
}
