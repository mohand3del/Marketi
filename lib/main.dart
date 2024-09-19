import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/constant/color.dart';
import 'package:marketi/core/constant/constant.dart';
import 'package:marketi/core/constant/string.dart';
import 'package:marketi/core/di/dependency_injection.dart';
import 'package:marketi/core/helper/cache_helper.dart';
import 'package:marketi/core/routing/router.dart';
import 'package:marketi/features/auth/login/view/screen/login_screen.dart';
import 'package:marketi/features/auth/login/view/screen/on_boarding.dart';
import 'package:marketi/features/auth/login/view/screen/splash_screen.dart';
import 'package:marketi/features/auth/login/view_model/AuthCubit/auth_cubit.dart';
import 'package:marketi/features/auth/login/view_model/cubit/login_cubit/google_cubit.dart';
import 'package:marketi/features/auth/login/view_model/cubit/login_cubit/login_cubit.dart';
import 'package:marketi/features/auth/otp/view_model/cubit/forgot_cubit.dart';
import 'package:marketi/features/auth/otp/view_model/cubit/new_password_cubit.dart';
import 'package:marketi/features/auth/otp/view_model/cubit/reset_cubit.dart';
import 'package:marketi/features/auth/otp/view_model/cubit/verify_cubit.dart';
import 'package:marketi/features/auth/signUp/view_model/cubit/signup_cubit.dart';
import 'package:marketi/features/layout/home/view_model/home_cubit.dart';

import 'package:marketi/features/layout/presentation/view_model/cubit/cubit.dart';

import 'features/layout/presentation/view/layout_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await CacheHelper.cacheInit();
   // CacheHelper.getCacheData(key: 'token');
   // CacheHelper.getCacheData(key: 'onBoarding');
  //
  // String onBoarding = CacheHelper.getCacheData(key: 'onBoarding');
  //  String token = CacheHelper.getCacheData(key: 'token');

  // print(SharedPrefKeys.userToken);
   //print(token);
  setupGetIt();



  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (BuildContext context) {
     return MyApp(
        appRouter: AppRouter(),
      );
    },

  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;




  MyApp({super.key, required this.appRouter,});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => AuthCubit(),
          ),
          BlocProvider(
            create: (BuildContext context) => LoginCubit(getIt(

            )),
          ),
          BlocProvider(
            create: (BuildContext context) => SignupCubit(getIt()),
          ),
          BlocProvider(
            create: (BuildContext context) => LayoutCubit(),
          ),
          BlocProvider(
            create: (BuildContext context) => ForgotCubit(getIt()),
          ),
          BlocProvider(
            create: (BuildContext context) => ResetCubit(getIt()),
          ),
          BlocProvider(
            create: (BuildContext context) => VerifyCubit(getIt()),
          ),
          BlocProvider(
            create: (BuildContext context) => NewPasswordCubit(getIt()),
          ),
          BlocProvider(create: (BuildContext context) => GoogleCubit(getIt()),),
          BlocProvider(create: (BuildContext context) => HomeCubit(getIt(),getIt())..getCategories()..getPopularProducts()),
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
          initialRoute:Routes.splash,
          builder: DevicePreview.appBuilder,


          //home:startWidget ,
        ),
      ),
    );
  }
}
