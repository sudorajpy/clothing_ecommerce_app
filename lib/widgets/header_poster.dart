import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';

class HeaderPoster extends StatelessWidget {
  const HeaderPoster(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});

  final String image;
  final String title;
  final String subTitle;

  // bool animate = false;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: 200,
        margin: const EdgeInsets.only(right: 15, left: 15, top: 20),
        child: SvgPicture.asset(
          'assets/animations/svgs/home_banner.svg',
          width: 310,
          height: 150,
          fit: BoxFit.fill,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 60, left: 35),
        width: 425,
        // margin: const EdgeInsets.symmetric(
        //   horizontal: 35,
        // ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
                Text(
                  subTitle,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 50,
                  width: 90,
                  margin: const EdgeInsets.only(left: 85),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: kTextColor, width: 1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(
                    child: Text(
                      'Buy Now',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(width: 30),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: Image.asset(
                image,
                height: 140,
                width: 120,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
