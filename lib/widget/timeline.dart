// import 'package:datavisualization/widget/cardtask.dart';
// import 'package:flutter/material.dart';
// import 'package:timelines/timelines.dart';

// class TimelineKu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Timelines Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Timelines Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(right: 100),
//         child: Container(
//           child: Timeline.tileBuilder(
//             builder: TimelineTileBuilder.fromStyle(
//               connectorStyle: ConnectorStyle.dashedLine,
//               contentsAlign: ContentsAlign.basic,
//               contentsBuilder: (context, index) => Column(
//                 children: [
//                   Container(
//                     width: 400,
//                     color: Colors.red,
//                     child: CardList(),
//                   ),
//                 ],
//               ),
//               itemCount: 10,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:data_visialization/widget/cardListtimeline.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelineKu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Text('${MediaQuery.of(context).size.height}'),
                SizedBox(
                  width: 500,
                  height: 100,
                  child: TimelineTile(
                    afterLineStyle: LineStyle(
                      thickness: 2,
                      color: Colors.orange,
                    ),
                    indicatorStyle: IndicatorStyle(
                      //color: Colors.orange,
                      width: 25,
                      height: 25,
                      indicator: Container(
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(
                            width: 3,
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.grey,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    endChild: ListTimeLine(),
                    isFirst: true,
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 100,
                  child: TimelineTile(
                    beforeLineStyle: LineStyle(
                      thickness: 2,
                      color: Colors.orange,
                    ),
                    afterLineStyle: LineStyle(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    indicatorStyle: IndicatorStyle(
                      //color: Colors.grey,
                      width: 25,
                      height: 25,
                      indicator: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 3,
                            color: Colors.orange,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.grey,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    endChild: ListTimeLine(),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 100,
                  child: TimelineTile(
                    beforeLineStyle: LineStyle(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    afterLineStyle: LineStyle(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    indicatorStyle: IndicatorStyle(
                      //color: Colors.orange,
                      width: 25,
                      height: 25,
                      indicator: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(
                            width: 3,
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.grey,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    endChild: ListTimeLine(),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 100,
                  child: TimelineTile(
                    beforeLineStyle: LineStyle(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    afterLineStyle: LineStyle(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    indicatorStyle: IndicatorStyle(
                      //color: Colors.orange,
                      width: 25,
                      height: 25,
                      indicator: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(
                            width: 3,
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.grey,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    endChild: ListTimeLine(),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 100,
                  child: TimelineTile(
                    beforeLineStyle: LineStyle(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    afterLineStyle: LineStyle(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    indicatorStyle: IndicatorStyle(
                      //color: Colors.orange,
                      width: 25,
                      height: 25,
                      indicator: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(
                            width: 3,
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.grey,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    endChild: ListTimeLine(),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 100,
                  child: TimelineTile(
                    beforeLineStyle: LineStyle(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    afterLineStyle: LineStyle(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    indicatorStyle: IndicatorStyle(
                      //color: Colors.orange,
                      width: 25,
                      height: 25,
                      indicator: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(
                            width: 3,
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.grey,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    endChild: ListTimeLine(),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 100,
                  child: TimelineTile(
                    beforeLineStyle: LineStyle(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    isLast: true,
                    indicatorStyle: IndicatorStyle(
                      //color: Colors.orange,
                      width: 25,
                      height: 25,
                      indicator: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(
                            width: 3,
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.grey,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    endChild: ListTimeLine(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
