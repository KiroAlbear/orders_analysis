import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:orders_analysis/core/custom_button.dart';
import 'package:orders_analysis/core/models/graph_model.dart';
import 'package:orders_analysis/core/services/json_parsing_service.dart';
import 'package:orders_analysis/core/static_colors.dart';
import 'package:orders_analysis/gen/assets.gen.dart';

class SuccessPage extends StatelessWidget {
  final double _qrSize = 220;
  final List<GraphModel> graphData = JsonParsingService.graphData;
  SuccessPage({
    super.key,
  });

  Widget _getBackgroundLight() {
    return Positioned(
      bottom: 250,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 0,
            width: 0,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: StaticColors.themeColor.withOpacity(0.10),
                  spreadRadius: 130.0,
                  blurRadius: 80.0,
                  offset: const Offset(0, 15),
                ),
              ],
              color: StaticColors.themeColor,
              borderRadius: BorderRadius.circular(1000),
            ),
          ),
        ],
      ),
    );
  }

  List<BarChartGroupData> _getBarChartGroupData() {
    List<BarChartGroupData> barChartGroupData = [];
    for (int i = 0; i < graphData.length; i++) {
      barChartGroupData.add(BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
              toY: graphData[i].yValue.toDouble(),
              color: const Color.fromARGB(255, 152, 210, 44),
              backDrawRodData: BackgroundBarChartRodData(
                show: true,
                color: Colors.white,
              )),
        ],
      ));
    }
    return barChartGroupData;
  }

  Widget _getBottomWidget(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: 300,
              child: LineChart(LineChartData(
                baselineY: 0,
                baselineX: 0,
                minY: 0,
                maxY: 3,
                lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipColor: (spot) => StaticColors.themeColor,
                    getTooltipItems: (touchedSpots) {
                      return touchedSpots.map((e) {
                        return LineTooltipItem(
                            "${graphData[e.spotIndex].xValue.toString()} -> ${e.y.toString()}",
                            TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14));
                      }).toList();
                    },
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: graphData
                        .map((e) => FlSpot(
                            JsonParsingService.graphData.indexOf(e).toDouble(),
                            e.yValue.toDouble()))
                        .toList(),
                    belowBarData: BarAreaData(show: false, color: Colors.white),
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, barData, index) {
                        return FlDotCirclePainter(
                          radius: 2,
                          color: StaticColors.themeColor,
                          strokeWidth: 0,
                          strokeColor: StaticColors.themeColor,
                        );
                      },
                    ),
                  ),
                ],
                gridData: FlGridData(
                  show: true,
                  drawHorizontalLine: true,
                ),
              ))),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: CustomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                text: "Navigate to home",
                isNext: false),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _buildQrWidget() {
    return Positioned(
      top: 180,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          width: _qrSize,
          height: _qrSize,
          color: StaticColors.successQRBackgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                  height: 260,
                  child: Image.asset(
                    Assets.images.statsBg.path,
                    fit: BoxFit.cover,
                  )),
            ],
          ),
          // _buildQrWidget(),
          _getBackgroundLight(),
          _getBottomWidget(context)
        ],
      ),
    );
  }
}
