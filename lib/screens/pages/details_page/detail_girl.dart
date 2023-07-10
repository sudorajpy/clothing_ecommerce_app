import 'package:clothing_ecommerce_app/widgets/delivery_box_widget.dart';
import 'package:clothing_ecommerce_app/widgets/detailPage_girl.dart/size_chart_girl.dart';
import 'package:clothing_ecommerce_app/widgets/detailPage_men/room_detail_card.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../models/tshirt_model.dart';
import '../../../widgets/common_button.dart';
import '../../../widgets/reviews_ratings_widget.dart';

class DetailPageGirl extends StatefulWidget {
  final TshirtModelData tShirt;
  const DetailPageGirl({super.key, required this.tShirt});

  @override
  State<DetailPageGirl> createState() => _DetailPageGirlState();
}

class _DetailPageGirlState extends State<DetailPageGirl> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          
          children: [
            Center(child: Image.asset('assets/images/boa_hancock.png')),
            
            
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [

                  RoomDetailCard(roomColour: roomColorGirl,imagePath: widget.tShirt.imagePath,name: widget.tShirt.name, ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    color: roomColorGirl.withOpacity(0.5),
                    child: Text(widget.tShirt.description, style: TextStyle(color: whiteColor,fontSize: 18),textAlign: TextAlign.center,)),
                  Divider(color: Colors.grey,thickness: 5,),
                  SizeColorRoomGirl(tshirtColor: widget.tShirt.color,),
                  DeliveryBoxWidget(deliveryBoxColor: roomColorGirl,),
                  Divider(color: Colors.grey,thickness: 5,),
                  ReviewsAndRatings(),
                ],
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: CommonButton(
                onTap: () {
                        Navigator.of(context).pop();
                      },
                color: const Color.fromARGB(255, 255, 176, 7),
              child: const Icon(Icons.arrow_back_ios,color: Colors.red,),)),
              Positioned(
              right: 10,
              top: 10,
              child: CommonButton(color: const Color.fromARGB(255, 255, 176, 7),
              child: const Icon(Icons.card_travel,color: Colors.green,),)),
              Positioned(
              right: 10,
              top: 50,
              child: CommonButton(color: const Color.fromARGB(255, 255, 176, 7),
              child: const Icon(Icons.favorite,color: Colors.red,),)),
              Positioned(
              right: 10,
              top: 90,
              child: CommonButton(color: const Color.fromARGB(255, 255, 176, 7),
              child: const Icon(Icons.share,color: Color.fromARGB(255, 126, 32, 188),),)),
          ],
        ),
      )));
  }
}