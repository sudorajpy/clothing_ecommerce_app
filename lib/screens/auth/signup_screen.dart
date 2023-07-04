
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constants/colors.dart';
import '../../widgets/gradient_button.dart';
import '../../widgets/login_field.dart';
import '../../widgets/social_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Center(child: Image.asset('assets/images/kira.png')),
          
          SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                54.heightBox,
                Image.asset('assets/images/signin_balls.png'),
                const Text('Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 44,
                        color: Colors.white)),
                40.heightBox,
                const LoginField(
                  hintText: 'Name',
                  keyboardType: TextInputType.name,
                ),
                20.heightBox,
                const LoginField(
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                20.heightBox,
                const LoginField(
                  hintText: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                ),
                30.heightBox,
                const GradientButton(
                  buttonText: 'Sign In',
                ),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SocialIconButton(
                      iconPath: 'assets/animations/svgs/g_logo.svg',
                    ),
                    50.widthBox,
                    const SocialIconButton(
                      iconPath: 'assets/animations/svgs/f_logo.svg',
                    ),
                  ],
                ),
                10.heightBox,
                TextButton(
                    onPressed: () {},
                    child: const Text('Already have an account?',
                        style:
                            TextStyle(color: whiteColor, fontSize: 18))),
              ],
            ),
          ),
        ),
        ]
      ),
    );
  }
}
