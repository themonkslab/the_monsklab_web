import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:the_monkslab_web/src/features/home/_index.dart';
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
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        // Return either Widgets or BeamPages if more customization is needed
        '/': (context, state, data) => const HomePage(),
        '/switch': (context, state, data) => const LanguageSwitchScreen(),
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

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context, provider, snapshot) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppLocalizations.of(context)!.welcome_text),
                TextButton(
                  onPressed: () => context.beamToNamed('/switch'),
                  child: Text(AppLocalizations.of(context)!.switch_language),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class LanguageSwitchScreen extends StatelessWidget {
  const LanguageSwitchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context, provider, snapshot) {
        return Scaffold(
          body: Center(
            child: LanguageSwitcherDropDown(
              locale: provider.locale ?? const Locale('en'),
              onChange: (locale) => provider.setLocale(locale ?? const Locale('en')),
            ),
          ),
        );
      },
    );
  }
}

class LocaleProvider with ChangeNotifier {
  Locale? _locale;
  Locale? get locale => _locale;

  void setLocale(Locale locale) {
    if (!AppLocalizations.supportedLocales.contains(locale)) return;
    _locale = locale;
    notifyListeners();
  }
}

class LanguageSwitcherDropDown extends StatelessWidget {
  const LanguageSwitcherDropDown({
    Key? key,
    required this.locale,
    this.onChange,
  }) : super(key: key);
  final Locale locale;
  final void Function(Locale?)? onChange;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Locale>(
      value: locale,
      items: const [
        DropdownMenuItem(
          value: Locale('en'),
          child: Text('English'),
        ),
        DropdownMenuItem(
          value: Locale('es'),
          child: Text('Español'),
        ),
      ],
      onChanged: onChange,
    );
  }
}
