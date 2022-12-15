import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:the_monkslab_web/src/ui/sizes.dart';

import '../../../constants/_index.dart';

CustomRenderMatcher codeMatcher() => (context) =>
    context.tree.element?.attributes['class']?.contains('language-dart') ??
    false;

class ArticleBody extends StatelessWidget {
  const ArticleBody({Key? key, required this.data}) : super(key: key);

  final String data;
  @override
  Widget build(BuildContext context) {
    final htmlData = md.markdownToHtml(data);
    return Padding(
      padding: AppPaddings.padAll12,
      child: Html(
        data: htmlData,
        customRenders: {
          codeMatcher(): CustomRender.widget(widget: ((context, _) {
            final dataText = context.tree.element!.innerHtml
                .replaceAll('&lt;', '<')
                .replaceAll('&gt;', '>');

            return Stack(
              children: [
                //* Code
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 5,
                          blurRadius: 10,
                        )
                      ]),
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
          })),
        },
        style: {
          'h1': Style.fromTextStyle(AppTextStyles.h1),
          'h2': Style.fromTextStyle(AppTextStyles.h2),
          'h3': Style.fromTextStyle(AppTextStyles.h3),
          'h4': Style.fromTextStyle(AppTextStyles.h4),
          'p': Style.fromTextStyle(AppTextStyles.p),
          'li': Style.fromTextStyle(AppTextStyles.li),
        },
      ),
    );
  }
}
