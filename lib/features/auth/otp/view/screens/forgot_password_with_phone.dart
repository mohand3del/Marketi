import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marketi/core/constant/color.dart';
import 'package:marketi/core/constant/string.dart';
import 'package:marketi/core/helper/app_regex.dart';
import 'package:marketi/core/widgets/custom_text_field.dart';
import 'package:marketi/features/auth/login/view/widget/custom_back_arrow_bottom.dart';
import 'package:marketi/features/auth/login/view/widget/custom_bottom.dart';

class ForgotPasswordPhone extends StatelessWidget {
   ForgotPasswordPhone({super.key});
  late String phoneNumber;
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
                'assets/images/Illustration_Forgot_Password_With_Phone.png'),
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
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            child:  CustomTextField(
                hintText: '0123456789',
                contentPadding: EdgeInsets.symmetric(horizontal:20,),
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(top: 14, left: 16, bottom: 16 ),
                  child: FaIcon(
                    FontAwesomeIcons.mobileScreenButton,
                    size: 16,
                  ),
                ),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !AppRegex.isPhoneNumberValid(value)) {
                    return 'Please enter a valid phone number';
                  }
                }),
          ),
          CustomBottom(
              text: 'Send Code',
              onPressed: () {
                Navigator.pushNamed(context, Routes.otpPhone,
                    );
              }),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.forgotPassword);
              },
              child: Text(
                'Try Another Way',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColor.primaryColor),
              ))
        ],
      )),
    );
  }
}
