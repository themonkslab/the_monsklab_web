import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:the_monkslab_web/src/core/locale_cubit/locale_cubit.dart';
import 'package:the_monkslab_web/src/core/routing/not_found_screen.dart';
import 'package:the_monkslab_web/src/features/_index.dart';
import 'package:the_monkslab_web/src/repositories/_index.dart';

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
      '/:locale/archive/:group_name/:course': (_, state, __) {
        final coursePath = state.pathParameters['course']!;
        final groupName = state.pathParameters['group_name']!;
        final languageCode = state.pathParameters['locale']!;
        return LocaleWrapper(
          languageCode: languageCode,
          child: CoursePage(
            coursePath,
            groupName,
          ),
        );
      },
      '/:locale/archive/:group_name/:course/:section/:article': (_, state, __) {
        final coursePath = state.pathParameters['course']!;
        final groupName = state.pathParameters['group_name']!;
        final sectionPath = state.pathParameters['section']!;
        final articlePath = state.pathParameters['article']!;
        final languageCode = state.pathParameters['locale']!;
        return LocaleWrapper(
          languageCode: languageCode,
          child: ArticlePage(
            articlePath: articlePath,
            sectionPath: sectionPath,
            coursePath: coursePath,
            groupName: groupName,
          ),
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
      context.read<CoursesRepository>().locale = Locale(languageCode);
      return child;
    }
    return const NotFoundScreen();
  }
}
