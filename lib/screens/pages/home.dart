import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:clothing_ecommerce_app/widgets/custome_appbar.dart';
import 'package:clothing_ecommerce_app/widgets/filter_cat.dart';
import 'package:clothing_ecommerce_app/widgets/header_poster.dart';
import 'package:clothing_ecommerce_app/widgets/trending_card.dart';
import 'package:flutter/material.dart';

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
        color: kLightYellow,
        child: Center(
            child: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            HeaderPoster(
                image: 'assets/images/tshirt11.png',
                title: '50% Off',
                subTitle: 'Unbelievable visual & \nperformance'),
            SizedBox(
              height: 20,
            ),
            FilterRoundCat(),
            SizedBox(
              height: 20,
            ),
            TrendingCard(),
          ],
        )),
      ),
    );
  }
}
