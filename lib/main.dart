import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/web_observer.dart';

Future main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = WebObserver();
  CoursesRepository coursesRepository = FileCoursesRepositoryImpl();
  runApp(
    ChangeNotifierProvider<LocaleProvider>(
      create: (context) => LocaleProvider(),
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => coursesRepository,
          ),
        ],
        child: AppPage(),
      ),
    ),
  );
}
