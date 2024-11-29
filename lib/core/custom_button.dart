import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orders_analysis/core/font/custom_text_styles.dart';
import 'package:orders_analysis/core/static_colors.dart';
import 'package:orders_analysis/gen/assets.gen.dart';

class CustomButton extends StatelessWidget {
  final double _nextVerticalPadding = 10.0;
  final double _verticalPadding = 20.0;
  final double _leftPadding = 32.0;
  final double _rightPadding = 16.0;
  final double _borderRadius = 50.0;
  final String text;
  final bool isNext;
  final void Function() onTap;
  const CustomButton(
      {required this.text, required this.onTap, this.isNext = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      //gradient background
      decoration: BoxDecoration(
        gradient: LinearGradient(
          stops: [0.1, 1.0],
          colors: [
            StaticColors.buttonStartColor,
            StaticColors.themeColor,
          ],
        ),
        borderRadius: BorderRadius.circular(_borderRadius),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(_borderRadius),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.only(
                top: isNext ? _nextVerticalPadding : _verticalPadding,
                bottom: isNext ? _nextVerticalPadding : _verticalPadding,
                left: _leftPadding,
                right: _rightPadding),
            child: Row(
              mainAxisAlignment: isNext
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: CustomTextStyles.regular_16_white(context).copyWith(
                    letterSpacing: 0.5,
                  ),
                ),
                isNext
                    ? SvgPicture.asset(
                        Assets.icons.icNext,
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
