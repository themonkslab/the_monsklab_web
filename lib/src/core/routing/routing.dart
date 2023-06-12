import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:the_monkslab_web/src/core/locale_cubit/locale_cubit.dart';
import 'package:the_monkslab_web/src/core/routing/not_found_screen.dart';
import 'package:the_monkslab_web/src/features/_index.dart';
import 'package:the_monkslab_web/src/observers/_index.dart';

part 'routing.g.dart';

enum AppRoutes {
  home,
  article,
  archive,
  course,
}

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter routerConfig = GoRouter(
  routes: $appRoutes,
  initialLocation: '/',
  navigatorKey: rootNavigatorKey,
  errorBuilder: (context, state) => const NotFoundScreen(),
  observers: [LoggerRouteObserver()],
);

@TypedGoRoute<LocalizedRoute>(
  path: '/:locale',
)
class LocalizedRoute extends GoRouteData {
  const LocalizedRoute({required this.locale});

  final String locale;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    context.read<LocaleCubit>().setLocale(Locale(locale));
    return const HomePage();
  }
}

@TypedGoRoute<HomeRoute>(
  path: '/',
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    final locale = context.read<LocaleCubit>().state.locale;
    return '/${locale.languageCode}';
  }
}
