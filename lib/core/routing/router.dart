import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/di/dependency_injection.dart';
import 'package:marketi/features/auth/view/screen/login_screen.dart';
import 'package:marketi/features/auth/view/screen/on_boarding.dart';
import 'package:marketi/features/auth/view/screen/sign_up_screen.dart';
import 'package:marketi/features/auth/view/screen/splash_screen.dart';
import 'package:marketi/features/auth/view_model/cubit/login_cubit/login_cubit.dart';
import 'package:marketi/features/home/presentation/view/home_view.dart';

import '../constant/string.dart';

class AppRouter {

  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) => Splash(),
        );

      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => OnBoardingScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (BuildContext context) => getIt<LoginCubit>(),
                child: const LoginScreen()));
      case Routes.signup:
        return MaterialPageRoute(builder: (_) => SignUp());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => HomeView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
