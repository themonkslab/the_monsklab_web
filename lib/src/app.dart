import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/core/routing/routing.dart';
import 'package:the_monkslab_web/src/features/language_switcher/bloc/language_switcher_bloc.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

//! PageView
class AppPage extends StatelessWidget {
  const AppPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageSwitcherBloc, LanguageSwitcherState>(
      builder: (context, state) {
        return AppView(
          language: state.currentLanguage,
        );
      },
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({
    super.key,
    required this.language,
  });
  final Language language;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: <Locale>[
        Locale(language.name),
      ],
      restorationScopeId: 'app',
      onGenerateTitle: (BuildContext context) => localize(context).theMonsklabWeb,
    );
  }
}
