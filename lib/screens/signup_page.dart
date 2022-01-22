import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:handee/handee_colors.dart';
import 'package:handee/screens/signin_page.dart';
import 'package:handee/widgets/auth_screen/auth_checkbox.dart';
import 'package:handee/widgets/auth_screen/auth_textfield.dart';
import 'package:handee/icons/handee_icons.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  static const routeName = '/signup-page';

  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: HandeeColors.backgroundDark,
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 0.04 * size.height),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 200,
                      child: Text(
                        'Let\'s get you signed up!',
                        textScaleFactor: 2,
                        style: TextStyle(
                          color: HandeeColors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.09 * size.height,
                  ),
                  AuthTextField(labelText: 'Name'),
                  SizedBox(height: 25),
                  AuthTextField(labelText: 'Phone or email'),
                  SizedBox(height: 25),
                  AuthTextField(
                    labelText: 'Password',
                    icon: PeakIconButton(
                      HandeeIcons.eye_tracking_off,
                      HandeeIcons.eye_tracking_on,
                    ),
                  ),
                  SizedBox(height: 0.07 * size.height),
                  Text(
                    'Sign up with',
                    style: TextStyle(
                      color: HandeeColors.alteWhite,
                    ),
                  ),
                  SizedBox(height: 0.04 * size.height),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        HandeeIcons.facebook_icon,
                        color: HandeeColors.white,
                        size: 46,
                      ),
                      Icon(
                        HandeeIcons.google_icon,
                        color: HandeeColors.white,
                        size: 46,
                      ),
                      Icon(
                        HandeeIcons.twitter_icon,
                        color: HandeeColors.white,
                        size: 46,
                      ),
                    ],
                  ),
                  SizedBox(height: 0.05 * size.height),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have an account? ',
                        style: TextStyle(
                          color: HandeeColors.alteWhite,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pushReplacementNamed(SigninPage.routeName),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            color: HandeeColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 0.05 * size.height),
                  Container(
                    alignment: Alignment.center,
                    height: 58,
                    width: double.infinity,
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: HandeeColors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(
                    height: 0.00010 * (size.height * size.height),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
