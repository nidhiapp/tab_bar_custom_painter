import 'package:flutter/material.dart';
import 'package:tab_bar_custom_painter/utils/app_fonts.dart';


class CustomTextStyle {
  // textStyles with fontWeight and fontFamily as the default values......

  static TextStyle poppinsExtraLight(double size, Color color,
      {FontWeight? fontWeight = FontWeight.w100,
      String? fontFamily = AppFontsConstants.poppins,
      bool underline = false}) {
    return TextStyle(
        color: color,
        decoration: underline ? TextDecoration.underline : null,
        fontWeight: fontWeight,
        fontSize: size,
        fontFamily: fontFamily);
  }

  static TextStyle poppinsLight(double size, Color color,
      {String? fontFamily = AppFontsConstants.poppins,
      bool underline = false}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w200,
        decoration: underline ? TextDecoration.underline : null,
        fontSize: size,
        fontFamily: fontFamily);
  }

  static TextStyle poppinsThin(double size, Color color,
      {String? fontFamily = AppFontsConstants.poppins,
      bool underline = false}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w300,
        decoration: underline ? TextDecoration.underline : null,
        fontSize: size,
        fontFamily: fontFamily);
  }

  static TextStyle poppinsRegular(double size, Color color,
      {String? fontFamily = AppFontsConstants.poppins,
      bool underline = false}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        decoration: underline ? TextDecoration.underline : null,
        fontSize: size,
        fontFamily: fontFamily);
  }

  static TextStyle poppinsMedium(double size, Color color,
      {String? fontFamily = AppFontsConstants.poppins,
      bool underline = false}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
        decoration: underline ? TextDecoration.underline : null,
        fontSize: size,
        fontFamily: fontFamily);
  }

  static TextStyle poppinsSemiBold(double size, Color color,
      {String? fontFamily = AppFontsConstants.poppins,
      bool underline = false}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w600,
        decorationColor: Colors.white70,
        decoration: underline ? TextDecoration.underline : null,
        fontSize: size,
        fontFamily: fontFamily);
  }

  static TextStyle poppinsBold(double size, Color color,
      {String? fontFamily = AppFontsConstants.poppins,
      bool underline = false}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w700,
        decoration: underline ? TextDecoration.underline : null,
        fontSize: size,
        fontFamily: fontFamily);
  }

  static TextStyle interExtraLight(double size, Color color,
      {FontWeight? fontWeight = FontWeight.w100,
        String? fontFamily = AppFontsConstants.inter,
        bool underline = false}) {
    return TextStyle(
        color: color,
        decoration: underline ? TextDecoration.underline : null,
        fontWeight: fontWeight,
        fontSize: size,
        fontFamily: fontFamily);
  }

  static TextStyle interLight(double size, Color color,
      {String? fontFamily = AppFontsConstants.inter,
        bool underline = false}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w200,
        decoration: underline ? TextDecoration.underline : null,
        fontSize: size,
        fontFamily: fontFamily);
  }

  static TextStyle interThin(double size, Color color,
      {String? fontFamily = AppFontsConstants.inter,
        bool underline = false}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w300,
        decoration: underline ? TextDecoration.underline : null,
        fontSize: size,
        fontFamily: fontFamily);
  }


  static TextStyle interRegular(double size, Color color,
      {String? fontFamily = AppFontsConstants.inter,
        bool underline = false}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        decoration: underline ? TextDecoration.underline : null,
        fontSize: size,
        fontFamily: fontFamily);
  }

    static TextStyle interNormal(double size, Color color,
      {String? fontFamily = AppFontsConstants.inter,
        bool underline = false}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w500,
        decoration: underline ? TextDecoration.underline : null,
        fontSize: size,
        fontFamily: fontFamily);
  }

  static TextStyle interMedium(double size, Color color,
      {String? fontFamily = AppFontsConstants.inter,
        bool underline = false}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w600,
        decoration: underline ? TextDecoration.underline : null,
        fontSize: size,
        fontFamily: fontFamily);
  }

  static TextStyle interSemiBold(double size, Color color,
      {String? fontFamily = AppFontsConstants.inter,
        bool underline = false}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w600,
        decorationColor: Colors.white70,
        height: 2,
        decoration: underline ? TextDecoration.underline : null,
        fontSize: size,
        fontFamily: fontFamily);
  }

  static TextStyle interBold(double size, Color color,
      {String? fontFamily = AppFontsConstants.inter,
        bool underline = false}) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w700,
        decoration: underline ? TextDecoration.underline : null,
        fontSize: size,
        fontFamily: fontFamily);
  }
}