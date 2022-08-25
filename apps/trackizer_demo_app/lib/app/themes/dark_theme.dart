import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trackizer_demo_app/app/themes/styles.dart';

/// Dark theme
class DarkTheme {
  /// ThemeData for Dark theme
  static ThemeData data = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFF2672E),
      brightness: Brightness.dark,
      background: CustomColors.gray80,
      primary: const Color(0xFFF2672E),
      onPrimary: Colors.white,
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      bodyText1: GoogleFonts.inderTextTheme().bodyText1!.copyWith(
            color: Colors.white,
          ),
      bodyText2: GoogleFonts.inderTextTheme().bodyText2!.copyWith(
            color: Colors.white,
          ),
      button: GoogleFonts.inderTextTheme().button!.copyWith(
            color: Colors.white,
          ),
    ),
    // ).copyWith(
    //   textButtonTheme: TextButtonThemeData(
    //     style: ButtonStyle(
    //       textStyle: MaterialStateProperty.resolveWith(
    //         (states) => const TextStyle(fontSize: 44),
    //       ),
    //     ),
    //   ),
  );
}
