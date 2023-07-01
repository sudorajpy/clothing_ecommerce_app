import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants/colors.dart';

class HeaderAnimation extends StatelessWidget {
  const HeaderAnimation(
      {super.key,});

  

  // bool animate = false;
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
          
          // child:Image.asset(
          //   'assets/images/luffy_sparkling1.webp',
          //   fit: BoxFit.cover,
          // ),
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
          child: Text('Wow! Amazing',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: whiteColor),textAlign: TextAlign.center,),
        )
      )
      
    ]);
  }
}


// Container(
//         margin: const EdgeInsets.only(top: 60, left: 35),
//         width: 425,
//         // margin: const EdgeInsets.symmetric(
//         //   horizontal: 35,
//         // ),
//         child: Row(
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
//                 ),
//                 Text(
//                   subTitle,
//                   style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
//                 ),
//                 Container(
//                   height: 50,
//                   width: 90,
//                   margin: const EdgeInsets.only(left: 85),
//                   decoration: BoxDecoration(
//                     color: Colors.transparent,
//                     border: Border.all(color: kTextColor, width: 1),
//                     borderRadius: BorderRadius.circular(25),
//                   ),
//                   child: const Center(
//                     child: Text(
//                       'Buy Now',
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             const SizedBox(width: 30),
//             Container(
//               margin: const EdgeInsets.only(bottom: 15),
//               child: Image.asset(
//                 image,
//                 height: 140,
//                 width: 120,
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ],
//         ),
//       ),