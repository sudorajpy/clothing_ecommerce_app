import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:clothing_ecommerce_app/screens/pages/favrouits.dart';
import 'package:clothing_ecommerce_app/screens/pages/home.dart';
import 'package:clothing_ecommerce_app/screens/pages/profiles/profile_without_login.dart';

import 'package:clothing_ecommerce_app/screens/pages/search.dart';


import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';


class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const FavouritsPage(),
    const ProfileWithoutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: Container(
          color: backgroundColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 11),
            child: GNav(
              duration: const Duration(milliseconds: 200),
              haptic: true,
              iconSize: 24,
              rippleColor: const Color.fromARGB(255, 133, 58, 151),
              gap: 8,
              textSize: 24,
              selectedIndex: _selectedIndex,
              onTabChange: _navigateBottomBar,
              tabActiveBorder: Border.all(color: const Color.fromARGB(255, 133, 58, 151)),
              backgroundColor: backgroundColor,
              color: const Color.fromARGB(255, 170, 166, 166),
              activeColor: const Color.fromARGB(255, 255, 254, 255),
              tabBackgroundColor: Colors.grey.shade800,
              padding: const EdgeInsets.all(16),
              tabs: const [
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
              ],
            ),
          ),
        ));
  }
}
