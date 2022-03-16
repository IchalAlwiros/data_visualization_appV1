import 'package:data_visialization/model/model.dart';
import 'package:data_visialization/theme/theme.dart';
import 'package:data_visialization/widget/cardSlidebar.dart';
import 'package:data_visialization/widget/dataChart.dart';
import 'package:flutter/material.dart';
//import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              mainCard(),
              cardSlide(),
              SizedBox(height: 20),
              cardGraph(),
            ],
          ),
        ),
      ),

      //bottomNavigationBar: BottomNavIcons(),
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Tuesday, 28 Jan'),
              Text(
                'Today 🌥',
                style: titleStyle,
              ),
            ],
          ),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(1.0, 1.0),
                      color: Colors.grey,
                      blurRadius: 2.0)
                ]),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
    );
  }

  Widget mainCard() {
    return Container(
      decoration: BoxDecoration(
          //color: Colors.red,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(1.0, 2.0), color: Colors.grey, blurRadius: 10.0)
          ]),
      margin: EdgeInsets.all(30),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  height: 200,
                  width: 350,
                  image: AssetImage('assets/mainImage.png'),
                  fit: BoxFit.cover,
                ),
              ),
              //Image.asset('asset/Image.png', fit: BoxFit.cover,),

              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Container(
                  height: 80,
                  width: 354,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10 daily task to complete today!',
                          //  style: titleCardTextstyle,
                        ),
                        Text('blast your productivity.')
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget cardSlide() {
    List<ModelList> sliderCard = [
      ModelList(
          title: 'Hunger Team Night',
          avatar: 'assets/Ellipse 2.png',
          color: Colors.orange),
      ModelList(
          title: 'Hunger Team Night',
          avatar: 'assets/Ellipse 4.png',
          color: Colors.purple),
    ];
    return Container(
      //height: 250,
      //color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Group task',
              style: titleStyle,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 190,
            //color: Colors.amber,
            child: ListView.separated(
              //shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: sliderCard.length,
              separatorBuilder: (context, index) => SizedBox(width: 20),
              itemBuilder: (context, index) {
                return CardSlideBar(
                  isFirst: index == 0,
                  isLast: index + 1 == sliderCard.length,
                  title: sliderCard[index].title!,
                  slideActive: sliderCard[index].color!,
                  slideInActive: sliderCard[index].color!,
                  avatar: sliderCard[index].avatar!,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget cardGraph() {
    return Container(
        height: 225,
        // decoration: BoxDecoration(
        //   color: Colors.white
        // ),
        //width: 360,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ChartGraph(),
        ));
  }
}
