// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routing.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $localizedRoute,
      $homeRoute,
    ];

RouteBase get $localizedRoute => GoRouteData.$route(
      path: '/:locale',
      factory: $LocalizedRouteExtension._fromState,
    );

extension $LocalizedRouteExtension on LocalizedRoute {
  static LocalizedRoute _fromState(GoRouterState state) => LocalizedRoute(
        locale: state.pathParameters['locale']!,
      );

  String get location => GoRouteData.$location(
        '/${Uri.encodeComponent(locale)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}
