import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marketi/core/constant/constant.dart';
import 'package:marketi/core/constant/string.dart';
import 'package:marketi/core/helper/cache_helper.dart';



class Splash extends StatefulWidget {
  const Splash({super.key, required  Function(dynamic context) onFinished});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState()  {
    Timer(const Duration(seconds: 2), () {
      if(CacheHelper.getCacheData(key: 'onBoarding')!= null){
        if(CacheHelper.getSecuredString(SharedPrefKeys.userToken)!=null){
          Navigator.pushReplacementNamed(context, Routes.layout);

        }else{
          Navigator.pushReplacementNamed(context, Routes.login);
        }
      }else{
        Navigator.pushReplacementNamed(context, Routes.onBoarding);
      }
      //Navigator.pushReplacementNamed(context, Routes.onBoarding);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const Color(0xffFFFFFF),
      body: Center(
          child:
        Image.asset('assets/images/Logo_Splash_Screen4.png',),
    ));
  }
}
