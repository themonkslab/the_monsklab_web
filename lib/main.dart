import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/core/_index.dart';
import 'package:the_monkslab_web/src/observers/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

Future main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  final CoursesRepository coursesRepository = FileCoursesRepositoryImpl();
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
