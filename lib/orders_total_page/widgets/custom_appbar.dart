import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_visitor/core/font/custom_text_styles.dart';
import 'package:new_visitor/gen/assets.gen.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Stack(
        children: [
          Container(
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Orders Analytics",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.regular_22_white_appbarText(context),
                ),
                Text(
                  "This page for displaying analitical data of orders",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.regular_12_white_appbarText(context)
                      .copyWith(fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
