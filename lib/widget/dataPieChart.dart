import 'package:data_visialization/theme/theme.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CircleChartSample extends StatefulWidget {
  @override
  _CircleChartSampleState createState() => _CircleChartSampleState();
}

class _CircleChartSampleState extends State<CircleChartSample> {
  int? _touchedIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          color: Colors.grey[100],
          boxShadow: [
            BoxShadow(
                offset: Offset(1.0, 2.0), color: Colors.grey, blurRadius: 10.0)
          ]),
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Global Statistic',
                style: titleCardSlide,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 150,
                height: 150,
                //color: Colors.grey,
                // Pie Chart is available in fl_chart package
                child: PieChart(
                  PieChartData(
                    borderData: FlBorderData(show: false),
                    centerSpaceRadius: 30.0,
                    sectionsSpace: 0.0, //Jarak Antar Circle
                    startDegreeOffset: 30,
                    // actual curves and data come from this function result.
                    sections: _buildPieChartCurves(),
                    // This is to make chart interactive when someone touch
                    pieTouchData: PieTouchData(
                      touchCallback: (FlTouchEvent event, pieTouchResponse) {
                        setState(() {
                          if (!event.isInterestedForInteractions ||
                              pieTouchResponse == null ||
                              pieTouchResponse.touchedSection == null) {
                            _touchedIndex = -1;
                            return;
                          }
                          _touchedIndex = pieTouchResponse
                              .touchedSection!.touchedSectionIndex;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              child: Column(
                //mainAxisSize: MainAxisSize.max,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        margin: EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(color: Colors.amber),
                      ),
                      SizedBox(width: 5),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Daily task,\n", style: titleCardSlide),
                            TextSpan(
                              text: "15 task completed \n",
                              style: titleCardSlide,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  //SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        margin: EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                      SizedBox(width: 5),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Weekly Task,\n", style: titleCardSlide),
                            TextSpan(
                              text: "22 task completed \n",
                              style: titleCardSlide,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        margin: EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(color: Colors.red),
                      ),
                      SizedBox(width: 5),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Monthly task,\n", style: titleCardSlide),
                            TextSpan(
                              text: "30 task completed \n",
                              style: titleCardSlide,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // Here we will show different type of graph on different scenario touch and non touch
  List<PieChartSectionData> _buildPieChartCurves() {
    return List.generate(3, (i) {
      final isTouched = i == _touchedIndex;
      // Increase the radius of section when touched.
      final double radius = isTouched ? 45 : 40;
      //final double inactiveradius = 30;

      // Ideally this data come from API and then returned, or you can modify it any way as per the data arranged in your app :)
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.red,
            value: 30.00,
            title: ' ', // this cannot be left blank
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: Colors.blue,
            value: 30.00,
            title: ' ', // this cannot be left blank
            radius: radius,
          );
        case 2:
          return PieChartSectionData(
            color: Colors.amber,
            value: 15.00,
            title: ' ',
            titleStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500), // this cannot be left blank
            radius: radius,
          );

        default:
          return null!;
      }
    });
  }
}
