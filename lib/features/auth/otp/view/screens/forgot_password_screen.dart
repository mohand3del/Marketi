import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/constant/color.dart';
import 'package:marketi/core/constant/string.dart';
import 'package:marketi/core/helper/app_regex.dart';
import 'package:marketi/core/widgets/custom_text_field.dart';
import 'package:marketi/features/auth/login/view/widget/custom_back_arrow_bottom.dart';
import 'package:marketi/features/auth/login/view/widget/custom_bottom.dart';
import 'package:marketi/features/auth/otp/view/screens/otp_phone_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
   ForgotPasswordScreen({super.key});
  late String emailPassword = "mohand@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
            child: Row(
              children: [
                const CustomArrowBackBottom(),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColor.navy,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Image.asset(
                'assets/images/Illustration_Forgot_Password_With_Email.png'),
          ),
          Text(
            'Please enter your email address to\n        receive a verification code',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: AppColor.navy,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical:16),
            child: CustomTextField(
              hintText: 'Username or Email',
              prefixIcon: Icon(
                Icons.email_outlined,
                size: 18.sp,
              ),
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'please enter a valid email';
                }
              },
            ),
          ),
          CustomBottom(text: 'Send Code', onPressed: () {
            Navigator.pushNamed(context, Routes.otpEmail,arguments:emailPassword);
          }),
        ],
      )),
    );
  }
}
