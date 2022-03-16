import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartOne extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BarChartOneState();
}

class BarChartOneState extends State<BarChartOne> {
  int? touchedIndex;

  @override
  Widget build(BuildContext context) {
    final List<double> weeklyData = [
      10.0,
      6.5,
      5.0,
      7.5,
      9.0,
      11.5,
      6.5,
    ];
    return Container(
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: Colors.amber,
      ),
      margin: EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // Text(
          //   'Analysis',
          //   style: TextStyle(
          //       color: Colors.orange,
          //       fontSize: 24,
          //       fontWeight: FontWeight.bold),
          // ),
          // const SizedBox(
          //   height: 4,
          // ),
          Text(
            'Weekly',
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: BarChart(
                mainBarData(data: weeklyData),
              ),
            ),
          ),
        ],
      ),
    );
  }

  BarChartGroupData _buildBar(
    int x,
    double y, {
    bool isTouched = false,
  }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          // y: y,
          colors: <Color>[
            isTouched ? Colors.yellow : Colors.white,
          ],
          width: 22,
          backDrawRodData:
              BackgroundBarChartRodData(show: true, toY: 20, colors: <Color>[
            Colors.orange,
          ]),
        ),
      ],
    );
  }

  List<BarChartGroupData> _buildAllBars({@required List? data}) {
    return List.generate(
      data!.length,
      (index) =>
          _buildBar(index, data[index], isTouched: index == touchedIndex),
    );
  }

  BarChartData mainBarData({@required List? data}) {
    return BarChartData(
      barTouchData: _buildBarTouchData(),
      titlesData: _buildAxes(),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: _buildAllBars(data: data),
    );
  }

  FlTitlesData _buildAxes() {
    return FlTitlesData(

        // Build X axis.
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          margin: 16,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'M';
              case 1:
                return 'T';
              case 2:
                return 'W';
              case 3:
                return 'T';
              case 4:
                return 'F';
              case 5:
                return 'S';
              case 6:
                return 'S';
              default:
                return '';
            }
          },
        ),
        // Build Y axis.

        leftTitles: SideTitles(
          showTitles: false,
          getTitles: (double value) {
            return value.toString();
          },
        ),
        topTitles: SideTitles(
          showTitles: false,
        ));
  }

  BarTouchData _buildBarTouchData() {
    return BarTouchData(
      touchTooltipData: BarTouchTooltipData(
        tooltipBgColor: Colors.red,
        getTooltipItem: (group, groupIndex, rod, rodIndex) {
          String? weekDay;
          switch (group.x.toInt()) {
            case 0:
              weekDay = 'Monday';
              break;
            case 1:
              weekDay = 'Tuesday';
              break;
            case 2:
              weekDay = 'Wednesday';
              break;
            case 3:
              weekDay = 'Thursday';
              break;
            case 4:
              weekDay = 'Friday';
              break;
            case 5:
              weekDay = 'Saturday';
              break;
            case 6:
              weekDay = 'Sunday';
              break;
          }
          return BarTooltipItem(
            weekDay! + '\n' + (rod.toY).toString(),
            TextStyle(color: Colors.yellow),
          );
        },
      ),

      // touchCallback: (FlTouchEvent event, pieTouchResponse) {
      //   setState(() {

      //   });
      // },
      // touchCallback: (barTouchResponse) {
      //   setState(() {
      //     if (barTouchResponse.spot != null &&
      //         barTouchResponse.touchInput is! FlPanEnd &&
      //         barTouchResponse.touchInput is! FlLongPressEnd) {
      //       touchedIndex = barTouchResponse.spot.touchedBarGroupIndex;
      //     } else {
      //       touchedIndex = -1;
      //     }
      //   });
      // },
    );
  }
}
