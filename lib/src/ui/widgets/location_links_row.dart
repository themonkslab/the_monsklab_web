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

class LocationLink extends StatefulWidget {
  const LocationLink({
    required this.text,
    this.onTap,
    super.key,
  });
  final String text;
  final void Function()? onTap;

  @override
  State<LocationLink> createState() => _LocationLinkState();
}

class _LocationLinkState extends State<LocationLink>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _shadowAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )..addListener(() {
        setState(() {});
      });

    _shadowAnimation = Tween<double>(
      begin: 0,
      end: 12,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
      ),
    );
  }

  _onHover(bool isHovered) {
    if (isHovered) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenType = context.getScreenType();
    final isPhoneOrTablet =
        screenType == ScreenType.phone || screenType == ScreenType.tablet;

    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: AppHypertext(
          text: widget.text.toUpperCase(),
          textAlign: TextAlign.center,
          style: isPhoneOrTablet
              ? AppTextStyles.barLocationLink.copyWith(
                  color: AppColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  shadows: [
                    Shadow(
                      color: AppColors.white,
                      blurRadius: _shadowAnimation.value,
                    ),
                  ],
                )
              : AppTextStyles.barLocationLink.copyWith(
                  color: AppColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  shadows: [
                    Shadow(
                      color: AppColors.white,
                      blurRadius: _shadowAnimation.value,
                    ),
                  ],
                ),
          enabledDisabledColors: const [
            AppColors.white,
            AppColors.grey,
          ],
          onTap: widget.onTap,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
