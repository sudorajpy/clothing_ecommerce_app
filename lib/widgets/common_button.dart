
import 'package:clothing_ecommerce_app/constants/colors.dart';
import 'package:flutter/material.dart';



class CommonButton extends StatelessWidget {
  Widget child;
  double? height;
  double? width;
  VoidCallback? onTap;
  Color? color;

  CommonButton({required this.child, this.height, this.width,this.color, this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: height ?? 30,
            width: width ?? 40,
            transform: Matrix4.rotationZ(-0.13),
            decoration: BoxDecoration(
              borderRadius:const BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(17),
                bottomRight: Radius.circular(23),
                bottomLeft: Radius.circular(20),
              ),
              color:color ?? kLightYellow ,
            ),
            // child: Center(child: child),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8, left: 5),
            child: child,
          )
        ],
      ),
    );
  }
}