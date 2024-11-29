import 'dart:io';

import 'package:flutter/material.dart';
import 'package:orders_analysis/core/services/json_parsing_service.dart';
import 'package:orders_analysis/core/static_colors.dart';
import 'package:orders_analysis/gen/assets.gen.dart';
import 'package:orders_analysis/success_pge/success_page.dart';
import 'package:orders_analysis/orders_total_page/orders_total_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await JsonParsingService.parseOrderResponseModel(Assets.json.orders);
  JsonParsingService.setAnalyticalValues();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: StaticColors.themeColor),
        primaryColorLight: StaticColors.themeColor,
        useMaterial3: true,
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: true,
          body: OrdersTotalPage(),
          // body: SuccessPage(),
        ),
      ),
    );
  }
}
