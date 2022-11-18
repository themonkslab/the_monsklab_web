import 'package:beamer/beamer.dart';
import 'package:the_monkslab_web/src/features/_index.dart';

enum AppRoutes {
  home,
  article,
  archive,
  course,
}

final routerDelegate = BeamerDelegate(
  initialPath: '/',
  //TODO -LOW- remove animation just on web
  transitionDelegate: const NoAnimationTransitionDelegate(),
  locationBuilder: RoutesLocationBuilder(
    routes: {
      '/': (_, __, ___) => const HomeView(),
      '/archive': (_, __, ___) => const ArchivePage(),
      '/course/:path': (_, state, __) {
        final path = state.pathParameters['path']!;
        //TODO -LOW- prevent if something happens and path == null
        return CoursePage(path);
      },

      //TODO -HIGH- fix bug that prevents hot reload / hot restart on Article
      '/article/:courseId/:sectionId/:chapterId': ((_, state, __) {
        final courseId = (state.pathParameters['courseId']!);
        final sectionId = (state.pathParameters['sectionId']!);
        final chapterId = (state.pathParameters['chapterId']!);

        return Article(
          courseId: courseId,
          sectionId: sectionId,
          chapterId: chapterId,
        );
      }),
    },
  ),
);
