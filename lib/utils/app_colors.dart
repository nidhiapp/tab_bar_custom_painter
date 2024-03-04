import 'package:flutter/material.dart';

bool isLightOrDark=false;

class AppColors {
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color greenColor = Colors.green;
  static const Color blueColor = Colors.blue;
  static const Color greyColor = Colors.grey;
  static const Color backgroundImageColor = Color(0XFF131C35);
  static const Color darkRedColor = Color(0xFFE10A0A);
  static Color blackAndWhite = isLightOrDark ? Colors.black : Colors.white;
  static Color blueGreyAndWhite =
      isLightOrDark ? Colors.blueGrey : Colors.white;
  // Amber
  static Color get amber30063 => const Color(0X63FFC74A);

  // Black
  static Color get black900 => const Color(0XFF000000);

  // Blue
  Color get blue900 => const Color(0XFF1A46B7);

  // BlueGray
  Color get blueGray100 => const Color(0XFFD1D5DB);
 static Color get blueGray10001 => const Color(0XFFD0D2D7);
  Color get blueGray200 => const Color(0XFFADB3BC);
  Color get blueGray400 => const Color(0XFF898A8D);
 static Color get blueGray40001 => const Color(0XFF898D9A);
  Color get blueGray900 => const Color(0XFF210250);
   
  // DeepPurple
  Color get deepPurple200 => const Color(0XFFAEABEF);

  // Gray
  Color get gray100 => const Color(0XFFF3F4F5);
 static Color get gray200 => const Color(0XFFE7E8EB);
  Color get gray20001 => const Color(0XFFEAEAEA);
 static Color get gray500 => const Color(0XFF9B9B9B);
static Color get gray900 => const Color(0XFF131C35);
  Color get gray90001 => const Color(0XFF191B23);

  // Indigo
  Color get indigo400 => const Color(0XFF6D6DBF);
  Color get indigo500 => const Color(0XFF4157AD);
  Color get indigoA400 => const Color(0XFF3E5FDF);
  Color darkRed = const Color(0xFFE10A0A);

  // Orange
  Color get orange200 => const Color(0XFFF9C36E);

  // Red
  Color get red500 => const Color(0XFFF83838);

  // White
  Color get whiteA700 => const Color(0XFFFCFCFE);

  // Yellow
  Color get yellow800 => const Color(0XFFF79E1B);
 static Color get greyNormalText=> const Color(0XFF7C808B);
 static Color primaryBlue = Color.fromRGBO(63, 95, 224, 1);


}
