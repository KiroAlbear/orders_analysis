import 'package:flutter/material.dart';

class TextStyleBlueprint {
  // Test
  static FontWeight semiBoldFontWeight = FontWeight.w600;
  static FontWeight boldFontWeight = FontWeight.w700;
  static FontWeight regularFontWeight = FontWeight.normal;
  static FontWeight fontWeight400 = FontWeight.w400;
  static FontWeight lightFontWeight = FontWeight.w300;
  static FontWeight mediumFontWeight = FontWeight.w500;

  late Map<String, TextStyle> basicTextStylesMap;

  static String almarai_font_family = 'Almarai';

  static TextStyle? style(
    BuildContext context, {
    Color? color,
    double? height,
    double? fontSize,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    String? fontFamily,
  }) {
    color ??= Theme.of(context).textTheme.displayLarge?.color;
    height ??= 1.4;
    TextStyle selectedTextStyle = TextStyle(
      color: color,
      fontSize: fontSize,
      height: height,
      fontFamily: fontFamily ?? almarai_font_family,
      decoration: decoration,
      fontWeight: fontWeight,
    );

    return selectedTextStyle;
  }

  static TextStyle? titleMediumTextStyle(BuildContext context) {
    return style(
      context,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }
}
