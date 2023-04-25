import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/core/_index.dart';
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
              ),
              LocationLink(
                text: localize(context).courses,
                onTap: () => context.beamToNamed(
                  '/${context.read<LocaleCubit>().state.locale.languageCode}/${AppRoutes.archive.name}',
                ),
              ),
              LocationLink(
                text: localize(context).community,
                onTap: () async => UrlHelper.launchUrl(AppUrls.discord),
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              LocationLink(
                text: localize(context).jobs,
              ),
              LocationLink(
                text: localize(context).courses,
                onTap: () => context.beamToNamed('/${AppRoutes.archive.name}'),
              ),
              LocationLink(
                text: localize(context).community,
                onTap: () async => UrlHelper.launchUrl(AppUrls.discord),
              ),
            ],
          );
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
    final isPhoneOrTablet = screenType == ScreenType.phone || screenType == ScreenType.tablet;

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
