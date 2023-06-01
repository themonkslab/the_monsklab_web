import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/ui/widgets/hypertext.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class LocationLinksRowOrColumn extends StatelessWidget {
  const LocationLinksRowOrColumn({
    super.key,
    this.isRow = true,
  });
  final bool isRow;

  @override
  Widget build(BuildContext context) {
    return isRow
        ? Row(
            children: _buildLinks(context),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _buildLinks(context),
          );
  }

  List<Widget> _buildLinks(BuildContext context) {
    return <Widget>[
      LocationLink(
        text: localize(context).courses,
        onTap: () => UrlHelper.launchUrl(AppUrls.docusaurusCourses),
      ),
      LocationLink(
        text: localize(context).community,
        onTap: () async => UrlHelper.launchUrl(AppUrls.discord),
      ),
    ];
  }
}

class LocationLink extends StatelessWidget {
  const LocationLink({
    required this.text,
    this.onTap,
    super.key,
  });
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final screenType = context.getScreenType();
    final isPhoneOrTablet =
        screenType == ScreenType.phone || screenType == ScreenType.tablet;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AppHypertext(
        text: text.toUpperCase(),
        textAlign: TextAlign.center,
        style: isPhoneOrTablet
            ? AppTextStyles.barLocationLink.copyWith(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              )
            : AppTextStyles.barLocationLink.copyWith(
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
        enabledDisabledColors: const [
          AppColors.white,
          AppColors.grey,
        ],
        onTap: onTap,
      ),
    );
  }
}
