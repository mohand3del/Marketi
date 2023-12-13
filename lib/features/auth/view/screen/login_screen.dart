import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/constant/string.dart';
import 'package:marketi/core/widgets/custom_text_field.dart';
import 'package:marketi/features/auth/view/widget/custom_bottom.dart';
import 'package:marketi/features/auth/view/widget/other_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 60.h,),
              Image.asset(

                'assets/images/Logo_Log_In.png',
                height: 232.h,
                width: 272.w,
              ),
                SizedBox(height:22.h ,),
              CustomTextField(
                hintText: 'Username or Email',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  size: 18.sp,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomTextField(
                hintText: 'Password',
                prefixIcon: Icon(
                  Icons.lock_outline_rounded,
                  size: 18,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xff3F80FF),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500
                        ),
                      )),
                ),
              ),//Forgot Password Bottom
              SizedBox(height: 12.h,),
              CustomBottom(text: 'Log In',),
              SizedBox(height: 12.h,),
              Align(
                alignment: Alignment.center,
                child: Text('Or Continue With',style: TextStyle(
                  color: Color(0xff51526C),
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp
                ),),
              ),
              SizedBox(height: 12.h,),
             CustomOtherLogin(),

              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Are you new in Marketi',
                              style: TextStyle(
                                color: Color(0xFF51526B),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),
                            TextSpan(
                              text: ' ',
                              style: TextStyle(
                                color: Color(0xFFDCDDDF),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context,signup );
                      },
                      child: Text(
                        'register?',
                        style: TextStyle(
                          color: Color(0xFF3F80FF),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                        ),
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
