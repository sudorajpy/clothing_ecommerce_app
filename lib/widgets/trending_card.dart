import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class TrendingCard extends StatefulWidget {
  const TrendingCard({super.key});

  @override
  State<TrendingCard> createState() => _TrendingCardState();
}

class _TrendingCardState extends State<TrendingCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 400,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildCard('assets/images/pic1.jpg', 'First Featured'),
          buildCard('assets/images/pic2.jpg', 'Second Featured'),
          buildCard('assets/images/pic3.jpg', 'Third Featured'),
          buildCard('assets/images/pic4.jpg', 'Fourth Featured'),
          
        ],
      ),
    );
  }
}


Widget buildCard(String imagePath, String text) => Container(
  height: 230,
  width: 400,
  // color: Colors.white,
  margin: const EdgeInsets.only(left: 20, right: 20),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
  ),
  child: Stack(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(imagePath,fit: BoxFit.fill,)),
      Positioned(
        bottom: 20,
        child: Container(
          height:40,
          width: 400,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(20),
            
          // ),
          color: Colors.black.withOpacity(0.5),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )
        )
      )
    ],
  ),
);
