import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/colors.dart';

class HeaderAnimation extends StatelessWidget {
  const HeaderAnimation(
      {super.key,});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: 350,
        margin: const EdgeInsets.only(right: 15, left: 15, top: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Lottie.asset('assets/animations/json/wow_animation.json',fit: BoxFit.cover,),
        ),
      ),
      Positioned(
        bottom: -1,
        left: 0,
        right: 0,
        child:Container(
          width: double.infinity,
          height: 50,
          color: backgroundColor.withOpacity(0.7),
          child: const Text('Wow! Amazing',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: whiteColor),textAlign: TextAlign.center,),
        )
      )
      
    ]);
  }
}


