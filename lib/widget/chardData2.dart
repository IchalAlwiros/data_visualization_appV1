import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartGraph2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChartGraph2State();
}

class ChartGraph2State extends State<ChartGraph2> {
  int? _touchedIndex;

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
      6.5,
      6.5,
      6.5,
      6.5,
      6.5,
    ];
    return Container(
      height: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey, blurRadius: 3.0, offset: Offset(1.0, 2.0))
          ]),
      margin: EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              Text(
                'June',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
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
          colors: <Color>[
            Color(0xffF44771), Color(0xffFD29B5)
            //isTouched ? Colors.yellow : Colors.white,
          ],
          width: 7,
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 20,
            colors: <Color>[Color(0xffC059FF), Color(0xff4262FE)],
          ),
        ),
      ],
    );
  }

  List<BarChartGroupData> _buildAllBars({@required List? data}) {
    return List.generate(
      data!.length,
      (index) =>
          _buildBar(index, data[index], isTouched: index == _touchedIndex),
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
            color: Color(0xffBACCFD),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          margin: 10,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return '01';
              case 1:
                return '02';
              case 2:
                return '03';
              case 3:
                return '04';
              case 4:
                return '05';
              case 5:
                return '06';
              case 6:
                return '07';
              case 7:
                return '08';
              case 8:
                return '09';
              case 9:
                return '10';
              case 10:
                return '11';
              case 11:
                return '12';
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
        ),
        rightTitles: SideTitles(showTitles: false));
  }

  BarTouchData _buildBarTouchData() {
    return BarTouchData(
        touchTooltipData: BarTouchTooltipData(
      tooltipBgColor: Colors.grey,
      getTooltipItem: (group, groupIndex, rod, rodIndex) {
        String? weekDay;
        switch (group.x.toInt()) {
          case 0:
            weekDay = 'Aww';
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
            weekDay = 'Saturday';
            break;
          case 7:
            weekDay = 'Sunday';
            break;
          case 8:
            weekDay = 'Sunday';
            break;
          case 9:
            weekDay = 'Sunday';
            break;
          case 10:
            weekDay = 'Sunday';
            break;
          case 11:
            weekDay = 'Sunday';
            break;
          case 12:
            weekDay = 'Sunday';
            break;
        }
        return BarTooltipItem(
          weekDay! + '\n' + (rod.toY).toString(),
          TextStyle(color: Colors.white),
        );
      },
    ));
  }
}
