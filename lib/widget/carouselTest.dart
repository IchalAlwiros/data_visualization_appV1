import 'package:carousel_slider/carousel_slider.dart';
import 'package:data_visialization/widget/dropdown.dart';

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CarouselTest extends StatefulWidget {
  @override
  _CarouselTestState createState() => _CarouselTestState();
}

class _CarouselTestState extends State<CarouselTest> {
  //int _value = 1;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> imagesList = [
      'assets/mainImage.png',
      'assets/BG Zoom Final Peserta BP 15 Besar.jpg',
      'assets/Ellipse 6.png',
      'assets/Ellipse 4.png',
    ];
    final List<String> titles = [
      ' A111 ',
      ' A222 ',
      ' A333 ',
      ' A444 ',
    ];
    setState(() {
      titles[_currentIndex];
    });

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1,
                    // enlargeCenterPage: true,
                    //scrollDirection: Axis.vertical,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                        //print('${titles[_currentIndex]}');
                      });
                    },
                  ),
                  items: imagesList.map((item) {
                    return Stack(
                      children: [
                        Image.asset(
                          item,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                        Center(
                          child: Text(
                            '${titles[_currentIndex]}',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.black45,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
                // _buildCarosel(
                //     item: imagesList, item2: titles, state: _currentIndex),
                Padding(
                  padding: const EdgeInsets.only(top: 180),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imagesList.map((item) {
                      int index = imagesList.indexOf(item);
                      return Container(
                        width: 10.0,
                        height: 10.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? Colors.white
                              : Colors.grey,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            DropdownKu()
            // Container(
            //   padding: EdgeInsets.all(20),
            //   child: DropdownButton(
            //     value: _value,
            //     items: [
            //       DropdownMenuItem(
            //         child: Text('data'),
            //         value: 1,
            //       ),
            //       DropdownMenuItem(
            //         child: Text('data2'),
            //         value: 2,
            //       ),
            //     ],
            //     onChanged: (int value) {
            //       setState(() {
            //         _value = value;
            //       });
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}





// CarouselSlider _buildCarosel({List item, List item2, int state}) {
//   return CarouselSlider(
//     options: CarouselOptions(
//       autoPlay: true,
//       viewportFraction: 1,
//       // enlargeCenterPage: true,
//       //scrollDirection: Axis.vertical,
//       onPageChanged: (index, reason) {
//         state = index;
//       },
//     ),
//     items: item.map((item) {
//       return Stack(
//         children: [
//           Image.asset(
//             item,
//             fit: BoxFit.cover,
//             width: double.infinity,
//           ),
//           Center(
//             child: Text(
//               '${item2[state]} cc',
//               style: TextStyle(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//                 backgroundColor: Colors.black45,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ],
//       );
//     }).toList(),
//   );
// }

// List<CarouselSlider> _buildSlide({List data}){
//   return List.generate(data.length, (index) => _buildCarosel());
// }










// class CarouselTest extends StatefulWidget {
//   @override
//   _CarouselTestState createState() => _CarouselTestState();
// }

// class _CarouselTestState extends State<CarouselTest> {
//   final List<String> imageList = [
//     'assets/mainImage.png',
//     'assets/BG Zoom Final Peserta BP 15 Besar.jpg'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Column(
//         children: [
          // GFCarousel(
          //   pagerSize: 10.0,
          //   activeIndicator: Colors.amber,
          //   passiveIndicator: Colors.white,
          //   pagination: true,
          //   height: 200.0,
          //   autoPlay: true,
          //   viewportFraction: 1.0,
          //   autoPlayInterval: Duration(seconds: 3),
          //   items: imageList.map(
          //     (i) {
          //       return Container(
          //         width: 500,
          //         margin: EdgeInsets.all(8.0),
          //         child: Image.asset(
          //             i,
          //             fit: BoxFit.fitWidth,
          //           ),
          //       );
          //     },
          //   ).toList(),
          //   onPageChanged: (index) {
          //     setState(() {
          //       index;
          //     });
          //   },
          // ),

          // CarouselSlider(
          //   options: CarouselOptions(
          //     height: 200.0,
              
          //     //aspectRatio: 16/9,
          //     viewportFraction: 1,
          //     enableInfiniteScroll: true,
          //     reverse: false,
          //     autoPlay: true,
          //     autoPlayInterval: Duration(seconds: 3),
          //   ),
          //   items: [
          //     'assets/mainImage.png',
          //     'assets/BG Zoom Final Peserta BP 15 Besar.jpg',
          //   ].map((i) {
          //     return Builder(
          //       builder: (BuildContext context) {
          //         return Container(
          //           width: MediaQuery.of(context).size.width,
          //           //margin: EdgeInsets.symmetric(horizontal: 5.0),
          //           decoration: BoxDecoration(color: Colors.amber),
          //           child: Image.asset(
          //             i,
          //             fit: BoxFit.cover,
          //           ),
          //         );
          //       },
          //     );
          //   }).toList(),
          // ),
//         ],
//       ),
//     );
//   }
// }
