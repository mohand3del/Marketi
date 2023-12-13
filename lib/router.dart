

import 'package:flutter/material.dart';
import 'package:marketi/features/auth/view/screen/login_screen.dart';
import 'package:marketi/features/auth/view/screen/on_boarding.dart';
import 'package:marketi/features/auth/view/screen/sign_up_screen.dart';
import 'package:marketi/features/auth/view/screen/splash_screen.dart';


import 'core/constant/string.dart';

class AppRouter {

  AppRouter() {

  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (_) => Splash(),
        );

      case onBoarding:
        return MaterialPageRoute(
          builder: (_) => OnBoardingScreen(),
        );
      case login:
        return MaterialPageRoute(builder: (_)=>LoginScreen());
      case signup:
        return MaterialPageRoute(builder: (_)=>SignUp());


    }
  }
}