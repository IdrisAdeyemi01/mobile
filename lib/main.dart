import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:handee/handee_colors.dart';
import 'package:handee/screens/booking_details.dart';

import 'package:handee/screens/home_screen.dart';
import 'package:handee/screens/landing_page.dart';
import 'package:handee/screens/signin_page.dart';
import 'package:handee/screens/signup_page.dart';
import 'package:handee/screens/top_rated.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: HandeeColors.white,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
      //  LandingPage(),
      theme: ThemeData(),
      onGenerateRoute: (settings) {
        if (settings.name == SigninPage.routeName) {
          return MaterialPageRoute(
            builder: (_) => SigninPage(),
          );
        }
        if (settings.name == SignupPage.routeName) {
          return MaterialPageRoute(
            builder: (_) => SignupPage(),
          );
        }
        if (settings.name == TopRatedScreen.routeName) {
          return MaterialPageRoute(
            builder: (_) => TopRatedScreen(),
          );
        }
        if (settings.name == TopRatedScreen.routeName) {
          return MaterialPageRoute(
            builder: (_) => TopRatedScreen(),
          );
        }
        if (settings.name == BookingDetailsScreen.routeName) {
          return MaterialPageRoute(
            builder: (_) => BookingDetailsScreen(),
          );
        }
        // if (settings.name == ServicePage.routeName) {
        //   return CupertinoPageRoute(
        //     builder: (_) => ServicePage(),
        //   );
        // }
      },
    );
  }
}
