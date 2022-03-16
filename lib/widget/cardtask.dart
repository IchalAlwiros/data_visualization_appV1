import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final String? title;
  final String? imgUrl;
  final String? subTitle;

  CardList({this.title, this.subTitle, this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 5.0,
                offset: Offset(2.0, 3.0),
                color: Colors.grey,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Container(
                  // width: 200,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      )),
                  child: SizedBox(
                    width: 100,
                    height: 90,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/Ellipse 6.png',
                        //'asset/image 82.png',
                        fit: BoxFit.cover,
                        //width: 100,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'asasas',
                        //style: courseTitleListCard,
                      ),
                      Text(
                        'asasa',
                        //style: coursesubTitleListCard,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text('data')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
