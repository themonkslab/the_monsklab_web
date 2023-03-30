import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:the_monkslab_web/src/core/locale_cubit/locale_cubit.dart';
import 'package:the_monkslab_web/src/core/routing/not_found_screen.dart';
import 'package:the_monkslab_web/src/features/_index.dart';

enum AppRoutes {
  home,
  article,
  archive,
  course,
}

final routerDelegate = BeamerDelegate(
  locationBuilder: RoutesLocationBuilder(
    routes: {
      // Return either Widgets or BeamPages if more customization is needed
      '/:locale': (_, state, ___) {
        final languageCode = state.pathParameters['locale']!;
        return LocaleWrapper(
          languageCode: languageCode,
          child: const HomePage(),
        );
      },
      '/:locale/archive': (_, state, ___) {
        final languageCode = state.pathParameters['locale']!;
        return LocaleWrapper(
          languageCode: languageCode,
          child: const ArchivePage(),
        );
      },
      '/:locale/course/:path': (_, state, __) {
        final path = state.pathParameters['path']!;
        final languageCode = state.pathParameters['locale']!;
        return LocaleWrapper(
          languageCode: languageCode,
          child: CoursePage(path),
        );
      },
      '/:locale/article/:path': (_, state, __) {
        final path = state.pathParameters['path']!;
        final languageCode = state.pathParameters['locale']!;
        return LocaleWrapper(
          languageCode: languageCode,
          child: ArticlePage(path: path),
        );
      },
    },
  ),
  initialPath: '/en',
);

class LocaleWrapper extends StatelessWidget {
  const LocaleWrapper({
    super.key,
    required this.languageCode,
    required this.child,
  });
  final String languageCode;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final locale = Locale(languageCode);
    if (AppLocalizations.supportedLocales.contains(locale)) {
      context.read<LocaleCubit>().setLocale(Locale(languageCode));
      return child;
    }
    return const NotFoundScreen();
  }
}
