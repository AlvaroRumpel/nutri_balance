import 'package:flutter/material.dart';

extension AppColors on Colors {
  static const Map<int, Color> _primaryColor = {
    50: Color(0xFFE8F4ED),
    100: Color(0xFFC6E3D2),
    200: Color(0xFFA0D0B4),
    300: Color(0xFF79BD96),
    400: Color(0xFF5DAF80),
    500: Color(0xFF40A169),
    600: Color(0xFF3A9961),
    700: Color(0xFF328F56),
    800: Color(0xFF2A854C),
    900: Color(0xFF1C743B),
  };

  static const Map<int, Color> _blueColor = {
    50: Color(0xFFEDF4F9),
    100: Color(0xFFD1E3F0),
    200: Color(0xFFB3D0E7),
    300: Color(0xFF95BDDD),
    400: Color(0xFF7EAED5),
    500: Color(0xFF67A0CE),
    600: Color(0xFF5F98C9),
    700: Color(0xFF548EC2),
    800: Color(0xFF4A84BC),
    900: Color(0xFF3973B0),
  };

  static const Map<int, Color> _whiteColor = {
    50: Color(0xFFFEFEFE),
    100: Color(0xFFFCFCFC),
    200: Color(0xFFFBFBFB),
    300: Color(0xFFF9F9F9),
    400: Color(0xFFF7F7F7),
    500: Color(0xFFF6F6F6),
    600: Color(0xFFF5F5F5),
    700: Color(0xFFF3F3F3),
    800: Color(0xFFF2F2F2),
    900: Color(0xFFEFEFEF),
  };

  static const Map<int, Color> _redColor = {
    50: Color(0xFFFFE4E4),
    100: Color(0xFFFFC4C4),
    200: Color(0xFFFF9B9B),
    300: Color(0xFFFF7070),
    400: Color(0xFFFF4D4D),
    500: Color(0xFFD12F2F),
    600: Color(0xFFB91E1E),
    700: Color(0xFFA11414),
    800: Color(0xFF8F0A0A),
    900: Color(0xFF6F0000),
  };

  static const Map<int, Color> _blackColor = {
    50: Color(0xFFE6E6E6),
    100: Color(0xFFC1C1C1),
    200: Color(0xFF989898),
    300: Color(0xFF6E6E6E),
    400: Color(0xFF4F4F4F),
    500: Color(0xFF303030),
    600: Color(0xFF2B2B2B),
    700: Color(0xFF242424),
    800: Color(0xFF1E1E1E),
    900: Color(0xFF131313),
  };

  static const Map<int, Color> _yellowColor = {
    50: Color(0xFFFFF6D9),
    100: Color(0xFFFFE6B2),
    200: Color(0xFFFFD48C),
    300: Color(0xFFFFC066),
    400: Color(0xFFFFB34D),
    500: Color(0xFFCEB429),
    600: Color(0xFFB39424),
    700: Color(0xFF9E841F),
    800: Color(0xFF89731A),
    900: Color(0xFF6D5F12),
  };

  static const primary = MaterialColor(0xFF40A169, _primaryColor);
  static const blue = MaterialColor(0xFF67A0CE, _blueColor);
  static const white = MaterialColor(0xFFF6F6F6, _whiteColor);
  static const red = MaterialColor(0xFFD12F2F, _redColor);
  static const black = MaterialColor(0xFF303030, _blackColor);
  static const yellow = MaterialColor(0xFFCEB429, _yellowColor);
}
