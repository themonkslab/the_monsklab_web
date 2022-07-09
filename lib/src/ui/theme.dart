import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      brightness: Brightness.light,

      //* AppBar
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black,
          )),
      //* Texts
      textTheme: GoogleFonts.interTextTheme(
        const TextTheme(
          titleSmall: TextStyle(
            fontSize: 16.0,
            height: 1.5,
          ),
          labelSmall: TextStyle(
            fontSize: 14.0,
            height: 1.5,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData();
  }
}
