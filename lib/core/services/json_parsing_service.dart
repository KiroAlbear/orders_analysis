import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:new_visitor/core/models/graph_model.dart';
import 'package:new_visitor/core/models/order_response_model.dart';

class JsonParsingService {
  static List<OrderResponseModel> ordersData = [];
  static String totalPrice = "";
  static String averagePrice = "";
  static String returnedCount = "";
  static Map<String, int> ordersByDate = {};
  static List<GraphModel> graphData = [];

  static Future<void> parseOrderResponseModel(String filePath) async {
    String jsonString = await rootBundle.loadString(filePath);
    final List<dynamic> jsonData = json.decode(jsonString);
    ordersData = jsonData
        .map((jsonItem) => OrderResponseModel.fromJson(jsonItem))
        .toList();
  }

  static void _setGraphData() {
    ordersByDate.forEach((key, value) {
      graphData.add(GraphModel(xValue: key, yValue: value));
    });
  }

  static void setAnalyticalValues() {
    double total = 0;
    int rCount = 0;

    ordersData.sort((a, b) => a.registered!.compareTo(b.registered!));

    ordersData.forEach((element) {
      DateTime date = DateTime.parse(element.registered!);
      String formatedDate = "${date.day}/${date.month}/${date.year}";


    //  ordersData.forEach((element) {
    //   DateTime elemDate = DateTime.parse(element.registered!);
    //    if (elemDate.day == date.day &&
    //        elemDate.month == date.month &&
    //        elemDate.year == date.year) {

    //         if(ordersByDate[formatedDate] == null){
    //            ordersByDate[formatedDate] = 1;
    //         }else{
    //           ordersByDate[formatedDate] = ordersByDate[formatedDate]! + 1;
    //         }
    //    }
    //   });

       ordersByDate[formatedDate] = ordersData.where((element) {
        DateTime elemDate = DateTime.parse(element.registered!);
        return elemDate.day == date.day &&
            elemDate.month == date.month &&
            elemDate.year == date.year;
       }).length;
      
      // ordersByDate.removeWhere((key, value) => value == 1); 

     
      String parsedPrice =
          element.price!.replaceAll(",", '').replaceAll("\$", "");
      total += double.parse(parsedPrice);

      if (element.status!.toLowerCase() == "returned") {
        rCount++;
      }
    });
    String roundedTotal = total.toStringAsFixed(2);

    totalPrice = roundedTotal;
    averagePrice = (total / ordersData.length).toStringAsFixed(2);
    returnedCount = rCount.toString();
    _setGraphData();
  }
}
