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
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: isPhoneOrTablet ? AppPaddings.padH8 : AppPaddings.padV12,
          child: Column(
            children: [
              //* Bar
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: AppColors.white),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        width: AppSizes.desktopContentContainer,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                                'assets/images/logos/monkslab_logo_white_letters.svg'),
                            const LocationLinksRow()
                          ],
                        ),
                      ),
                      AppGaps.gapH12,
                    ],
                  ),
                ),
              ),
              AppGaps.gapH12,
              //* Hero
              const Hero(),
              //* Hola
              const Hola(),
              //* Contratanos
              const Contratanos()
            ],
          ),
        ),
      ),
    );
  }
}

class Contratanos extends StatelessWidget {
  const Contratanos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.secondaryLight,
        border: Border.all(color: AppColors.black),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 400,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 48.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tu empresa necesita desarrollo Flutter de alto nivel?'
                        .toUpperCase(),
                    textAlign: TextAlign.start,
                    style: AppTextStyles.h1.copyWith(
                      fontSize: 20,
                      color: AppColors.white,
                    ),
                  ),
                  AppGaps.gapH20,
                  Text(
                    'Entrenamos desarrolladores primer nivel, team players, con pasión por cada línea de código y atención al detalle.',
                    textAlign: TextAlign.start,
                    style: AppTextStyles.p,
                  ),
                  AppGaps.gapH24,
                  AppFilledButton(
                    text: 'Contratanos!',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          SvgPicture.asset(
            'assets/images/logos/dart_logo.svg',
            height: 480,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}

class Hola extends StatelessWidget {
  const Hola({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Center(
        child: SizedBox(
          width: AppSizes.centeredTextContainer,
          child: Column(
            children: [
              //* Hola
              AppGaps.gapH64,
              AppGaps.gapH48,
              Text(
                'Hola!\nSomos Mau, Eugenio y Martín,',
                style: AppTextStyles.h1.copyWith(
                  color: AppColors.black,
                  height: 1.0,
                  fontSize: 56.0,
                ),
                textAlign: TextAlign.center,
              ),
              AppGaps.gapH32,
              Text(
                '''
Un grupo de amigos apasionados por aprender y enseñar, obsesionados con las convenciones y el orden y convencidos de que la abundancia que esta industria tiene para dar, puede maximizarse y dar posibilidades a un sin fin de personas.

Creemos que muchos más merecen las oportunidades que nosotros tuvimos y tratamos día a día en nuestro trabajo y la comunidad Monkslab, de volverlo una realidad. ''',
                textAlign: TextAlign.center,
                style: AppTextStyles.pLarge,
              ),
              AppGaps.gapH32,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppFilledButton(
                    text: 'Nuestros cursos!',
                    onTap: () {},
                  ),
                  AppFilledButton(
                    text: 'Nuestra comunidad',
                    onTap: () {},
                  ),
                ],
              ),
              AppGaps.gapH48,
              AppGaps.gapH64,
            ],
          ),
        ),
      ),
    );
  }
}

class Hero extends StatelessWidget {
  const Hero({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //* Content
        Container(
          color: AppColors.black,
          width: double.infinity,
          padding: AppPaddings.padAll32,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppGaps.gapH48,
              SizedBox(
                width: 1200,
                child: Text(
                  'Mucho más que aprender Dart y Flutter!',
                  style: AppTextStyles.h1.copyWith(
                    color: AppColors.white,
                    fontSize: 100,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              AppGaps.gapH48,
              SizedBox(
                width: AppSizes.centeredTextContainer,
                child: Column(
                  children: [
                    const Divider(color: AppColors.white),
                    AppGaps.gapH48,
                    Text(
                      'Sumate gratis\na nuestra comunidad, sin ningún costo y lleno de gente hermosa aprendiendo!'
                          .toUpperCase(),
                      style: AppTextStyles.h1.copyWith(
                        color: AppColors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    AppGaps.gapH32,
                    AppFilledButton(
                      text: 'Qué estás pensando! Sumate!',
                      onTap: () {},
                    ),
                    AppGaps.gapH48,
                    const Divider(color: AppColors.white),
                    AppGaps.gapH24,
                    Text(
                      'Aprendemos a aprender, a pensar desde atrás hacia adelante, testeando cada línea de código. Aprendemos todo lo que se necesita para trabajar en el alto nivel.',
                      style: AppTextStyles.p.copyWith(
                        color: AppColors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              AppGaps.gapH16,
              AppGaps.gapH24,
            ],
          ),
        ),
        //* Flutter logo
        Positioned(
          bottom: -10,
          child: SvgPicture.asset('assets/images/logos/flutter_logo.svg'),
        ),
      ],
    );
  }
}
