import 'package:flutter/material.dart';

class BuyAndAddToCardButton extends StatelessWidget {
  const BuyAndAddToCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50,
      // color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            child: Container(
              // margin: const EdgeInsets.only(left: 40),
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: const Text(
                  'Add to cart',
                  style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 18),
                ),
              ),
            ),
          ),
          InkWell(
            child: Container(
              
              // margin: const EdgeInsets.only(left: 30),
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: const Text(
                  'Buy Now',
                  style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 18),
                ),
              ),
            ),

          ),
        ],
      ),
    );
  }
}