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
      '/': (_, __, ___) => const Home(),
      '/article/:chapter': ((_, __, data) {
        final chapter = data as CourseChapter;
        return Article(chapter: chapter);
      }),
    },
  ),
);
