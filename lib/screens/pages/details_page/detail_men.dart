import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:clothing_ecommerce_app/widgets/common_button.dart';
import 'package:clothing_ecommerce_app/widgets/delivery_box_widget.dart';
import 'package:clothing_ecommerce_app/widgets/detailPage_men/room_detail_card.dart';
import 'package:clothing_ecommerce_app/widgets/detailPage_men/size_chart_men.dart';
import 'package:flutter/material.dart';

class DetailsPageMen extends StatefulWidget {
  const DetailsPageMen({super.key});

  @override
  State<DetailsPageMen> createState() => _DetailsPageMenState();
}

class _DetailsPageMenState extends State<DetailsPageMen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          
          children: [
            Image.asset('assets/images/law1.png'),
            
            Positioned(
              left: 10,
              top: 10,
              child: CommonButton(color: const Color.fromARGB(255, 255, 176, 7),
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

            const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  RoomDetailCard(roomColour: roomColor),
                  Text('About Tshirt Short Description\nit can be 2 lines', style: TextStyle(color: Color.fromARGB(255, 255, 176, 7),fontSize: 18),textAlign: TextAlign.center,),
                  Divider(color: Colors.grey,thickness: 5,),
                  SizeColorRoomMen(),
                  Divider(color: Colors.grey,thickness: 5,),
                  DeliveryBoxWidget(deliveryBoxColor: roomColor,),
                  Divider(color: Colors.grey,thickness: 5,),
                ],
              ),
            ),
          ],
        ),
      )));
  }
}