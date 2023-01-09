import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

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
                    'Entrenamos desarrolladores de primer nivel, team players, con pasión por cada línea de código y atención al detalle.',
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
          AppGaps.gapW64,
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
