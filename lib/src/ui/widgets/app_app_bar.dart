import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/index.dart';
import 'package:the_monkslab_web/src/ui/widgets/index.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    Key? key,
    required this.title,
    this.actions,
    this.backgroundColor,
    this.titleColor,
    this.leading,
    this.showSocials = false,
  }) : super(key: key);

  final String title;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Color? titleColor;
  final bool showSocials;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.white,
      leading: leading ??
          AppOnHover(
            child: GestureDetector(
              // onTap: () => context.goNamed(AppRoute.home.name),
              child: const Image(
                width: 16,
                height: 16,
                image: AssetImage(AppAssets.monkslabNoBackground),
              ),
            ),
          ),
      title: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: AppTextStyles.h2,
            ),
          ],
        ),
      ),
      actions: [
        ...?actions,
        if (showSocials) const AppSocials(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}
