import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

class Bar extends StatelessWidget {
  const Bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.darkerGrey),
        ),
      ),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              width: AppSizes.largeContentContainer,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                      'assets/images/logos/monsklab_logo_on_red_circle.svg'),
                  const LocationLinksRowOrColumn()
                ],
              ),
            ),
            AppGaps.gapH12,
          ],
        ),
      ),
    );
  }
}
