import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:the_monkslab_web/locale_example.dart';
import 'package:the_monkslab_web/src/features/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

//! PageView
class AppPage extends StatelessWidget {
  const AppPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context, provider, snapshot) {
        return AppView(
          locale: provider.locale ?? const Locale('es'),
        );
      },
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({
    required this.locale,
    super.key,
  });
  final Locale locale;

  @override
  Widget build(BuildContext context) {
    MaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      //locale: provider.locale,
      restorationScopeId: 'app',
      //onGenerateTitle: (_) => LocaleKeys.theMonsklabWeb.tr(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: BeamerDelegate(
        locationBuilder: RoutesLocationBuilder(
          routes: {
            '/': (_, __, ___) => const HomePage(),
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale,
      restorationScopeId: 'app',
      title: 'The Monkslab',
    );
  }
}
