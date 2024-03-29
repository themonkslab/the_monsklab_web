import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/ui/widgets/language_switcher_widget.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class Header extends StatelessWidget {
  const Header({
    required this.isPhoneOrTablet,
    super.key,
  });

  final bool isPhoneOrTablet;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //* Content
        Container(
          color: AppColors.black,
          width: double.infinity,
          padding: AppPaddings.padAll32.copyWith(top: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isPhoneOrTablet)
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LanguageSwitcherDropDown(),
                  ],
                ),
              AppGaps.gapH48,
              SizedBox(
                width: 1200,
                child: AutoSizeText(
                  localize(context).learnToProgramAsWeHadDreamed,
                  style: AppTextStyles.h1.copyWith(
                    color: AppColors.white,
                    fontSize: isPhoneOrTablet ? 60 : 100,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 4,
                ),
              ),
              AppGaps.gapH48,
              SizedBox(
                width: AppSizes.centeredTextContainer,
                child: Column(
                  children: [
                    AppText(
                      localize(context).aPathOfStudyAndATrainigCommunity,
                      style: AppTextStyles.p.copyWith(
                        color: AppColors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    AppGaps.gapH48,
                    const Divider(color: AppColors.grey),
                    AppGaps.gapH48,
                    AppText(
                      localize(context).sumWithoutAnyCost.toUpperCase(),
                      style: AppTextStyles.h1.copyWith(
                        color: AppColors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    AppGaps.gapH32,
                    AppFilledButton(
                      text: localize(context).whatAreYouWaitingFor,
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
                    AppText(
                      localize(context).learnToLearn,
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
        if (!isPhoneOrTablet)
          Positioned(
            bottom: -10,
            child: SvgPicture.asset('assets/images/logos/flutter_logo.svg'),
          ),
      ],
    );
  }
}
