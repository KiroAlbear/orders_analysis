import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orders_analysis/core/font/custom_text_styles.dart';
import 'package:orders_analysis/core/static_colors.dart';
import 'package:orders_analysis/gen/assets.gen.dart';

// prevent copy and paste

class CustomDataCard extends StatelessWidget {
  final String lable;
  final String count;
  final String icon;
  final bool showDollar;

  final double _verticalPadding = 12.0;
  final double _horizontalPadding = 18.0;

  CustomDataCard({
    required this.lable,
    required this.count,
    required this.icon,
    required this.showDollar,
  });

  Widget _buildBaseWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: _horizontalPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.transparent,
              width: 1.0,
            ),
            boxShadow: [
              BoxShadow(
                color: (StaticColors.themeColor).withOpacity(0.16),
                spreadRadius: 10.0,
                blurRadius: 10.0,
              ),
              BoxShadow(
                color: Colors.white,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                width: 40,
                colorFilter:
                    ColorFilter.mode(StaticColors.themeColor, BlendMode.srcIn),
              ),
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: _verticalPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      lable,
                      style: CustomTextStyles.semiBold_14_black_noSpacing(
                        context,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          count,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        !showDollar
                            ? SizedBox()
                            : SizedBox(
                                width: 40,
                                height: 40,
                                child: SvgPicture.asset(
                                  Assets.icons.icDollar,
                                  colorFilter: ColorFilter.mode(
                                      StaticColors.themeColor, BlendMode.srcIn),
                                ),
                              ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBaseWidget(context);
  }
}
