import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/constant/color.dart';
import 'package:marketi/core/constant/string.dart';
import 'package:marketi/core/di/dependency_injection.dart';
import 'package:marketi/core/routing/router.dart';
import 'package:marketi/features/auth/login/view_model/AuthCubit/auth_cubit.dart';
import 'package:marketi/features/auth/login/view_model/cubit/login_cubit/login_cubit.dart';
import 'package:marketi/features/auth/signUp/view_model/cubit/signup_cubit.dart';
import 'package:marketi/features/layout/presentation/view_model/cubit/cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupGetIt();

  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  MyApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => AuthCubit(),
          ),
          BlocProvider(
            create: (BuildContext context) => LoginCubit(getIt()),
          ),
          BlocProvider(
            create: (BuildContext context) => SignupCubit(getIt()),
          ),
          BlocProvider(
            create: (BuildContext context) => LayoutCubit(),
          )
        ],
        child: MaterialApp(
          title: 'Marketi',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: AppColor.primaryColor,
                //background: Color(0xffFFFFFF),
           // brightness: Brightness.light
            ),

            useMaterial3: true,
          ),
          //home: const SplashScreen(),
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: Routes.splash,
        ),
      ),
    );
  }
}
