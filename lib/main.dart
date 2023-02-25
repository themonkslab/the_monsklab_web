import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/firebase_options.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/features/language_switcher/bloc/language_switcher_bloc.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/repositories/courses_repository/impl/file_courses_repository.dart';
import 'package:the_monkslab_web/web_observer.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = WebObserver();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MultiRepositoryProvider(
        providers: [
          RepositoryProvider<CoursesRepository>(create: (_) => FileCoursesRepositoryImpl()),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => LanguageSwitcherBloc(),
        ),
          ],
          child: const AppPage(),),
      ),);
}
