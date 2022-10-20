import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:the_monkslab_web/src/ui/sizes.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/_index.dart';

class ArticleBody extends StatelessWidget {
  const ArticleBody({Key? key, required this.data}) : super(key: key);

  final String data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: MarkdownBody(
        onTapLink: (text, href, title) {
          href != null ? launchUrl(Uri.parse(href)) : null;
        },
        data: data,
        styleSheet: MarkdownStyleSheet(
          h1: AppTextStyles.h1,
          h1Padding: const EdgeInsets.symmetric(vertical: 28.0),

          /// alignment does not work
          // h1Align: WrapAlignment.center,
          h2: AppTextStyles.h2,
          h2Padding: const EdgeInsets.only(top: 28.0),
          h3: AppTextStyles.h3,
          h3Padding: const EdgeInsets.only(top: 28.0),
          h4: AppTextStyles.h4,
          h4Padding: const EdgeInsets.only(top: 28.0),
          p: AppTextStyles.p,
          pPadding: const EdgeInsets.only(bottom: 28.0),
          blockquotePadding: AppPaddings.padAll32,
          listBullet: AppTextStyles.li,
          code: const TextStyle(fontSize: 16.0),
          horizontalRuleDecoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: AppColors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
