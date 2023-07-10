import 'dart:async';


import 'package:clothing_ecommerce_app/screens/dashboard.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

import '../constants/colors.dart';
import '../constants/strings.dart';
import '../constants/styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const DashBoard()));
    });
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/images/itachi.gif')),
            // Lottie.asset('assets/animations/json/splash_animation.json',
            //     width: 300, height: 300),
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            // const Spacer(),
            const Align(
                alignment: Alignment.bottomCenter,
                child: Text(credits,
                    style: TextStyle(
                        color: whiteColor,
                        fontSize: 14,
                        fontFamily: semibold))),
            const SizedBox(height: 20)
          ],
        )),
      );
    }
  }

