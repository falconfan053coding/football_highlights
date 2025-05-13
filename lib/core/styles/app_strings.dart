import 'package:flutter/material.dart';

/// App Strings
class AppStrings {
  /// Fonts
  static const String inter = "Inter";

  /// Text styles
  static TextStyle interThin({double fontSize = 14}) {
    return TextStyle(
      fontFamily: inter,
      fontWeight: FontWeight.w100,
      fontSize: fontSize,
    );
  }

  static TextStyle interExtraLight({double fontSize = 14}) {
    return TextStyle(
      fontFamily: inter,
      fontWeight: FontWeight.w200,
      fontSize: fontSize,
    );
  }

  static TextStyle interLight({double fontSize = 14}) {
    return TextStyle(
      fontFamily: inter,
      fontWeight: FontWeight.w300,
      fontSize: fontSize,
    );
  }

  static TextStyle interRegular({double fontSize = 14}) {
    return TextStyle(
      fontFamily: inter,
      fontWeight: FontWeight.w400,
      fontSize: fontSize,
    );
  }

  static TextStyle interMedium({double fontSize = 16}) {
    return TextStyle(
      fontFamily: inter,
      fontWeight: FontWeight.w500,
      fontSize: fontSize,
    );
  }

  static TextStyle interSemiBold({double fontSize = 18}) {
    return TextStyle(
      fontFamily: inter,
      fontWeight: FontWeight.w600,
      fontSize: fontSize,
    );
  }

  static TextStyle interBold({double fontSize = 18}) {
    return TextStyle(
      fontFamily: inter,
      fontWeight: FontWeight.w700,
      fontSize: fontSize,
    );
  }

  static TextStyle interExtraBold({double fontSize = 20}) {
    return TextStyle(
      fontFamily: inter,
      fontWeight: FontWeight.w800,
      fontSize: fontSize,
    );
  }

  static TextStyle interBlack({double fontSize = 24}) {
    return TextStyle(
      fontFamily: inter,
      fontWeight: FontWeight.w900,
      fontSize: fontSize,
    );
  }
}
