import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/features/home/presentation/widgets/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
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
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: isPhoneOrTablet ? AppPaddings.padH8 : AppPaddings.padV12,
          child: Column(
            children: [
              //* Bar
              Bar(isPhoneOrTablet: isPhoneOrTablet),
              AppGaps.gapH12,
              //* Hero
              Header(isPhoneOrTablet: isPhoneOrTablet),
              //* Contratanos
              Contratanos(isPhoneOrTablet: isPhoneOrTablet),
              //* Footer
              Footer(isPhoneOrTablet: isPhoneOrTablet),
            ],
          ),
        ),
      ),
    );
  }
}
