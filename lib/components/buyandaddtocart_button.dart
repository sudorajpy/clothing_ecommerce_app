import 'package:clothing_ecommerce_app/models/tshirt_model.dart';
import 'package:flutter/material.dart';

class BuyAndAddToCardButton extends StatefulWidget {
  const BuyAndAddToCardButton({super.key, required this.tshirt});
  final TshirtModelData tshirt;

  @override
  State<BuyAndAddToCardButton> createState() => _BuyAndAddToCardButtonState();
}

class _BuyAndAddToCardButtonState extends State<BuyAndAddToCardButton> {
  // bool isAddedToCart = false;
  String buttonText = 'Add to cart';
  void isAddedToCart() {
    if (widget.tshirt.isAddedToCart == false) {
       
      setState(() {
        widget.tshirt.isAddedToCart = true;
       buttonText = 'Added to cart';
      });
    } else {
      
      setState(() {
       buttonText = 'Add to cart';
       widget.tshirt.isAddedToCart = false;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: double.maxFinite,
      height: 50,
      // color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: isAddedToCart,
            // () {
              // if (widget.tshirt.isAddedToCart == false) {
              //   widget.tshirt.isAddedToCart = true;
              //   setState(() {
              //     buttonText = 'Added to cart';
              //   });
              //   print(widget.tshirt.isAddedToCart);
              // } else {
              //   widget.tshirt.isAddedToCart = false;
              //   print('false');
              // }
            // },
            child: Container(
              // margin: const EdgeInsets.only(left: 40),
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  buttonText,
                  style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
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
                  borderRadius: BorderRadius.circular(20),),
              child: const Center(
                child: Text(
                  'Buy Now',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
