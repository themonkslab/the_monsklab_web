import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: isPhoneOrTablet ? AppPaddings.padH8 : AppPaddings.padV12,
          child: Column(
            children: [
              //* Bar
              SizedBox(
                width: AppSizes.largeContentContainer,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                        'assets/images/logos/monsklab_logo_squared.svg'),
                    const LocationLinksRow()
                  ],
                ),
              ),
              AppGaps.gapH8,
              //* Hero
              Stack(
                children: [
                  //* Content
                  Container(
                    color: AppColors.black,
                    width: double.infinity,
                    padding: AppPaddings.padAll32,
                    child: Column(
                      children: [
                        Text(
                          'Mucho más\nque aprender\nDart y Flutter!',
                          style: AppTextStyles.h1Header
                              .copyWith(color: AppColors.white),
                          textAlign: TextAlign.center,
                        ),
                        AppGaps.gapH16,
                        const SizedBox(
                          width: AppSizes.largeContentContainer,
                          child: Divider(color: AppColors.white),
                        ),
                        AppGaps.gapH16,
                        Text(
                          'Sumate gratis\na nuestra hermosa comunidad'
                              .toUpperCase(),
                          style: AppTextStyles.h1.copyWith(
                            color: AppColors.white,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        AppGaps.gapH24,
                        AppFilledButton(
                          text: 'Qué estás pensando! Sumate!',
                          onTap: () {},
                        ),
                        AppGaps.gapH24,
                        const SizedBox(
                          width: AppSizes.largeContentContainer,
                          child: Divider(color: AppColors.white),
                        ),
                        AppGaps.gapH24,
                        SizedBox(
                          width: 400,
                          child: Text(
                            'Aprendemos a aprender, a pensar desde atrás hacia adelante, testeando cada línea de código. Aprendemos todo lo que se necesita para trabajar en el alto nivel.',
                            style: AppTextStyles.p.copyWith(
                              color: AppColors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        AppGaps.gapH24,
                      ],
                    ),
                  ),
                  //* Flutter logo
                  Positioned(
                    bottom: 0,
                    child: SvgPicture.asset(
                        'assets/images/logos/flutter_logo.svg'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
