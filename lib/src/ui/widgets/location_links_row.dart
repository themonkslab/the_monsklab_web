import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/core/routing/routing.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';
import 'package:the_monkslab_web/src/ui/widgets/hypertext.dart';
import 'package:the_monkslab_web/src/utils/_index.dart';

class LocationLinksRow extends StatelessWidget {
  const LocationLinksRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LocationLink(text: 'Jobs', location: '/${AppRoutes.archive.name}'),
        LocationLink(text: 'Cursos', location: '/${AppRoutes.archive.name}'),
        LocationLink(text: 'Comunidad', location: '/${AppRoutes.archive.name}'),
        LocationLink(text: 'Hola!', location: '/${AppRoutes.archive.name}'),
      ],
    );
  }
}

class LocationLink extends StatelessWidget {
  const LocationLink({
    required this.text,
    required this.location,
    super.key,
  });
  final String text;
  final String location;

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
          AppColors.black,
          AppColors.grey,
        ],
        onPressed: () => context.beamToNamed(location),
      ),
    );
  }
}
