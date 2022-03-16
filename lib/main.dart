import 'package:data_visialization/widget/bottomNavPresist.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DataVisualization());
}

class DataVisualization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body:
                //HomePage()
                PresistentBottomNav()
            // Center(
            //   child:
            //   //BarChartOne()
            //   //BarChartTwo()
            //   //PieChartSample(),
            // ),
            ));
  }
}
