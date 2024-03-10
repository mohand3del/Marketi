import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/constant/color.dart';
import 'package:marketi/core/constant/string.dart';
import 'package:marketi/core/helper/app_regex.dart';
import 'package:marketi/core/widgets/custom_text_field.dart';
import 'package:marketi/features/auth/login/view/widget/custom_back_arrow_bottom.dart';
import 'package:marketi/features/auth/login/view/widget/custom_bottom.dart';
import 'package:marketi/features/auth/otp/view/screens/otp_email_screen.dart';
import 'package:marketi/features/auth/otp/view_model/cubit/forgot_cubit.dart';


class ForgotPasswordScreen extends StatefulWidget {
   ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  late TextEditingController emailController;
  @override
  void initState() {
    super.initState();
    emailController = context.read<ForgotCubit>().emailController;
    //setupPasswordControllerListener();
  }

  Widget build(BuildContext context) {
    return BlocBuilder<ForgotCubit,ForgotState>(
      builder: (BuildContext context, state) {
        return  Scaffold(
          backgroundColor: const Color(0xffFFFFFF),
          body: SafeArea(
              child: Form(
                key: context.read<ForgotCubit>().formKey,
                child: SingleChildScrollView(
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
                          controller:  context.read<ForgotCubit>().emailController,
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
                      CustomBottom(
                  
                          text: 'Send Code', onPressed: () {
                  
                        print(context.read<ForgotCubit>().emailController.text);
                  
                        validateThenDoForgot(context);
                      }),
                    ],
                  ),
                ),
              )),
        );

      },

    );
  }
  void validateThenDoForgot(BuildContext context) {
    if (context.read<ForgotCubit>().formKey.currentState!.validate()) {
     context.read<ForgotCubit>().emitForgotState();
     Navigator.push(context, MaterialPageRoute(

         builder: (_){return OtpEmailScreen(
           email: context.read<ForgotCubit>().emailController.text,
         );}

     ));
    }
  }
}
