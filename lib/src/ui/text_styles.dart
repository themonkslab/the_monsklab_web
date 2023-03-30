import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_monkslab_web/src/ui/colors.dart';

class AppTextStyles {
  //* Phone
  static final h1HeaderPhone = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w800,
  ),);

  static final descriptionHeaderPhone = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    fontSize: 19,
    height: 1.55,
  ),);

  static final h2Phone = GoogleFonts.montserrat(
    textStyle: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w800,
      color: AppColors.black,
    ),
  );

  static final h3Phone = GoogleFonts.sourceSerifPro(
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w800,
      color: AppColors.black,
    ),
  );

  //* Tablet, Desktop or Large
  static final h1Header = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    fontSize: 100,
    fontWeight: FontWeight.w700,
  ),);

  static final descriptionHeader = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    fontSize: 20,
    height: 1.55,
  ),);

  static final h1 = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.w800,
    height: 1.33,
    color: AppColors.black,
  ),);

  static final h2 = GoogleFonts.montserrat(
    textStyle: const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w800,
      color: AppColors.black,
    ),
  );

  static final h3 = GoogleFonts.sourceSerifPro(
    textStyle: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w800,
      color: AppColors.black,
    ),
  );

  static final h4 = GoogleFonts.sourceSerifPro(
    textStyle: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w800,
      color: AppColors.black,
    ),
  );

  static final pLarge = GoogleFonts.sourceSerifPro(
      textStyle: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    height: 1.6,
  ),);

  static final p = GoogleFonts.sourceSerifPro(
      textStyle: const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 1.4,
  ),);

  static final code = GoogleFonts.robotoMono(
      textStyle: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  ),);

  static final li = GoogleFonts.sourceSerifPro(
      textStyle: const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  ),);

  static final caption = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    fontSize: 16,
    height: 1.2,
    fontWeight: FontWeight.w400,
  ),);

  static final captionMini = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    fontSize: 12,
    height: 1.2,
    fontWeight: FontWeight.w700,
  ),);

  static final hypertext = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  ),);

  static final barLocationLink = GoogleFonts.montserrat(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
    ),
  );
}
