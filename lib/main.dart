import 'package:clothing_ecommerce_app/models/tshirt_model.dart';
import 'package:clothing_ecommerce_app/screens/auth/login_screen.dart';
import 'package:clothing_ecommerce_app/screens/auth/signup_screen.dart';
import 'package:clothing_ecommerce_app/screens/dashboard.dart';
import 'package:clothing_ecommerce_app/screens/pages/details_page/detail_girl.dart';
import 'package:clothing_ecommerce_app/screens/pages/details_page/detail_men.dart';
import 'package:clothing_ecommerce_app/screens/pages/home.dart';
import 'package:clothing_ecommerce_app/screens/pages/profile_without_login.dart';
import 'package:clothing_ecommerce_app/screens/splash_screen.dart';
import 'package:clothing_ecommerce_app/widgets/trending_categories.dart';


import 'package:flutter/material.dart';
import 'constants/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: regular,
        useMaterial3: true,
      ),
      home: TrendCategories(
        data: TshirtModelData(color: Colors.black, name: 'Tshirt',  1000, 1, imagePath: 'assets/images/pic1.jpg',gender: 'male',description: 'This is a tshirt'),
      ),


      routes: {
      '/start':  (context) => const SplashScreen(),
      '/home': (context) => const HomePage(),
      // '/search': (context) => const SearchPage(),
      // '/filter': (context) => const FilterPage(),
      // '/detail': (context) => const DetailPage(),
      // '/cart': (context) => const CartPage(),
      // '/checkout': (context) => const CheckoutPage(),
      '/profile': (context) => const ProfileWithoutPage(),
      '/login': (context) => const LoginScreen(),
      '/signup': (context) => const SignUpScreen(),
      '/detail': (context) => const DetailsPageMen(),
  }
    );

   
    


  }
}

