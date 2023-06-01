import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class HireUs extends StatelessWidget {
  const HireUs({
    required this.isPhoneOrTablet,
    super.key,
  });

  final bool isPhoneOrTablet;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.secondaryLight,
        border: Border.all(color: AppColors.black),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 48),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      localize(context)
                          .doesYourBusinessNeedHighLevelFlutterDevelopment
                          .toUpperCase(),
                      textAlign: TextAlign.start,
                      style: AppTextStyles.h1.copyWith(
                        fontSize: 20,
                        color: AppColors.white,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    AppGaps.gapH20,
                    Text(
                      localize(context).weTrainTopLevelDevelopers,
                      textAlign: TextAlign.start,
                      style: AppTextStyles.p,
                    ),
                    AppGaps.gapH24,
                    AppFilledButton(
                      text: localize(context).hireUs,
                      onTap: () => UrlHelper.launchUrl(
                          'https://www.linkedin.com/in/the-monkslab-the-monkslab-0b61aa260/'),
                    ),
                  ],
                ),
              ),
            ),
            if (!isPhoneOrTablet) AppGaps.gapW64,
            if (!isPhoneOrTablet)
              SvgPicture.asset(
                'assets/images/logos/dart_logo.svg',
                height: 480,
                fit: BoxFit.cover,
              )
          ],
        ),
      ),
    );
  }
}
