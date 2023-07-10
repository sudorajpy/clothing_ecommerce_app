import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class ProfileWithoutPage extends StatefulWidget {
  const ProfileWithoutPage({super.key});

  @override
  State<ProfileWithoutPage> createState() => _ProfileWithoutPageState();
}

class _ProfileWithoutPageState extends State<ProfileWithoutPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: backgroundColor,
            // appBar: AppBar(title: const Text('')),
            body: Center(
              child: Stack(
                children: [
                  Center(child: Image.asset('assets/images/ace.png')),
                  Positioned(
                      left: 100,
                      right: 100,
                      top: 340,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            'Broo... You need to Login',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          )))
                ],
              ),
            )));
  }
}
