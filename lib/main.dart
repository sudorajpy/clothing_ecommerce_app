
import 'package:clothing_ecommerce_app/screens/auth/login_screen.dart';
import 'package:clothing_ecommerce_app/screens/auth/signup_screen.dart';
import 'package:clothing_ecommerce_app/screens/dashboard.dart';
import 'package:clothing_ecommerce_app/screens/pages/cart/cart_screen.dart';


import 'package:clothing_ecommerce_app/screens/pages/home.dart';
import 'package:clothing_ecommerce_app/screens/pages/order/order_screen.dart';

import 'package:clothing_ecommerce_app/screens/pages/profiles/profile_without_login.dart';
import 'package:clothing_ecommerce_app/screens/splash_screen.dart';



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
      home: const OrderScreen(),


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
      // '/detail': (context) => DetailsPageMen(),
      '/cart': (context) => const CartScreen(),
      '/order': (context) => const OrderScreen(),
  }
    );

  }
}

