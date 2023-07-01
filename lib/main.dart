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
      home: const SplashScreen(),
    );
  }
}

