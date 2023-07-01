
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/colors.dart';

class SocialButton extends StatelessWidget {
  final double horizontalPadding;
  final String iconPath;
  final String label;
  const SocialButton(
      {super.key,
      required this.iconPath,
      required this.label,
      this.horizontalPadding = 60});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        icon: SvgPicture.asset(
          iconPath,
          height: 30,
          width: 30,
          // ignore: deprecated_member_use
          color: whiteColor,
        ),
        label: Text(
          label,
          style: const TextStyle(color: whiteColor, fontSize: 18),
        ),
        style: TextButton.styleFrom(
          padding:
              EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 15),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: borderColor, width: 3),
          ),
        ));
  }
}

class SocialIconButton extends StatelessWidget {
  final String iconPath;
  const SocialIconButton({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          iconPath,
          height: 25,
          width: 25,
          // ignore: deprecated_member_use
          color: whiteColor,
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: borderColor, width: 3),
          ),
          shadowColor: Colors.transparent,
          elevation: 2,
        ));
  }
}
