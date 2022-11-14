import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/core/routing/routing.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required CoursesRepository coursesRepository,
  }) : _coursesRepository = coursesRepository;

  final CoursesRepository _coursesRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _coursesRepository,
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

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
