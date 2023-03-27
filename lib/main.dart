import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/core/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/web_observer.dart';

Future main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = WebObserver();
  Beamer.setPathUrlStrategy();
  CoursesRepository coursesRepository = FileCoursesRepositoryImpl();
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => coursesRepository,
        ),
      ],
      child: BlocProvider(
        create: (context) => LocaleCubit(),
        child: const AppPage(),
      ),
    ),
  );
}
