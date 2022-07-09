import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:the_monkslab_web/src/constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

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
        h1: const TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          height: 1.25,
        ),
        h1Padding: const EdgeInsets.only(bottom: 28.0),
        h2: const TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          height: 1.2,
        ),
        h2Padding: const EdgeInsets.only(top: 28.0),
        h3: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          height: 1.2,
        ),
        h3Padding: const EdgeInsets.only(top: 28.0),
        p: const TextStyle(
          fontSize: 18.0,
          height: 1.55,
        ),
        pPadding: const EdgeInsets.only(bottom: 28.0),
        code: const TextStyle(
          fontSize: 16.0,
        ),
        listIndent: 30.0,
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
