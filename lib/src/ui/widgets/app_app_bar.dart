import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_monkslab_web/src/constants/index.dart';
import 'package:the_monkslab_web/src/routing/index.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    Key? key,
    this.title,
    this.actions,
    this.backgroundColor,
    this.titleColor,
  }) : super(key: key);

  final String? title;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.white,
      // TODO Continue: add animation and hover effect
      leading: GestureDetector(
        onTap: () => context.goNamed(AppRoute.home.name),
        child: const Image(
          image: AssetImage(AppAssets.monkslabNoBackground),
        ),
      ),
      title: title != null
          ? Text(
              title!,
              style: TextStyle(color: titleColor ?? AppColors.darkText),
            )
          : const SizedBox.shrink(),
      actions: actions ?? [],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}
