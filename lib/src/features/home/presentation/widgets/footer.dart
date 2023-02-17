import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

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
          ? Padding(
              padding: AppPaddings.padAll24,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  MonkslabDescription(),
                  AppGaps.gapH32,
                  AppSocials(iconColor: AppColors.white),
                  // TermsAndConditions(),
                ],
              ),
            )
          : Center(
              child: SizedBox(
                width: 1340,
                child: Row(
                  children: [
                    //* Footer left
                    const Expanded(
                      child: Center(
                        child: SizedBox(
                          width: 280,
                          child: MonkslabDescription(),
                        ),
                      ),
                    ),
                    //* Footer right
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: AppColors.darkerGrey,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(
                                child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 24.0,
                                horizontal: 34.0,
                              ),
                              child: LocationLinksRowOrColumn(isRow: false),
                            ),),
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      color: AppColors.darkerGrey,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 48.0,),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Terms and Conditions',
          style: AppTextStyles.caption.copyWith(
            color: AppColors.white,
            fontSize: 12,
          ),
        ),
        Text(
          'Privacy Policy',
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
    Key? key,
  }) : super(key: key);

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
            'Un grupo de amigos que disfruta de hacer las cosas mejor cada vez pero que al mismo tiempo, quiere transmitir a otros todo lo aprendido, dar posibilidades y hacer de este mundo con cada granito de código, un mundo mejor.',
            style: AppTextStyles.p.copyWith(
              color: AppColors.white,
              fontSize: 14,
            ),
          )
        ],);
  }
}
