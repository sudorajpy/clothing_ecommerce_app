import 'package:flutter/material.dart';

class TrendCategories extends StatelessWidget {
  const TrendCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildCard('assets/images/pic1.jpg', 'First Category'),
          buildCard('assets/images/pic1.jpg', 'First Category'),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildCard('assets/images/pic1.jpg', 'First Category'),
          buildCard('assets/images/pic1.jpg', 'First Category'),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildCard('assets/images/pic1.jpg', 'First Category'),
          buildCard('assets/images/pic1.jpg', 'First Category'),
        ],
      ),
    ]
        // shrinkWrap: true,
        );
  }
}

Widget buildCard(String imagePath, String text) => Container(
    width: 180,
    height: 250,
    margin: const EdgeInsets.only(top: 20,),
    // color: Colors.white,
    // margin: const EdgeInsets.only(left: 20, right: 20),
    decoration: const BoxDecoration(
      
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      color: Color.fromARGB(255, 99, 20, 20),
    ),
    child: Column(
      children: [
        ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            )),
        Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    ));
