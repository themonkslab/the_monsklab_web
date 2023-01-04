import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

class AppFilledButton extends StatelessWidget {
  const AppFilledButton({
    required this.text,
    this.onTap,
    super.key,
  });

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: AppPaddings.padH24 + AppPaddings.padV12,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.white),
            borderRadius: BorderRadius.circular(25),
            color: onTap != null ? AppColors.primaryDark : AppColors.grey,
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                spreadRadius: 2,
                offset: const Offset(0, 0),
                color: AppColors.black10,
              )
            ],
          ),
          child: Text(
            text,
            style: AppTextStyles.captionMini
                .copyWith(color: AppColors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
