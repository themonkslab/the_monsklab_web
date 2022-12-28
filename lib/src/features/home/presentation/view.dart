import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_monkslab_web/src/ui/sizes.dart';
import 'package:the_monkslab_web/src/ui/widgets/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenType = context.getScreenType();
    final isPhoneOrTablet =
        screenType == ScreenType.phone || screenType == ScreenType.tablet;
    return AppResponsiveScaffold(
      hasAppBar: false,
      child: Padding(
        padding: isPhoneOrTablet ? AppPaddings.padH8 : AppPaddings.padV12,
        child: Column(
          children: [
            //* Bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                    'assets/images/logos/monsklab_logo_squared.svg'),
                const LocationLinksRow()
              ],
            )
          ],
        ),
      ),
    );
  }
}
