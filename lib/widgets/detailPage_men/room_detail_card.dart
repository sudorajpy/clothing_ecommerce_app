import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class RoomDetailCard extends StatelessWidget {
  final Color roomColour;
  const RoomDetailCard({Key? key,required this.roomColour}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 400,
        height: 400,
        decoration: BoxDecoration(
          color: roomColour.withOpacity(0.5),
          borderRadius: BorderRadius.circular(400),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Positioned(
            child: Text(
              'Room..!',
              style: TextStyle(color: roomColor, fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: 280,
            height: 280,
            // color: roomColor,
            // decoration: BoxDecoration(
            //   color: Colors.deepPurple.withOpacity(0.3),
            //   borderRadius: BorderRadius.circular(400),
            // ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildCard('assets/images/tshirt2_1.png'),
                buildCard('assets/images/tshirt2_2.png'),
                buildCard('assets/images/tshirt2_3.png'),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            child: Container(
                width: double.maxFinite,
                height: 40,
                child: Text(
                  'Attack On Titan',
                  style: TextStyle(color: whiteColor, fontSize: 24),
                  textAlign: TextAlign.center,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '4.7',
                style: TextStyle(color: whiteColor, fontSize: 24),
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
            ],
          )
        ],
      )
    ]);
  }
}

Widget buildCard(String imagePath) => Container(
      width: 300,
      height: 300,
      child: ClipRRect(
        child: Image.asset(
          imagePath,
          fit: BoxFit.fill,
        ),
      ),
    );
