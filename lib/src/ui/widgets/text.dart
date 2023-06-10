import 'package:flutter/material.dart';
import 'package:seo/seo.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.selectionColor,
    this.strutStyle,
    this.textHeightBehavior,
    this.textWidthBasis,
    super.key,
  });
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final Color? selectionColor;
  final StrutStyle? strutStyle;
  final TextHeightBehavior? textHeightBehavior;
  final TextWidthBasis? textWidthBasis;

  @override
  Widget build(BuildContext context) {
    return Seo.text(
      text: text,
      child: Text(
        text,
        style: style,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        selectionColor: selectionColor,
        strutStyle: strutStyle,
        textHeightBehavior: textHeightBehavior,
        textWidthBasis: textWidthBasis,
      ),
    );
  }
}
