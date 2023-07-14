import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:clothing_ecommerce_app/widgets/common_button.dart';
import 'package:flutter/material.dart';

import '../data/tshirt_data_dummy.dart';
import '../screens/pages/cart/cart_screen.dart';

class AppBarNav extends StatelessWidget {
  const AppBarNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: backgroundColor,
          width: double.infinity,
          // margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:15, left: 15),
                child: CommonButton(
              
                  color: kDarkYellow,
                    child: const Icon(Icons.filter_list,
                        color: kWhiteColor, size: 22)),
              ),
              // Spacer(), //fontSize: 18.sp, fontWeight: FontWeight.w700
              Padding(
                padding: const EdgeInsets.only(top:8),
                child: Image.asset('assets/icons/logo.png', height: 100, width: 100),),
              
              // Spacer(),
              Padding(
                padding: const EdgeInsets.only(top:15, right: 15),
                child: CommonButton(
                  // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen(dummyTshirts: dummyTshirts.where((e) => e.isAddedToCart == true).toList(),)),),
                  color: Colors.green,
                    child: const Icon(Icons.card_travel,
                        size: 20, color: kWhiteColor)),
              ),
            ],
          ),
        ),
    );
  }
}
