
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;

  const LoginField({super.key, required this.hintText, required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 300),
      child: TextField(
        style: const TextStyle(color: Colors.green, fontSize: 18),
        keyboardType:keyboardType ,
        decoration: InputDecoration(
              border: OutlineInputBorder(
                 borderSide: const BorderSide(color: gradient1),
                 borderRadius: BorderRadius.circular(10),
              ),
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.white),
              
            ),
      ),
    );
  }
}




// decoration: InputDecoration(
          
//           // fillColor: whiteColor,
          
//           contentPadding:
//               const EdgeInsets.symmetric(horizontal: 600, vertical: 15),
//           enabledBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: borderColor, width: 3),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: gradient2),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           hintText: hintText,
//           hintStyle: TextStyle(color:Colors.green),

//         ),