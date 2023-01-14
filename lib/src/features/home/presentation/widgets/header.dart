import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/helpers.dart';

class Header extends StatelessWidget {
  const Header({
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
                  'Aprender a programar como habríamos soñado!',
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
                    Text(
                      'Un camino de estudio y una comunidad de entrenamiento para formarse en el oficio del desarrollo. Un lugar para el que no se necesitan conocimientos previos y que espera darle todo lo que necesitan para volverse profesionales de alto nivel en esta industria.',
                      style: AppTextStyles.p.copyWith(
                        color: AppColors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    AppGaps.gapH48,
                    const Divider(color: AppColors.grey),
                    AppGaps.gapH48,
                    Text(
                      'Sumate sin ningún costo!\nSolo recibimos 10 personas cada mes!'
                          .toUpperCase(),
                      style: AppTextStyles.h1.copyWith(
                        color: AppColors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    AppGaps.gapH32,
                    AppFilledButton(
                      text: 'Qué estás esperando! Sumate!',
                      onTap: () async {
                        try {
                          Helpers.launchDiscord();
                        } catch (e) {
                          //TODO -HIGH- manage error
                          throw Exception('Could not launch url');
                        }
                      },
                    ),
                    AppGaps.gapH48,
                    const Divider(color: AppColors.grey),
                    AppGaps.gapH24,
                    Text(
                      'Aprendemos a aprender, a pensar desde atrás hacia adelante testeando cada línea de código. Aprendemos a organizarnos y ordenarnos, entender el negocio y a focalizarlos en el valor que podemos aportar.',
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
