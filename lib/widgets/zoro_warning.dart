import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:flutter/material.dart';


class ZoroWarning extends StatelessWidget {
  const ZoroWarning({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/zoro.png',width: 300,height: 300, ),
        Positioned(
          top: 100,
          
          right: 10,
          
          child: Text('Dont Think About It \nJust buy it ',style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: whiteColor), textAlign: TextAlign.center,))
      ],
    );
  }
}