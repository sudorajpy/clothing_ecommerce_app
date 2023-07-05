import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:clothing_ecommerce_app/widgets/custome_appbar.dart';
import 'package:clothing_ecommerce_app/widgets/filter_cat.dart';
import 'package:clothing_ecommerce_app/widgets/header_poster.dart';
import 'package:clothing_ecommerce_app/widgets/delivery_animation.dart';
import 'package:clothing_ecommerce_app/widgets/recommend_card.dart';
import 'package:clothing_ecommerce_app/widgets/trending_card.dart';
import 'package:clothing_ecommerce_app/widgets/trending_categories.dart';
import 'package:clothing_ecommerce_app/widgets/zoro_warning.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const AppBarNav(),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: backgroundColor,
        child: Center(
            child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const HeaderAnimation(),
            const SizedBox(
              height: 20,
            ),
            const FilterRoundCat(),
            const ZoroWarning(),
            const TrendingCard(),
            const SizedBox(
              height: 20,
            ),
            const RecommendCard(),
            // SizedBox(
            //   height: 40,
            // ),
            const DeliveryAnimation(),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LottieBuilder.asset('assets/animations/json/hand_down.json'),
                  const Text(
                    'Trending Categories',
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold, color: whiteColor),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            // const TrendCategories(),
          ],
        )),
      ),
    );
  }
}
