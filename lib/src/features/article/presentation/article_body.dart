import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:the_monkslab_web/src/constants/_index.dart';
import 'package:the_monkslab_web/src/ui/sizes.dart';
import 'package:url_launcher/url_launcher.dart';

CustomRenderMatcher codeMatcher() => (context) =>
    context.tree.element?.attributes['class']?.contains('language-dart') ??
    false;
CustomRenderMatcher liMatcher() =>
    (context) => context.tree.element?.localName == 'li';

class ArticleBody extends StatelessWidget {
  const ArticleBody({
    required this.data,
    super.key,
  });

  final String data;
  @override
  Widget build(BuildContext context) {
    final htmlData = md.markdownToHtml(data);
    return Padding(
      padding: AppPaddings.padAll12,
      child: Html(
        onLinkTap: (url, context, attributes, element) async {
          if (url != null) {
            final parsedUrl = Uri.parse(url);
            if (await canLaunchUrl(parsedUrl)) {
              launchUrl(parsedUrl);
            }
            throw Exception("canLaunchUrl didn't work");
          } else {
            throw Exception('url is null');
          }
        },
        data: htmlData,
        customRenders: {
          //TODO -HIGH-: fix bulleted list height
          // liMatcher(): CustomRender.widget(
          //   widget: (_, list) {
          //     TextSpan(children: list());
          //     return Container(
          //       height: 20,
          //       width: 20,
          //       color: Colors.yellow,
          //     );
          //   },
          // ),
          codeMatcher(): CustomRender.widget(
            widget: (context, _) {
              final dataText = context.tree.element!.innerHtml
                  .replaceAll('&lt;', '<')
                  .replaceAll('&gt;', '>');

              return Stack(
                children: [
                  //* Code
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 5,
                          blurRadius: 10,
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: HighlightView(
                        dataText,
                        language: 'dart',
                        theme: darculaTheme,
                        textStyle: AppTextStyles.code,
                        padding: AppPaddings.padAll40.copyWith(bottom: 24),
                      ),
                    ),
                  ),
                  //* Copy button
                  Positioned(
                    top: 8,
                    right: 8,
                    child: IconButton(
                      onPressed: () async {
                        await Clipboard.setData(ClipboardData(text: dataText));
                      },
                      icon: const Icon(Icons.copy_rounded),
                      color: const Color.fromARGB(255, 249, 217, 130),
                    ),
                  ),
                ],
              );
            },
          ),
        },
        style: {
          'h1': Style.fromTextStyle(AppTextStyles.h1).copyWith(
            margin: Margins.symmetric(
              horizontal: 0,
              vertical: 0,
            ),
          ),
          'h2': Style.fromTextStyle(AppTextStyles.h2).copyWith(
            margin: Margins.only(
              top: 24,
              bottom: 8,
            ),
          ),
          'h3': Style.fromTextStyle(AppTextStyles.h3).copyWith(
            margin: Margins.only(
              top: 0,
              bottom: 8,
            ),
          ),
          'h4': Style.fromTextStyle(AppTextStyles.h4),
          'p': Style.fromTextStyle(AppTextStyles.p).copyWith(
            margin: Margins.only(bottom: 16),
          ),
          'li': Style.fromTextStyle(AppTextStyles.li)
              .copyWith(margin: Margins.only(bottom: 8)),
          'code': Style.fromTextStyle(AppTextStyles.inlineCode)
              .copyWith(margin: Margins.only(bottom: 8)),
        },
      ),
    );
  }
}
