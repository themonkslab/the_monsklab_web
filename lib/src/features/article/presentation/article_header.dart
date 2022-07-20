import 'package:flutter/material.dart';
import 'package:the_monkslab_web/src/constants/index.dart';
import 'package:the_monkslab_web/src/ui/index.dart';

class ArticleHeader extends StatelessWidget {
  const ArticleHeader({
    required this.author,
    Key? key,
  }) : super(key: key);
  final AppAuthor author;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        // removed for minimalistic purposes
        // AppProfilePhoto(
        //   author: author,
        // ),
        gapW16,
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(author.name, style: textTheme.titleSmall),
            Text('June 27 · 3 min read', style: textTheme.bodyMedium),
          ],
        )
      ],
    );
  }
}
