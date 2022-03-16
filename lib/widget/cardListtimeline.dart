import 'package:flutter/material.dart';

class ListTimeLine extends StatelessWidget {
  final String? title;
  final String? imgUrl;
  final String? subTitle;

  ListTimeLine({this.title, this.subTitle, this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 20),
      child: GestureDetector(
        onTap: () {},
        child: Container(
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 2.0,
                  offset: Offset(2.0, 2.0),
                  color: Colors.grey,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.people,
                      color: Colors.deepOrange,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('Meeting team'),
                  Spacer(),
                  Text('11.00 AM')
                ],
              ),
            )),
      ),
    );
  }
}
