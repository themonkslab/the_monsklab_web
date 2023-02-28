import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/firebase_options.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/web_observer.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = WebObserver();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  CoursesRepository coursesRepository = FileCoursesRepositoryImpl();
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => coursesRepository,
        ),
      ],
      child: const AppPage(),
    ),
  );
}
