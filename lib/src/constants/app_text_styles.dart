import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_monkslab_web/src/constants/app_colors.dart';

//TODO Continue with correction of course original and styles
class AppTextStyles {
  //* Article Headers
  static final h1Header = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.w800,
  ));

  static final descriptionHeader = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    fontSize: 19.0,
    height: 1.55,
  ));

  static final h1 = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    fontSize: 42.0,
    fontWeight: FontWeight.w800,
    height: 1.33,
    color: AppColors.black,
  ));

  static final h2 = GoogleFonts.montserrat(
    textStyle: const TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w800,
      color: AppColors.black,
    ),
  );

  static final h3 = GoogleFonts.libreCaslonText(
    textStyle: const TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w800,
      color: AppColors.black,
    ),
  );

  static final h4 = GoogleFonts.libreCaslonText(
    textStyle: const TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.w800,
      color: AppColors.black,
    ),
  );

  static final p = GoogleFonts.libreCaslonText(
      textStyle: const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
  ));

  static final li = GoogleFonts.libreCaslonText(
      textStyle: const TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
  ));

  static final caption = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    fontSize: 16.0,
    height: 1.2,
    fontWeight: FontWeight.w400,
  ));
}
