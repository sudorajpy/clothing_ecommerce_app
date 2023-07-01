import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DeliveryAnimation extends StatelessWidget {
  const DeliveryAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20,),
        Text('Hurry I will Deliver \n   your order', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: whiteColor),),
        const SizedBox(width: 40,),
        Container(
          height: 100,
          child: Lottie.asset('assets/animations/json/delivery_animation.json'),
        ),
      ],
    );
  }
}