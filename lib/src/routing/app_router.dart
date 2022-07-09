import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:the_monkslab_web/src/features/index.dart';

import '../features/article/presentation/article.dart';
import 'not_found_screen.dart';

enum AppRoute {
  home,
  article,
  test,
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        path: '/',
        name: AppRoute.home.name,
        builder: (context, state) => const Home(),
        routes: [
          GoRoute(
            path: 'article/:data',
            name: AppRoute.article.name,
            builder: (context, state) {
              final data = state.params['data']!;
              return Article(
                data: data,
              );
            },
          ),
          GoRoute(
            path: 'test',
            name: AppRoute.test.name,
            builder: (context, state) {
              // final data = state.params['data']!;
              return Test(
                  // data: data,
                  );
            },
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
});
