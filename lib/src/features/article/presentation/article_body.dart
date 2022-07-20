import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/index.dart';

class ArticleBody extends StatelessWidget {
  const ArticleBody({Key? key, required this.data}) : super(key: key);

  final String data;
  @override
  Widget build(BuildContext context) {
    return MarkdownBody(
      onTapLink: (text, href, title) {
        href != null ? launchUrl(Uri.parse(href)) : null;
      },
      data: data,
      styleSheet: MarkdownStyleSheet(
        h1: AppTextStyles.h1,
        h1Padding: const EdgeInsets.only(bottom: 28.0),
        h2: AppTextStyles.h2,
        h2Padding: const EdgeInsets.only(top: 28.0),
        h3: AppTextStyles.h3,
        h3Padding: const EdgeInsets.only(top: 28.0),
        h4: AppTextStyles.h4,
        h4Padding: const EdgeInsets.only(top: 28.0),
        p: AppTextStyles.p,
        pPadding: const EdgeInsets.only(bottom: 28.0),
        listBullet: AppTextStyles.li,
        code: const TextStyle(fontSize: 16.0),
        horizontalRuleDecoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: AppColors.grey,
          ),
        ),
      ),
    );
  }
}
