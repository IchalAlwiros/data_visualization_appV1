import 'package:data_visialization/widget/timeline.dart';
import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  //DefaultTabController myController = DefaultTabController(length: 3, child: null); //controller manual
  @override
  Widget build(BuildContext context) {
    List<Tab> myTab = [
      Tab(
        text: '   Day 1 \n28 June',
        //icon: Icon(Icons.home),
      ),
      Tab(
        text: '   Day 2 \n28 June',
        //icon: Icon(Icons.archive_sharp),
      ),
      Tab(
        text: '   Day 3 \n28 June',
        //icon: Icon(Icons.insert_drive_file),
      ),
      Tab(
        text: '   Day 4 \n28 June',
        //icon: Icon(Icons.insert_drive_file),
      ),
      Tab(
        text: '   Day 5 \n28 June',
        //icon: Icon(Icons.insert_drive_file),
      ),
      Tab(
        text: '   Day 6 \n28 June',
        //icon: Icon(Icons.insert_drive_file),
      ),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: myTab.length, // menghitung banyal tab yang tersedia
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                // gradient: LinearGradient(
                //     colors: [Color(0xffffd700), Color(0xffffa500)],
                //     begin: FractionalOffset.topLeft,
                //     end: FractionalOffset.bottomRight),
              ),
            ),
            title: Text(
              'My Weekly Task',
              style: TextStyle(color: Colors.black),
            ),
            //centerTitle: true,
            bottom: TabBar(
              labelColor: Colors.orange,
              unselectedLabelColor: Colors.deepOrange,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              physics: BouncingScrollPhysics(),
              isScrollable: true,

              // unselectedLabelStyle: TextStyle(
              //     fontFamily: 'Ubuntu', fontWeight: FontWeight.normal),

              //indikator manual
              // labelColor: Colors.amberAccent,
              // indicatorColor:Colors.orangeAccent ,
              // indicatorWeight: 5,

              //custom indikator
              indicator: BoxDecoration(
                //color: Colors.amber,
                //borderRadius: BorderRadius.circular(10),
                border: Border(
                  bottom: BorderSide(color: Colors.orange, width: 5),
                ),
              ),

              tabs: myTab,
            ),
          ),
          // body: SingleChildScrollView(
          //   child: Column(
          //     children: [
          //       SizedBox(
          //         height: MediaQuery.of(context).size.height,
          //         child: TabBarView(
          //           physics: BouncingScrollPhysics(),
          //           children: [
          //             TimelineKu(),
          //             Text('${myTab.length.toDouble()}'),
          //             TimelineKu(),
          //             TimelineKu(),
          //             TimelineKu(),
          //             TimelineKu(),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          body: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  //Text('${MediaQuery.of(context).size.height}')
                  tabbarList()
                  // Container(
                  //   color: Colors.red,
                  //   child: tabbarList(),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget tabbarList() {
    return Container(
      // color: Colors.black,
      //height: 500,
      child: Flexible(
        child: TimelineKu(),
      ),
    );
  }

  // Widget body() {
  //   return Expanded(
  //     child: ListView(children: [
  //       tabbarList(),
  //     ]),
  //   );
  // }
}
