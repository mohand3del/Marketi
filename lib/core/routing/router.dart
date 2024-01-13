import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/di/dependency_injection.dart';
import 'package:marketi/features/auth/view/screen/login_screen.dart';
import 'package:marketi/features/auth/view/screen/on_boarding.dart';
import 'package:marketi/features/auth/view/screen/sign_up_screen.dart';
import 'package:marketi/features/auth/view/screen/splash_screen.dart';
import 'package:marketi/features/auth/view_model/cubit/login_cubit/login_cubit.dart';

import 'core/constant/string.dart';

class AppRouter {
  AppRouter() {}

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
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (BuildContext context) => getIt<LoginCubit>(),
                child: const LoginScreen()));
      case signup:
        return MaterialPageRoute(builder: (_) => SignUp());
    }
  }
}
