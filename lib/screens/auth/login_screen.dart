
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constants/colors.dart';
import '../../widgets/gradient_button.dart';
import '../../widgets/login_field.dart';
import '../../widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Image.asset('assets/images/death_note.png'),
          
          SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                54.heightBox,
                Image.asset('assets/images/signin_balls.png'),
                const Text('Sign In',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 44,
                        color: Colors.green)),
                50.heightBox,
                const SocialButton(
                    iconPath: 'assets/animations/svgs/g_logo.svg',
                    label: 'Sign in with Google'),
                20.heightBox,
                const SocialButton(
                    iconPath: 'assets/animations/svgs/f_logo.svg',
                    label: 'Sign in with Facebook',
                    horizontalPadding: 50),
                20.heightBox,
                const Text('Or',
                    style: TextStyle(color: whiteColor, fontSize: 18)),
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
                Container(
                  width:double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text('Forgot \nPassword?',
                              style: TextStyle(
                                  color: whiteColor, fontSize: 18))),
                      
                      TextButton(
                          onPressed: () => Navigator.pushNamed(context, '/signup'),
                          child: const Text('Don\'t have \nan account?',
                              style: TextStyle(
                                  color: whiteColor, fontSize: 18))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        ]
      ),
    );
  }
}
