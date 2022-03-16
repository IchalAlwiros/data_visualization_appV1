import 'package:data_visialization/widget/chardData2.dart';
import 'package:data_visialization/widget/dataPieChart.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //mainCard()
              CircleChartSample(),
              cardGraph()
            ],
          ),
        ),
      ),
    );
  }

  Widget cardGraph() {
    return Container(
        height: 280,
        // decoration: BoxDecoration(
        //   color: Colors.red
        // ),
        //width: 360,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ChartGraph2(),
        ));
  }
}
