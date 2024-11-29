import 'package:flutter/material.dart';
import 'package:new_visitor/core/font/text_style_blueprint.dart';
import 'package:new_visitor/core/static_colors.dart';

class CustomTextStyles {
  CustomTextStyles._();

  static TextStyle regular_22_white_appbarText(BuildContext context) {
    return TextStyleBlueprint.style(context,
        fontSize: 22, color: Colors.white)!;
  }

  static TextStyle regular_12_white_appbarText(BuildContext context) {
    return TextStyleBlueprint.style(context,
        fontSize: 14, color: Colors.white)!;
  }

  static TextStyle regular_18_black_noSpacing(BuildContext context) {
    return TextStyleBlueprint.style(context,
            fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black)!
        .copyWith(letterSpacing: 0);
  }

  static TextStyle bold_22_black_noSpacing(BuildContext context) {
    return TextStyleBlueprint.style(context,
            fontSize: 22, fontWeight: FontWeight.w400, color: Colors.black)!
        .copyWith(letterSpacing: 0);
  }

  static TextStyle regular_12_red_noSpacing(BuildContext context) {
    return TextStyleBlueprint.style(context,
            fontSize: 14, fontWeight: FontWeight.w400, color: Colors.red)!
        .copyWith(letterSpacing: 0);
  }

  static TextStyle regular_14_black_noSpacing(BuildContext context) {
    return TextStyleBlueprint.style(context, fontSize: 14, color: Colors.black)!
        .copyWith(letterSpacing: 0);
  }

  static TextStyle semiBold_14_black_noSpacing(BuildContext context) {
    return TextStyleBlueprint.style(context,
            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black)!
        .copyWith(letterSpacing: 0);
  }

  //   static TextStyle regular_14_black_noSpacing(BuildContext context) {
  //   return TextStyleBlueprint.style(context,
  //           fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black)!
  //       .copyWith(letterSpacing: 0);
  // }

  static TextStyle semiBold_16_white_noSpacing(BuildContext context) {
    return TextStyleBlueprint.style(context,
            fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)!
        .copyWith(letterSpacing: 0);
  }

  static TextStyle semiBold_14_white_noSpacing(BuildContext context) {
    return TextStyleBlueprint.style(context,
            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white)!
        .copyWith(letterSpacing: 0);
  }

  static TextStyle regular_12_white(BuildContext context) {
    return TextStyleBlueprint.style(context,
        fontSize: 12, fontWeight: FontWeight.w300, color: Colors.white)!;
  }

  static TextStyle regular_16_white(BuildContext context) {
    return TextStyleBlueprint.style(context,
        fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white)!;
  }

  static TextStyle bold_22_blue(BuildContext context) {
    return TextStyleBlueprint.style(context,
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: StaticColors.themeColor)!;
  }
}
