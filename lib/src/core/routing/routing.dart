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
      '/archive': (_, __, ___) => const ArchiveView(),
      '/course/:id': (_, state, __) {
        final id = int.tryParse(state.pathParameters['id']!);
        return CourseView(id!);
      },
      //TODO -HIGH- fix bug that prevents hot reload / hot restart on Article
      '/article/:courseId/:sectionId/:chapterId': ((_, state, __) {
        final courseId = int.tryParse(state.pathParameters['courseId']!);
        final sectionId = int.tryParse(state.pathParameters['sectionId']!);
        final chapterId = int.tryParse(state.pathParameters['chapterId']!);

        return Article(
          courseId: courseId!,
          sectionId: sectionId!,
          chapterId: chapterId!,
        );
      }),
    },
  ),
);
