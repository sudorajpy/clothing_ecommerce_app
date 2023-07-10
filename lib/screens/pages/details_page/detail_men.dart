import 'package:clothing_ecommerce_app/components/buyandaddtocart_button.dart';
import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:clothing_ecommerce_app/models/tshirt_model.dart';
import 'package:clothing_ecommerce_app/widgets/common_button.dart';
import 'package:clothing_ecommerce_app/widgets/delivery_box_widget.dart';
import 'package:clothing_ecommerce_app/widgets/detailPage_men/room_detail_card.dart';
import 'package:clothing_ecommerce_app/widgets/detailPage_men/size_chart_men.dart';
import 'package:clothing_ecommerce_app/widgets/reviews_ratings_widget.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class DetailsPageMen extends StatefulWidget {
  final TshirtModelData tShirt;
  const DetailsPageMen({super.key, required this.tShirt});

  @override
  State<DetailsPageMen> createState() => _DetailsPageMenState();
}

class _DetailsPageMenState extends State<DetailsPageMen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: backgroundColor,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  Image.asset('assets/images/law1.png'),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        RoomDetailCard(
                          roomColour: roomColor,
                          imagePath: widget.tShirt.imagePath,
                          name: widget.tShirt.name,
                        ),
                        Text(
                          widget.tShirt.description,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 176, 7),
                              fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 5,
                        ),
                        SizeColorRoomMen(
                          tshirtColor: widget.tShirt.color,
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 5,
                        ),
                        const DeliveryBoxWidget(
                          deliveryBoxColor: roomColor,
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 5,
                        ),
                        const ReviewsAndRatings(),
                        Container(
                          height: 40,
                          width: double.infinity,
                          color: roomColor.withOpacity(0.5),
                        ),
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
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Positioned(
                      right: 10,
                      top: 10,
                      child: CommonButton(
                        color: const Color.fromARGB(255, 255, 176, 7),
                        child: const Icon(
                          Icons.card_travel,
                          color: Colors.green,
                        ),
                      )),
                  Positioned(
                      right: 10,
                      top: 50,
                      child: CommonButton(
                        color: const Color.fromARGB(255, 255, 176, 7),
                        child: const LikeButton(
                          
                        )
                      )),
                  Positioned(
                      right: 10,
                      top: 90,
                      child: CommonButton(
                        color: const Color.fromARGB(255, 255, 176, 7),
                        child: const Icon(
                          Icons.share,
                          color: Color.fromARGB(255, 126, 32, 188),
                        ),
                      )),
                  const Positioned(
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: BuyAndAddToCardButton(),
                  ),
                ],
              ),
            )));
  }
}
