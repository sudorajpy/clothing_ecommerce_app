import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:flutter/material.dart';

class RecommendCard extends StatelessWidget {
  const RecommendCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 454,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/luffy_peeking.png'),
              const Text('On Which You \nGonna Click',style: TextStyle(color: whiteColor,fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),
          
            
          SizedBox(
            height: 300,
            child: Positioned(
              
              bottom: 0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  
                  buildCard('assets/images/pic1.jpg', 'New Arrivals'),
                  buildCard('assets/images/pic2.jpg', 'Best Seller'),
                  buildCard('assets/images/pic3.jpg', 'Plus Size'),
                  buildCard('assets/images/pic4.jpg', 'Casual'),
                  
                ],
              ),
            ),
          ),

          
        ]
      ),
    );
  }
}


Widget buildCard(String imagePath, String text) => Container(
  height: 300,
  width: 200,
  // color: Colors.white,
  margin: const EdgeInsets.only(left: 20, right: 20),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
  ),
  child: Row(
    children: [
      Column(
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(text,style: const TextStyle(color: Color.fromARGB(255, 116, 36, 237),fontSize: 20,fontWeight: FontWeight.bold),)
        ],
      )
    ],
  ),
);

  
