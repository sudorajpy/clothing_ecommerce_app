import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.home, size: 30,),
      const Icon(Icons.category_sharp, size: 30,),
      const Icon(Icons.search, size: 30,),
      const Icon(Icons.shopping_cart, size: 30,),
      const Icon(Icons.person, size: 30,),

    ];
    return Scaffold(
        appBar: AppBar(title: const Text('Clothing Ecommerce App')),
        bottomNavigationBar: const GNav(
          gap: 8,
          backgroundColor: backgroundColor,
          color: Colors.white,
          activeColor: Color.fromARGB(255, 144, 32, 230),
          tabBackgroundColor: Color.fromARGB(255, 97, 83, 119),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.favorite_border,
              text: 'Favourites',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
          
        ],)
        );
  }
}
