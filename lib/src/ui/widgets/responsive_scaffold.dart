import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class AppResponsiveScaffold extends StatelessWidget {
  /// A Scaffold with AppAppBar that centers information imposing a large container if isDesktopOrLarge
  ///
  /// __How to use__: add Column (with Padding if needed) as child. The scroll behavior is applyied by this component
  const AppResponsiveScaffold({
    required this.child,
    this.hasAppBar = true,
    super.key,
  });
  final Widget child;
  final bool hasAppBar;
  @override
  Widget build(BuildContext context) {
    final screenType = context.getScreenType();
    final isDesktopOrLarge =
        screenType == ScreenType.desktop || screenType == ScreenType.large;
    final isTablet = screenType == ScreenType.tablet;

    final body = SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: isDesktopOrLarge
                  ? AppSizes.largeContentContainer
                  : isTablet
                      ? AppSizes.desktopContentContainer
                      : double.infinity,
              child: child,
            ),
          ],
        ),
      ),
    );

    return hasAppBar
        ? Scaffold(
            appBar: AppAppBar(
              title: appTitle.toUpperCase(),
            ),
            body: body,
          )
        : Scaffold(
            body: body,
          );
  }
}
