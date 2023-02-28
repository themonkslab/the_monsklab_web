import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_monkslab_web/src/features/_index.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

class Bar extends StatefulWidget {
  const Bar({
    required this.isPhoneOrTablet,
    super.key,
  });

  final bool isPhoneOrTablet;

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> with TickerProviderStateMixin {
  bool _isMenuOpened = false;
  final rowHeight = 60.0;

  late Animation<double> _myAnimation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _myAnimation = CurvedAnimation(curve: Curves.linear, parent: _controller);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.darkerGrey),
        ),
      ),
      child: Center(
        child: Padding(
          padding: widget.isPhoneOrTablet ? AppPaddings.padH4 : AppPaddings.padAll0,
          child: Column(
            children: [
              AppGaps.gapH12,
              Stack(
                children: [
                  if (widget.isPhoneOrTablet)
                    SizedBox(
                      height: rowHeight,
                      child: Row(
                        mainAxisAlignment: _isMenuOpened ? MainAxisAlignment.spaceBetween : MainAxisAlignment.end,
                        children: [
                          if (_isMenuOpened) const Center(child: LocationLinksRowOrColumn()),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (!_isMenuOpened) {
                                  _controller.forward();
                                } else {
                                  _controller.reverse();
                                }

                                _isMenuOpened = !_isMenuOpened;
                              });
                            },
                            child: AnimatedIcon(
                              icon: AnimatedIcons.menu_close,
                              color: AppColors.white,
                              progress: _myAnimation,
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (!_isMenuOpened)
                    SizedBox(
                      width: AppSizes.largeContentContainer,
                      height: rowHeight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/images/logos/monsklab_logo_on_red_circle.svg',
                          ),
                          if (!widget.isPhoneOrTablet) const LocationLinksRowOrColumn(),
                          const LanguageSwitcherDropDown(),
                        ],
                      ),
                    ),
                ],
              ),
              AppGaps.gapH12,
            ],
          ),
        ),
      ),
    );
  }
}
