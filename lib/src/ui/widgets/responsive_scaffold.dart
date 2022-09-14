import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class AppResponsiveScaffold extends StatelessWidget {
  const AppResponsiveScaffold({Key? key, required this.child})
      : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final screenType = context.getScreenType();
    final isDesktopOrLarge =
        screenType == ScreenType.desktop || screenType == ScreenType.large;
    final isTablet = screenType == ScreenType.tablet;

    return Scaffold(
      appBar: const AppAppBar(
        title: 'THE MONKSLAB',
      ),
      body: Center(
        child: SizedBox(
          width: isDesktopOrLarge
              ? AppSizes.largeContentContainer
              : isTablet
                  ? AppSizes.desktopContentContainer
                  : double.infinity,
          child: child,
        ),
      ),
    );
  }
}
