import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/constant/string.dart';
import 'package:marketi/features/auth/login/data/model/login_request_body.dart';
import 'package:marketi/features/auth/login/view/widget/LoginBlocListener.dart';
import 'package:marketi/features/auth/login/view/widget/custom_bottom.dart';
import 'package:marketi/features/auth/login/view/widget/email_and_password.dart';
import 'package:marketi/features/auth/login/view/widget/other_login.dart';
import 'package:marketi/features/auth/login/view_model/cubit/login_cubit/login_cubit.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 12),
          child: SingleChildScrollView(
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


                EmailAndPassword(),


                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.forgotPasswordPhone);
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: const Color(0xff3F80FF),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500
                          ),
                        )),
                  ),
                ),//Forgot Password Bottom
                SizedBox(height: 12.h,),
                 CustomBottom(text: 'Log In',  onPressed: () {

                     print(context.read<LoginCubit>().emailController.text);
                     print( context.read<LoginCubit>().passwordController.text);
                     print('object');
                     validateThenDoLogin(context);

                 },
                 ),
                SizedBox(height: 14.h,),
                Align(
                  alignment: Alignment.center,
                  child: Text('Or Continue With',style: TextStyle(
                    color: const Color(0xff51526C),
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp
                  ),),
                ),
                SizedBox(height: 14.h,),
               const CustomOtherLogin(),

                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Align(
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
                          Navigator.pushNamed(context,Routes.signup );
                        },
                        child:  Text(
                          'register?',
                          style: TextStyle(
                            color: Color(0xFF3F80FF),
                            fontSize: 14.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0.11,
                          ),
                        ),
                      ),
                      LoginBlocListener(),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    }
  }

}


