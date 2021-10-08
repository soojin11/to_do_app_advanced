import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor myWhite = const MaterialColor(
    0xffffffff,
    const <int, Color>{
      50: Color(0x0fffffff),
      100: Color(0x1fffffff),
      200: Color(0x2fffffff),
      300: Color(0x3fffffff),
      400: Color(0x4fffffff),
      500: Color(0x5fffffff),
      600: Color(0x6fffffff),
      700: Color(0x7fffffff),
      800: Color(0x8fffffff),
      900: Color(0x9fffffff),
    },
  );

  static const MaterialColor myDarkGrey =
      const MaterialColor(0xFF121212, const <int, Color>{
    50: Color(0x0F121212),
    100: Color(0x1F121212),
    200: Color(0x2F121212),
    300: Color(0x3F121212),
    400: Color(0x4F121212),
    500: Color(0x5F121212),
    600: Color(0x6F121212),
    700: Color(0x7F121212),
    800: Color(0x8F121212),
    900: Color(0x9F121212),
  });
}
