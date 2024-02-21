import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marketi/core/constant/color.dart';
import 'package:marketi/core/constant/string.dart';
import 'package:marketi/core/helper/app_regex.dart';
import 'package:marketi/core/widgets/custom_text_field.dart';
import 'package:marketi/features/auth/login/view/widget/custom_back_arrow_bottom.dart';
import 'package:marketi/features/auth/login/view/widget/custom_bottom.dart';

class CreateNewPassword extends StatefulWidget {
  CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  late String phoneNumber;
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }
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
                    'assets/images/Illustration_Create_New_Password.png'),
              ),
              Text(
                'Please enter your email address to\n        receive a verification code',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColor.navy,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    'Password',
                    style: TextStyle(
                      color: Color(0xFF001640),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CustomTextField(

                      hintText: 'Password',
                      isObscureText: isPasswordObscureText,
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        size: 18,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isPasswordObscureText = !isPasswordObscureText;
                          });
                        },
                        child: Icon(
                          isPasswordObscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a valid password';
                        }
                      }),
                  const Text(
                    'Confirm Password',
                    style: TextStyle(
                      color: Color(0xFF001640),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CustomTextField(

                    hintText: 'Confirm Password',
                    prefixIcon: Icon(
                      Icons.lock_outline_rounded,
                      size: 18,
                    ),
                    isObscureText: isPasswordConfirmationObscureText,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPasswordConfirmationObscureText =
                          !isPasswordConfirmationObscureText;
                        });
                      },
                      child: Icon(
                        isPasswordConfirmationObscureText
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid password';
                      }
                    },
                  ),                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomBottom(
                text: 'Save Password',
                onPressed: () {
                Navigator.pushNamed(context, Routes.congratulationsScreen);
                },
              ),
            ],
          )),
    );
  }
}
