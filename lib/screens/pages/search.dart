import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(title: const Text('Clothing Ecommerce App')),
      body: Center(
        child: Stack(
          children: [
            Image.asset('assets/images/girl_searching.gif',),
          ],
        ),
      )
    ),
    );
  }
}