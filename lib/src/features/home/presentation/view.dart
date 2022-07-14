import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/index.dart';
import 'package:the_monkslab_web/src/features/home/presentation/index.dart';
import 'package:the_monkslab_web/src/ui/index.dart';
import 'package:the_monkslab_web/src/utils/index.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final courseSections = limitless.content;
    final screenType = context.getScreenType();
    final isDesktopOrLarge =
        screenType == ScreenType.desktop || screenType == ScreenType.large;
    final isTablet = screenType == ScreenType.tablet;

    return Scaffold(
      appBar: const AppAppBar(
        title: AppAssets.appName,
      ),
      body: Center(
        child: SizedBox(
          width: isDesktopOrLarge
              ? 960.0
              : isTablet
                  ? 760.0
                  : double.infinity,
          child: ListView(
            children: <Widget>[
              gapH24,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(limitless.title, style: AppTextStyles.h1),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(limitless.description, style: AppTextStyles.h3),
              ),
              gapH24,
              for (var section in courseSections) SectionItem(section: section)
            ],
          ),
        ),
      ),
    );
  }
}
