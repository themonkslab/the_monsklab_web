import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:seo/seo.dart';
import 'package:the_monkslab_web/src/core/_index.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SeoController(
      tree: WidgetTree(context: context),
      child: MaterialApp.router(
        title: 'The MonksLab',
        routeInformationParser: BeamerParser(),
        routerDelegate: routerDelegate,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: context.watch<LocaleCubit>().state.locale,
      ),
    );
  }
}
