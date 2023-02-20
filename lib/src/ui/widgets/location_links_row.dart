import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/core/routing/routing.dart';
import 'package:the_monkslab_web/src/ui/widgets/hypertext.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationLinksRowOrColumn extends StatelessWidget {
  const LocationLinksRowOrColumn({
    super.key,
    this.isRow = true,
  });
  final isRow;

  @override
  Widget build(BuildContext context) {
    return isRow
        ? Row(
            children: [
              LocationLink(
                  text: localize(context).jobs, onPressed: () async => await _launchUrl(torcApplyForJobs),),
              LocationLink(
                  text: localize(context).courses, onPressed: () => context.beamToNamed('/${AppRoutes.archive.name}'),),
              LocationLink(
                  text: localize(context).community, onPressed: () async => await _launchUrl(torcsDiscord),),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              LocationLink(
                  text: localize(context).jobs, onPressed: () async => await _launchUrl(torcApplyForJobs),),
              LocationLink(
                  text: localize(context).courses, onPressed: () => context.beamToNamed('/${AppRoutes.archive.name}'),),
              LocationLink(
                  text: localize(context).community, onPressed: () async => await _launchUrl(torcsDiscord),),
            ],
          );
  }

  Future<void> _launchUrl(String url) async {
    final Uri urlUri = Uri.parse(url);
    if (!await launchUrl(urlUri)) {
      throw Exception('Could not launch $urlUri');
    }
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
    final isPhoneOrTablet =
        screenType == ScreenType.phone || screenType == ScreenType.tablet;

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
