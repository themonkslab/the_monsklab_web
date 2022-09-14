import 'package:beamer/beamer.dart';
import 'package:the_monkslab_web/src/constants/models.dart';
import 'package:the_monkslab_web/src/features/_index.dart';

enum AppRoutes {
  home,
  article,
}

final routerDelegate = BeamerDelegate(
  locationBuilder: RoutesLocationBuilder(
    routes: {
      '/': (_, __, ___) => const ArchiveView(),
      '/archive': (_, __, ___) => const ArchiveView(),
      '/course': (_, __, ___) => const CourseView(),
      '/article/:chapter': ((_, __, data) {
        final chapter = data as CourseChapter;
        return Article(chapter: chapter);
      }),
    },
  ),
);
