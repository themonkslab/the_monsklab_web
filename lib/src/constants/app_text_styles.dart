import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//TODO Continue with correction of course original and styles
class AppTextStyles {
  static final h1 = GoogleFonts.sarabun(
      textStyle: const TextStyle(
    fontSize: 80.0,
    fontWeight: FontWeight.bold,
    letterSpacing: -6,
  ));

  static final h2 = GoogleFonts.sarabun(
    textStyle: const TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.w700,
      letterSpacing: -1,
      color: Colors.black,
    ),
  );

  static final h3 = GoogleFonts.sarabun(
      textStyle: const TextStyle(
    fontSize: 30.0,
  ));

  static final h4 = GoogleFonts.sarabun(
      textStyle: const TextStyle(
    fontSize: 22.0,
  ));

  static final p = GoogleFonts.montserrat(
      textStyle: const TextStyle(
    fontSize: 20.0,
    height: 1.2,
    fontWeight: FontWeight.w400,
  ));

  static final li = GoogleFonts.montserrat(
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
