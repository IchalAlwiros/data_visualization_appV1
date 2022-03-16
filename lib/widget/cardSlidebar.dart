import 'package:data_visialization/theme/theme.dart';
import 'package:data_visialization/widget/slider.dart';
import 'package:data_visialization/widget/sliderCustom.dart';
import 'package:flutter/material.dart';

class CardSlideBar extends StatelessWidget {
  final String? title, avatar;
  final Color? slideActive, slideInActive;
  final bool? isFirst, isLast;

  CardSlideBar(
      {this.isFirst,
      this.isLast,
      this.title,
      this.avatar,
      this.slideActive,
      this.slideInActive});

  @override
  Widget build(BuildContext context) {
    // List<AvatarList> avatarList = [
    //   AvatarList(
    //     avatar1: 'assets/Ellipse 3.png',
    //   ),

    // ];
    return Container(
      width: 250,
      height: 100,
      margin: EdgeInsets.only(
        left: isFirst! ? 20 : 0,
        right: isLast! ? 20 : 0,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(1.0, 2.0), blurRadius: 5.0, color: Colors.grey)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title!,
                  style: titleCardSlide,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1.0, 1.0),
                              color: Colors.grey,
                              blurRadius: 5.0)
                        ]),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios),
                      iconSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                AvatarCard(avatar: avatar!),
                SizedBox(width: 10),
                AvatarCard(avatar: avatar!),
                SizedBox(width: 10),
                AvatarCard(avatar: avatar!),
                SizedBox(width: 10),
                AvatarCard(avatar: avatar!),
                SizedBox(width: 10),
                // Image.asset(
                //   'assets/Ellipse 3.png',
                //   height: 35,
                // ),
                // SizedBox(width: 10),
                // Image.asset(
                //   'assets/Ellipse 4.png',
                //   height: 35,
                // ),
                // SizedBox(width: 10),
                // Image.asset(
                //   'assets/Ellipse 5.png',
                //   height: 35,
                // ),
              ],
            ),
            SizedBox(height: 10),
            SlidertoCard(
              colorActive: slideActive!,
              colorInactive: slideInActive!,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Progress'), Text('data')],
            )
          ],
        ),
      ),
    );
  }
}
