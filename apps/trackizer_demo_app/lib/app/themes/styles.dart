// Some common design system categories that can be represented this way are:
//
// - Animation timings
// - Sizes and breakpoints
// - Insets and paddings
// - Corner radius
// - Shadows
// - Strokes
// - Font families, sizes, and styles

import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

/// Insets styles for margins and paddings
class Insets {
  ///
  static const double xsmall = 3;

  ///
  static const double small = 4;

  ///
  static const double medium = 5;

  ///
  static const double large = 10;

  ///
  static const double extraLarge = 20;
}

///
class Fonts {
  ///
  static const String raleway = 'Raleway';
}

///
class CustomColors {
  ///
  static Color gray100 = const Color(0xFF0E0E12);

  ///
  static Color gray80 = const Color(0xFF1C1C23);

  ///
  static Color gray70 = const Color(0xFF353542);

  ///
  static Color gray60 = const Color(0xFF4E4E61);

  ///
  static Color gray50 = const Color(0xFF666680);

  ///
  static Color gray40 = const Color(0xFF83839C);

  ///
  static Color gray30 = const Color(0xFFA2A2B5);

  ///
  static Color gray20 = const Color(0xFFC1C1CD);

  ///
  static Color gray10 = const Color(0xFFE0E0E6);

  ///
  static Color white = const Color(0xFFFFFFFF);

  ///
  static Color primary100 = const Color(0xFF5E00F5);

  ///
  static Color primary50 = const Color(0xFF7722FF);

  ///
  static Color primary20 = const Color(0xFF924EFF);

  ///
  static Color primary10 = const Color(0xFFAD7BFF);

  ///
  static Color primary05 = const Color(0xFFC9A7FF);

  ///
  static Color primary0 = const Color(0xFFC9A7FF);

  ///
  static Color accentPrimary100 = const Color(0xFFC9A7FF);

  ///
  static Color accentPrimary50 = const Color(0xFFFFA699);

  ///
  static Color accentPrimary0 = const Color(0xFFFFA699);

  ///
  static Color accentSecondary100 = const Color(0xFF00FAD9);

  ///
  static Color accentSecondary50 = const Color(0xFF7DFFEE);
}

///
class TextStyles {
  ///
  static TextStyle display = GoogleFonts.inter(
    fontSize: 72,
    fontWeight: FontWeight.bold,
  );

  ///
  static TextStyle headline8 = GoogleFonts.inter(
    fontSize: 56,
    fontWeight: FontWeight.bold,
  );

  ///
  static TextStyle headline7 = GoogleFonts.inter(
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );

  ///
  static TextStyle headline6 = GoogleFonts.inter(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  ///
  static TextStyle headline5 = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  ///
  static TextStyle headline4 = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  ///
  static TextStyle headline3 = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600, // SemiBold
  );

  ///
  static TextStyle headline2 = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w600, // SemiBold
  );

  ///
  static TextStyle headline1 = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w600, // SemiBold
  );

  ///
  static TextStyle subtitle = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w500, // Medium
  );

  ///
  static TextStyle bodyLarge = GoogleFonts.inter(
    fontSize: 16,
  );

  ///
  static TextStyle bodyMedium = GoogleFonts.inter(
    fontSize: 14,
  );

  ///
  static TextStyle bodySmall = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w500, // Medium
  );
}
