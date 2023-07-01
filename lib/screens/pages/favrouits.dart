import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FavouritsPage extends StatefulWidget {
  const FavouritsPage({super.key});

  @override
  State<FavouritsPage> createState() => _FavouritsPageState();
}

class _FavouritsPageState extends State<FavouritsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: const Text('Clothing Ecommerce App')),
      
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: backgroundColor,
          ),
          Center(
            child: Lottie.asset('assets/animations/json/favrouits.json',)
          )
        ],
      ),
    ));
  }
}