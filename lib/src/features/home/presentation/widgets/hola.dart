import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/core/routing/routing.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:url_launcher/url_launcher.dart';

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
                'Somos Mau, Eugenio y Martín,',
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
Un grupo de amigos apasionados por aprender y enseñar, obsesionados con las convenciones y el orden y convencidos de que la abundancia de esta industria, puede maximizarse dando posibilidades a un sin fin de personas.

Creemos que muchos más merecen las oportunidades que nosotros tuvimos y tratamos día a día de volverlo una realidad.

Monsklab trata de ser aquel lugar que habríamos amado tener cuando comenzamos.
''',
                textAlign: TextAlign.center,
                style: AppTextStyles.pLarge,
              ),
              AppGaps.gapH32,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppFilledButton(
                    text: 'Nuestros cursos!',
                    onTap: () =>
                        context.beamToNamed('/${AppRoutes.archive.name}'),
                  ),
                  AppFilledButton(
                    text: 'Nuestra comunidad',
                    onTap: () async {
                      final uri = Uri.parse('https://discord.gg/vpPVf7guPC');
                      if (await canLaunchUrl(uri)) {
                        launchUrl(uri);
                      } else {
                        //TODO -HIGH- manage error
                        throw Exception('Could not launch url');
                      }
                    },
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
