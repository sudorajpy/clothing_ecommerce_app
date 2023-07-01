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
            Image.network("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjM9OTOFEVurkYAVm1C0z8MJ25t9RnMJAc7wX642-Flo5yni8TrxPdZ-0WpoFHLN4x79AiilXmj2wgug74xqXgDMuiy7e_VAE6xyQYXOi0tgovPdumHoIjvzbwX1ndPrrSkRHX5sS4q96i6BqlP4qLUHcfjhUMAUTWTzz_jlUQzBV7oMNMgjRuHkB7S1BCU/s16000/luffy_crew.png"),
          ],
        ),
      )
    ),
    );
  }
}