import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/constant/color.dart';
import 'package:marketi/features/auth/login/view/widget/custom_back_arrow_bottom.dart';
import 'package:marketi/features/auth/login/view/widget/custom_bottom.dart';
import 'package:marketi/features/auth/otp/view_model/cubit/forgot_cubit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpEmailScreen extends StatelessWidget {
  OtpEmailScreen({super.key, this.email});
  String? email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                  child: Row(
                    children: [
                      const CustomArrowBackBottom(),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        'Verification Code',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.navy,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Image.asset(
                  'assets/images/Illustration_Verification_Code_With_Email.png',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: '     Please enter the 6 digit code\n   sent to:',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColor.navy,
                            ),
                          ),
                          TextSpan(
                            text: email.toString(),
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColor.primaryColor,
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    child: PinCodeTextField(
                      //keyboardType: ,

                      length: 6,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(

                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(6.r),
                        fieldHeight: 50.h,
                        fieldWidth:50.w,
                        activeFillColor: Colors.white,
                        activeColor: AppColor.primaryColor,
                        inactiveColor: AppColor.lightBlue,
                        inactiveFillColor: Colors.white,
                        selectedFillColor:Colors.white ,
                        disabledColor:Colors.white ,
                        borderWidth: 0.1,
                        activeBorderWidth: 1.5,
                        inactiveBorderWidth: 1.5,
                        selectedBorderWidth: 1.5,

                      ),
                      animationDuration: Duration(milliseconds: 300),
                      backgroundColor: Colors.white,


                     // enableActiveFill: true,
                      //errorAnimationController: errorController,
                      //controller: textEditingController,
                      onCompleted: (v) {
                        print("Completed");
                      },
                      onChanged: (value) {
                        print(value);
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                      appContext: context,
                    )),
                CustomBottom(text: 'Verify Code', onPressed: () {}),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    '00:45',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.navy,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Resend Code',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColor.navy,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
