import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:the_monkslab_web/src/core/routing/routing.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

//! PageView
class AppPage extends StatelessWidget {
  const AppPage({
    super.key,
    required coursesRepository,
  }) : _coursesRepository = coursesRepository;

  //? answered - why private as pattern
  // - will prevent the repository from been used outside the class.
  // - will enforce the separation of layers
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
      title: 'The MonksLab',
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const <Locale>[
        Locale('en'),
        // Locale('es')
      ],
      restorationScopeId: 'app',
      onGenerateTitle: (BuildContext context) =>
          localize(context).theMonsklabWeb,
    );
  }
}
