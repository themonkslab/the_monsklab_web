import 'package:beamer/beamer.dart';
import 'package:the_monkslab_web/src/features/_index.dart';

enum AppRoutes {
  home,
  article,
  archive,
  course,
}

routerDelegate({String? initialPath}) => BeamerDelegate(
      initialPath: initialPath ?? '/',
      //TODO -LOW/MEDIUM- remove animation just on web
      transitionDelegate: const NoAnimationTransitionDelegate(),
      locationBuilder: RoutesLocationBuilder(
        routes: {
          '/': (_, __, ___) => const HomePage(),
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
