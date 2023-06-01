import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class Hola extends StatelessWidget {
  const Hola({
    required this.isPhoneOrTablet,
    super.key,
  });
  final bool isPhoneOrTablet;

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
              Text(
                localize(context).weAre,
                style: AppTextStyles.h1.copyWith(
                  color: AppColors.black,
                  height: 1,
                  fontSize: 56,
                ),
                textAlign: TextAlign.center,
              ),
              AppGaps.gapH32,
              Padding(
                padding: isPhoneOrTablet ? AppPaddings.padH24 : AppPaddings.padAll0,
                child: Text(
                  localize(context).whoWeAre,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.pLarge,
                ),
              ),
              AppGaps.gapH64,
            ],
          ),
        ),
      ),
    );
  }
}
