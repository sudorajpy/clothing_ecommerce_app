import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:flutter/material.dart';

class ReviewsAndRatings extends StatelessWidget {
  const ReviewsAndRatings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 100,
      color: roomColor.withOpacity(0.5),
      child: Center(child: Text('Reviews and Ratings \n will be updated soon',style: TextStyle(color: Colors.red,fontSize: 22),textAlign: TextAlign.center,))
    );
  }
}