import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/locale.dart';

class Footer extends StatelessWidget {
  const Footer({
    required this.isPhoneOrTablet,
    super.key,
  });

  final bool isPhoneOrTablet;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: isPhoneOrTablet ? 600 : 300,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.black,
      ),
      child: isPhoneOrTablet
          ? const Padding(
              padding: AppPaddings.padAll24,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MonkslabDescription(),
                  AppGaps.gapH32,
                  AppSocials(iconColor: AppColors.white),
                  // TermsAndConditions(),
                ],
              ),
            )
          : const Center(
              child: SizedBox(
                width: 1340,
                child: Row(
                  children: [
                    //* Footer left
                    Expanded(
                      child: Center(
                        child: SizedBox(
                          width: 280,
                          child: MonkslabDescription(),
                        ),
                      ),
                    ),
                    //* Footer right
                    Expanded(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: AppColors.darkerGrey,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 24,
                                  horizontal: 34,
                                ),
                                child: LocationLinksRowOrColumn(isRow: false),
                              ),
                            ),
                            Expanded(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      color: AppColors.darkerGrey,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 48,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TermsAndConditions(),
                                        AppSocials(
                                          iconColor: AppColors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
      // child:
    );
  }
}

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          localize(context).termsAndConditions,
          style: AppTextStyles.caption.copyWith(
            color: AppColors.white,
            fontSize: 12,
          ),
        ),
        Text(
          localize(context).privacyPolicy,
          style: AppTextStyles.caption.copyWith(
            color: AppColors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class MonkslabDescription extends StatelessWidget {
  const MonkslabDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'The Monkslab'.toUpperCase(),
          style: AppTextStyles.h1.copyWith(
            fontSize: 20,
            color: AppColors.white,
          ),
        ),
        AppGaps.gapH16,
        Text(
          localize(context).aGroupOfFriendWhoEnjoyImproveThemself,
          style: AppTextStyles.p.copyWith(
            color: AppColors.white,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
