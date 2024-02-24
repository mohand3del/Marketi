import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/di/dependency_injection.dart';
import 'package:marketi/features/auth/login/view/screen/login_screen.dart';
import 'package:marketi/features/auth/login/view/screen/on_boarding.dart';
import 'package:marketi/features/auth/otp/view/screens/congratulations_screen.dart';
import 'package:marketi/features/auth/otp/view/screens/create_new_password.dart';
import 'package:marketi/features/auth/otp/view/screens/forgot_password_screen.dart';
import 'package:marketi/features/auth/otp/view/screens/forgot_password_with_phone.dart';
import 'package:marketi/features/auth/otp/view/screens/otp_email_screen.dart';
import 'package:marketi/features/auth/otp/view/screens/otp_phone_screen.dart';
import 'package:marketi/features/auth/signUp/view/screens/sign_up_screen.dart';
import 'package:marketi/features/auth/login/view/screen/splash_screen.dart';
import 'package:marketi/features/auth/login/view_model/cubit/login_cubit/login_cubit.dart';

import 'package:marketi/features/home/presentation/view/home_view.dart';
import 'package:marketi/features/layout/presentation/view/layout_view.dart';

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
      case Routes.forgotPassword:
        return MaterialPageRoute(builder: (_) => ForgotPasswordScreen());
      case Routes.forgotPasswordPhone:
        return MaterialPageRoute(builder: (_) => ForgotPasswordPhone());
      case Routes.otpPhone:
        return MaterialPageRoute(builder: (_) => OtpPhoneScreen());
      case Routes.otpEmail:
        return MaterialPageRoute(builder: (_) => OtpEmailScreen());
      case Routes.congratulationsScreen:
        return MaterialPageRoute(builder: (_) =>CongratulationsScreen());
      case Routes.createNewPass:
        return MaterialPageRoute(builder: (_) => CreateNewPassword());
      case Routes.createNewPass:
        return MaterialPageRoute(builder: (_) => CreateNewPassword());
      case Routes.layout:
        return MaterialPageRoute(builder: (_) => LayoutView());
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
