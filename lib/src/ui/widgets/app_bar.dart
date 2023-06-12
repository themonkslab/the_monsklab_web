import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/ui/widgets/_index.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    this.title,
    this.actions,
    this.backgroundColor,
    this.leading,
    this.elevation,
    this.titleColor = AppColors.black,
    this.showSocials = false,
    super.key,
  });

  final String? title;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Color? titleColor;
  final bool showSocials;
  final Widget? leading;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.white,
      elevation: elevation,
      leading: leading ??
          AppOnHover(
            child: GestureDetector(
              onTap: () {},
              child: const Image(
                width: 16,
                height: 16,
                image: AssetImage(AppAssets.monkslabNoBackground),
              ),
            ),
          ),
      title: title != null
          ? SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppText(
                    title!,
                    style: AppTextStyles.h2.copyWith(color: titleColor),
                  ),
                ],
              ),
            )
          : const SizedBox.shrink(),
      actions: [
        ...?actions,
        if (showSocials) const AppSocials(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}
