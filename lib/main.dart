import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/firebase_options.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    App(coursesRepository: CoursesRepository()),
  );
}
