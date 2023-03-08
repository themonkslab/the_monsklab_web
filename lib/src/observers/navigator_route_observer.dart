import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class LoggerRouteObserver extends RouteObserver<ModalRoute<dynamic>> {
  @override
  void didPush(Route route, Route? previousRoute) {
    _printMessage(route, previousRoute, 'didPush');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _printMessage(route, previousRoute, 'didPop');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    _printMessage(route, previousRoute, 'didRemove');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    _printMessage(newRoute, oldRoute, 'didReplace');
  }

  _printMessage(Route? route, Route? previousRoute, String method) {
    BeamPage? beamPage;
    BeamPage? previousBeamPage;
    if (route != null && route.settings is BeamPage) {
      beamPage = route.settings as BeamPage;
    }
    if (previousRoute != null && previousRoute.settings is BeamPage) {
      previousBeamPage = previousRoute.settings as BeamPage;
    }
    if (beamPage != null || previousBeamPage != null) {
      Colorizer.colorize(
        mode: ColorizerMode.debugPrint,
        text: 'onRoute:',
        textColor: ColorizerTextColor.green,
        emoji: '🚀',
      );
      debugPrint(
        '"$method", route: "${beamPage?.key}", previousRoute: "${previousBeamPage?.key}}"',
      );
    }
  }
}
