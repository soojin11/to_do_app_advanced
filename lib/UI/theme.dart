import 'package:flutter/material.dart';
import 'package:flutter_todo_app/material_color.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

const Color bluishClr = Color(0xFF4e5ae8);
const Color yellowClr = Color(0xFFFFB746);
const Color pinkClr = Color(0xFFff4667);
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final light =
      ThemeData(primarySwatch: Palette.myWhite, brightness: Brightness.light);
  static final dark =
      ThemeData(primarySwatch: Palette.myDarkGrey, brightness: Brightness.dark);
}

TextStyle get subHeadingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      color: Get.isDarkMode ? Colors.grey[400] : Colors.grey);
}

TextStyle get headingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      color: Get.isDarkMode ? Colors.white : Colors.black);
}

TextStyle get titleStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
      color: Get.isDarkMode ? Colors.white : Colors.black);
}

TextStyle get subTitleStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      color: Get.isDarkMode ? Colors.grey[100] : Colors.grey[600]);
}
