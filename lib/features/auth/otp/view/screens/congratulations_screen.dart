import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/constant/color.dart';
import 'package:marketi/core/constant/string.dart';
import 'package:marketi/features/auth/login/view/widget/custom_back_arrow_bottom.dart';
import 'package:marketi/features/auth/login/view/widget/custom_bottom.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
          child: Column(
            children: [
            const  Padding(
                padding:  EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                child: Row(
                  children: [
                    const CustomArrowBackBottom(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Image.asset(
                    'assets/images/Illustration_Congratulations.png'),
              ),
              Text('Congratulations',style: TextStyle(
                fontSize:18.sp,
                fontWeight: FontWeight.bold,
                color: AppColor.darkBlue,
              ),),
              SizedBox(height: 24.h,),
              Text(
                'You have updated the password. please\n  login again with your latest password',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColor.navy,
                ),
              ),
              SizedBox(height: 28.h,),
              CustomBottom(text: 'Login', onPressed: () {
                Navigator.pushNamed(context, Routes.login);
              }),
            ],
          )),
    );
  }
}
