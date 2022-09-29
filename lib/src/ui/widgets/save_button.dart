import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/ui/_index.dart';

class AppSaveButton extends StatelessWidget {
  const AppSaveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape: const StadiumBorder(),
          side: const BorderSide(width: 1, color: AppColors.grey)),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Icon(
              Icons.bookmark_add_outlined,
              color: AppColors.grey,
            ),
            AppGaps.gapW8,
            Text(
              'Save',
              style: textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
