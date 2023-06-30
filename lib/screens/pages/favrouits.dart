import 'package:flutter/material.dart';

class FavouritsPage extends StatefulWidget {
  const FavouritsPage({super.key});

  @override
  State<FavouritsPage> createState() => _FavouritsPageState();
}

class _FavouritsPageState extends State<FavouritsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: const Text('Clothing Ecommerce App')),
      body: const Center(
        child: Text('Favourits Page'),
      ),
    ));
  }
}