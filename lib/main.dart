import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/firebase_options.dart';
import 'package:the_monkslab_web/generated/codegen_loader.g.dart';
import 'package:the_monkslab_web/src/app.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/web_observer.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = WebObserver();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await EasyLocalization.ensureInitialized();
  CoursesRepository coursesRepository = FileCoursesRepositoryImpl();
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => coursesRepository,
        ),
      ],
      child: EasyLocalization(
        supportedLocales: const [
          Locale('en'),
          Locale('es'),
        ],
        path: 'assets/translations',
        assetLoader: const CodegenLoader(),
        child: const AppPage(),
      ),
    ),
  );
}
