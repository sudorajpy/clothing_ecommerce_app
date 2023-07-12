import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FilterRoundCat extends StatelessWidget {
  const FilterRoundCat({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.only(left: 15,right: 15),
            child: Row(
              // scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: backgroundColor,
                        border: Border.all(color: borderColor,width: 2)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(90),
                        child: Lottie.asset('assets/animations/json/men.json',fit: BoxFit.cover,),),
                        ),
                    
                    const SizedBox(height: 10,),
                    const Text("Men",style:TextStyle(color: whiteColor)),
                  ],
                ),
                const SizedBox(width: 30,),
                Column(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: backgroundColor,
                        border: Border.all(color: borderColor,width: 2)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(90),
                        child: Lottie.asset('assets/animations/json/girl.json',fit: BoxFit.cover,),
                        ),
                    ),
                    const SizedBox(height: 10,),
                    const Text("Girl",style:TextStyle(color: whiteColor)),
                  ],
                ),
                const SizedBox(width: 30,),
                Column(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: backgroundColor,
                        border: Border.all(color: borderColor,width: 2)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(90),
                        child: Image.asset("assets/images/oversized.png",fit: BoxFit.cover,),),
                    ),
                    const SizedBox(height: 10,),
                    const Text("Full Sleeve",style:TextStyle(color: whiteColor)),
                  ],
                ),
                const SizedBox(width: 30,),
                Column(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.deepPurple,
                        border: Border.all(color: borderColor,width: 2)
                      ),
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(90),
                        child: Image.asset("assets/images/tshirt2.webp",fit: BoxFit.cover,),),
                    ),
                    const SizedBox(height: 10,),
                    const Text("Half Sleeve",style:TextStyle(color: whiteColor)),
                  ],
                ),
                const SizedBox(width: 30,),
                Column(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.deepPurple,
                        border: Border.all(color: borderColor,width: 2)
                      ),
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(90),
                        child: Image.asset("assets/images/fat_luffy.gif",fit: BoxFit.cover,),),
                    ),
                    const SizedBox(height: 10,),
                    const Text("Plus Size",style:TextStyle(color: whiteColor)),
                  ],
                ),
              ],
            ),
        
      ),
    );
  }
}