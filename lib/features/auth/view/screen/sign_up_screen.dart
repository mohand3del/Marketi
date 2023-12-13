import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marketi/core/widgets/custom_text_field.dart';
import 'package:marketi/features/auth/view/widget/custom_back_arrow_bottom.dart';
import 'package:marketi/features/auth/view/widget/custom_bottom.dart';
import 'package:marketi/features/auth/view/widget/other_login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 CustomArrowBackBottom(),
                  const SizedBox(
                    width: 12,
                  ),
                  Image.asset(
                    'assets/images/Logo_Sign_Up.png',
                    height: 140.h,
                    width: 160.w,
                  ),
                ],
              ),
              const Text(
                'Your Name',
                style: TextStyle(
                  color: Color(0xFF001640),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const CustomTextField(
                hintText: 'Full Name',
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 12,left: 14,bottom:14),
                  child: FaIcon(
                    FontAwesomeIcons.userPen,
                    size: 16,
                  ),
                ),
              ),
              const Text(
                'Username',
                style: TextStyle(
                  color: Color(0xFF001640),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const CustomTextField(
                hintText: 'Username',
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 12,left: 14,bottom:14),
                  child: FaIcon(
                    FontAwesomeIcons.user,
                    size: 16,
                  ),
                ),
              ),
              const Text(
                'Phone Number',
                style: TextStyle(
                  color: Color(0xFF001640),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const CustomTextField(
                hintText: '0123456789',
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 12,left: 16,bottom:16),
                  child: FaIcon(
                    FontAwesomeIcons.mobileScreenButton,
                    size: 16,
                  ),
                ),
              ),
              const Text(
                'Email',
                style: TextStyle(
                  color: Color(0xFF001640),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const CustomTextField(
                hintText: 'Email',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  size: 18,
                ),
              ),
              const Text(
                'Password',
                style: TextStyle(
                  color: Color(0xFF001640),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const CustomTextField(
                hintText: 'Password',
                prefixIcon: Icon(
                  Icons.lock_outline_rounded,
                  size: 18,
                ),
              ),
              const Text(
                'Confirm Password',
                style: TextStyle(
                  color: Color(0xFF001640),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const CustomTextField(
                hintText: 'Confirm Password',
                prefixIcon: Icon(
                  Icons.lock_outline_rounded,
                  size: 18,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              const CustomBottom(
                text: 'Sign Up',
              ),
              SizedBox(height: 8.h,),
              Align(
                alignment: Alignment.center,
                child: Text('Or Continue With',style: TextStyle(
                    color: const Color(0xff51526C),
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp
                ),),
              ),
              SizedBox(height: 12.h,),
              const CustomOtherLogin()
            ],
          ),
        ),
      ),
    );
  }
}
