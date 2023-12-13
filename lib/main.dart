
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/constant/string.dart';
import 'package:marketi/features/auth/view_model/AuthCubit/auth_cubit.dart';
import 'package:marketi/router.dart';


late String initialRoute;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();


  runApp( MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
final AppRouter appRouter;
   MyApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(375,812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (BuildContext context)=>AuthCubit(),)
        ],
        child: MaterialApp(
          title: 'Marketi',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          //home: const SplashScreen(),
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: splash,
        ),
      ),
    );
  }
}


