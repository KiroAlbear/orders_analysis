import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:new_visitor/core/custom_button.dart';
import 'package:new_visitor/core/font/custom_text_styles.dart';
import 'package:new_visitor/core/services/json_parsing_service.dart';
import 'package:new_visitor/gen/assets.gen.dart';
import 'package:new_visitor/success_pge/success_page.dart';
import 'package:new_visitor/orders_total_page/widgets/custom_data_card.dart';
import 'package:new_visitor/orders_total_page/widgets/custom_appbar.dart';

class OrdersTotalPage extends StatefulWidget {
  OrdersTotalPage({
    super.key,
  });

  @override
  State<OrdersTotalPage> createState() => _OrdersTotalPageState();
}

class _OrdersTotalPageState extends State<OrdersTotalPage> {
  double _imageHeight = 500;

  double _cardTopPadding = 40;

  Widget _buildFormHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Orders Information",
            style: CustomTextStyles.bold_22_black_noSpacing(context)),
      ],
    );
  }

  Widget _buildColumnOfCards() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 20,
        ),
        CustomDataCard(
          lable: "Total",
          count: JsonParsingService.totalPrice,
          icon: Assets.icons.icTotal,
          showDollar: true,
        ),
        SizedBox(
          height: _cardTopPadding,
        ),
        CustomDataCard(
          lable: "Average",
          count: JsonParsingService.averagePrice,
          icon: Assets.icons.icAverage,
          showDollar: true,
        ),
        SizedBox(
          height: _cardTopPadding,
        ),
        CustomDataCard(
          lable: "Returns",
          count: JsonParsingService.returnedCount,
          icon: Assets.icons.icReturned,
          showDollar: false,
        ),
        SizedBox(
          height: _cardTopPadding * 5,
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: _imageHeight,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                Assets.images.ordersBg.path,
                fit: BoxFit.cover,
              ),
            )),
        CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                background: CustomAppbar(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  padding: EdgeInsets.all(42),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildFormHeader(context),
                      _buildColumnOfCards(),
                      SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        text: "Next Step",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SuccessPage()));
                        },
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
