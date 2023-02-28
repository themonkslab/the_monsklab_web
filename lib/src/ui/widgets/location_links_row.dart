import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/core/routing/routing.dart';
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
            children: [
              LocationLink(
                text: localize(context).jobs,
                onPressed: () async => await UrlHelper.launchUrl(AppUrls.torcApplyForJobs),
              ),
              LocationLink(
                text: localize(context).courses,
                onPressed: () => context.beamToNamed('/${AppRoutes.archive.name}'),
              ),
              LocationLink(
                text: localize(context).community,
                onPressed: () async => await UrlHelper.launchUrl(AppUrls.torcsDiscord),
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              LocationLink(
                text: localize(context).jobs,
                onPressed: () async => await UrlHelper.launchUrl(AppUrls.torcApplyForJobs),
              ),
              LocationLink(
                text: localize(context).courses,
                onPressed: () => context.beamToNamed('/${AppRoutes.archive.name}'),
              ),
              LocationLink(
                text: localize(context).community,
                onPressed: () async => await UrlHelper.launchUrl(AppUrls.torcsDiscord),
              ),
            ],
          );
  }
}

class LocationLink extends StatelessWidget {
  const LocationLink({
    required this.text,
    this.onPressed,
    super.key,
  });
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final screenType = context.getScreenType();
    final isPhoneOrTablet = screenType == ScreenType.phone || screenType == ScreenType.tablet;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
        onPressed: onPressed,
      ),
    );
  }
}
