
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class LoginField extends StatelessWidget {
  final String hintText;

  const LoginField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 300),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 600, vertical: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: borderColor, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: gradient2),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
