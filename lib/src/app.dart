import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/index.dart';
import 'package:the_monkslab_web/src/features/article/presentation/article.dart';
import 'package:the_monkslab_web/src/ui/index.dart';
import 'package:the_monkslab_web/src/utils/index.dart';

import 'features/home/presentation/view.dart';

enum AppRoute {
  home,
  article,
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '/': (_, __, ___) => const Home(),
        '/article/:chapter': ((_, __, data) {
          final chapter = data as CourseChapter;
          return Article(chapter: chapter);
        }),
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      restorationScopeId: 'app',
      onGenerateTitle: (BuildContext context) => 'The Monsklab Web'.hardcoded,
    );
  }
}
