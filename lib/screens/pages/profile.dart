import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(title: const Text('Clothing Ecommerce App')),
      body: Center(
        child: Stack(
          children: [
            Image.asset('assets/images/itachi_uchiha.png'),
          ],
        ),
      )
    ));
  }
}