import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartTwo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BarChartTwoState();
}

class BarChartTwoState extends State<BarChartTwo> {
  final double width = 7;
  int? touchedGroupIndex;

  @override
  void initState() {
    super.initState();
  }

  // void initState(){
  //   weeklyData;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    List<List<double>> weeklyData = [
      [Random().nextInt(25).toDouble(), Random().nextInt(25).toDouble()],
      [Random().nextInt(25).toDouble(), Random().nextInt(25).toDouble()],
      [Random().nextInt(25).toDouble(), Random().nextInt(25).toDouble()],
      [Random().nextInt(25).toDouble(), Random().nextInt(25).toDouble()],
      [Random().nextInt(25).toDouble(), Random().nextInt(25).toDouble()],
      [Random().nextInt(25).toDouble(), Random().nextInt(25).toDouble()],
      [Random().nextInt(25).toDouble(), Random().nextInt(25).toDouble()],
    ];
    return Container(
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: Colors.amber,
      ),
      margin: EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(16),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            'Alwiros',
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: BarChart(
                _mainBarData(data: weeklyData),
              ),
            ),
          ),
        ],
      ),
    );
  }

// @override
//   void initState() {
//    _buildAxes();
//     super.initState();
//   }

  BarChartData _mainBarData({@required List? data}) {
    return BarChartData(
      maxY: 25,
      titlesData: _buildAxes(),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: _buildAllBars(data: data),
    );
  }

  FlTitlesData _buildAxes() {
    return FlTitlesData(
        show: true,
        // Build X axis.
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (contex, value) => TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
              fontSize: 14),
          margin: 10,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'Mn';
              case 1:
                return 'Te';
              case 2:
                return 'Wd';
              case 3:
                return 'Tu';
              case 4:
                return 'Fr';
              case 5:
                return 'St';
              case 6:
                return 'Sn';
              default:
                return '';
            }
          },
        ),
        // Build Y axis.
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
              fontSize: 14),
          margin: 10,
          //reservedSize: 12,
          getTitles: (value) {
            if (value == 0) {
              return '1K';
            } else if (value == 10) {
              return '5K';
            } else if (value == 20) {
              return '10K';
            }
            // else if (value == 25) {
            //   return '20K';
            // }
            else {
              return '';
            }
          },
        ),
        topTitles: SideTitles(showTitles: false),
        rightTitles: SideTitles(
            showTitles: true,
            getTextStyles: (context, value) => TextStyle(
                color: Colors.deepOrange, fontWeight: FontWeight.w500)));
  }

  // Function to draw all the bars.
  List<BarChartGroupData> _buildAllBars({@required List? data}) {
    return List.generate(
      data!.length, // y1                 // y2
      (index) => _buildBar(index, data[index][0], data[index][1]),
    );
  }

  // Function to define how to bar would look like.
  BarChartGroupData _buildBar(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 5,
      x: x,
      barRods: [
        BarChartRodData(
          toY: y1,
          // y: y1,
          colors: <Color>[Colors.amber, Colors.black],
          //color: leftBarColor,
          width: width,
        ),
        BarChartRodData(
          // y: y2,
          toY: y2,
          colors: <Color>[Colors.red, Colors.blue],
          //color: rightBarColor,
          width: width,
        ),
      ],
    );
  }
}
