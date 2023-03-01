import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:the_monkslab_web/src/features/_index.dart';

class AppPage extends StatelessWidget {
  AppPage({super.key});

  final routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        // Return either Widgets or BeamPages if more customization is needed
        '/': (context, state, data) => const HomePage(),
        '/archive': (_, __, ___) => const ArchivePage(),
        '/course/:path': (_, state, __) {
          final path = state.pathParameters['path']!;
          return CoursePage(path);
        },
        '/article/:path': ((_, state, __) {
          final path = (state.pathParameters['path']!);
          return ArticlePage(path: path);
        }),
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context, provider, snapshot) {
        return MaterialApp.router(
          routeInformationParser: BeamerParser(),
          routerDelegate: routerDelegate,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: provider.locale,
        );
      },
    );
  }
}

class LocaleProvider with ChangeNotifier {
  Locale? _locale = const Locale('en');
  Locale? get locale => _locale;

  void setLocale(Locale locale) {
    if (!AppLocalizations.supportedLocales.contains(locale)) return;
    _locale = locale;
    notifyListeners();
  }
}
