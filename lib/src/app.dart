import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_monkslab_web/src/routing/app_router.dart';
import 'package:the_monkslab_web/src/ui/index.dart';
import 'package:the_monkslab_web/src/utils/index.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
      routeInformationProvider: goRouter.routeInformationProvider,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      restorationScopeId: 'app',
      onGenerateTitle: (BuildContext context) => 'The Monsklab Web'.hardcoded,
    );
  }
}
