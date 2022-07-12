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

    if (screenType == ScreenType.phone) {
      return Scaffold(
        appBar: const AppAppBar(
          title: AppAssets.appName,
        ),
        body: ListView.builder(
          itemCount: courseSections.length,
          itemBuilder: ((context, index) {
            final section = courseSections[index];
            return SectionItem(section: section);
          }),
        ),
      );
    } else {
      return Scaffold(
        appBar: const AppAppBar(
          title: AppAssets.appName,
        ),
        backgroundColor: Colors.red[400],
        body: Center(
          child: Container(
            color: Colors.white,
            width: isDesktopOrLarge ? 960.0 : 760.0,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              children: <Widget>[
                gapH24,
                for (var section in courseSections)
                  SectionItem(section: section)
              ],
            ),
          ),
        ),
      );
    }
  }
}
