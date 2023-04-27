// ignore_for_file: avoid_print

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class AppBlocObserver extends BlocObserver {
  AppBlocObserver();

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if (kDebugMode) {
      Colorizer.colorize(
        mode: ColorizerMode.print,
        text: 'onEvent:',
        textColor: ColorizerTextColor.yellow,
        emoji: '👉',
      );
      print(event);
    }
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      Colorizer.colorize(
        mode: ColorizerMode.print,
        text: 'onChange:',
        textColor: ColorizerTextColor.magenta,
        emoji: '🚥',
      );
      print(change.currentState);
    }
  }

  // Commented to avoid printing on every transition
  // @override
  // void onTransition(Bloc bloc, Transition transition) {
  //   super.onTransition(bloc, transition);
  //   if (kDebugMode) {
  //     print('onTransition $transition');
  //   }
  // }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (kDebugMode) {
      Colorizer.riseWarning(error.toString());
    }
    super.onError(bloc, error, stackTrace);
  }
}
