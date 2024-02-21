
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/constant/color.dart';
import 'package:marketi/features/auth/login/view/widget/custom_back_arrow_bottom.dart';
import 'package:marketi/features/auth/login/view/widget/custom_bottom.dart';

class OtpPhoneScreen extends StatelessWidget {
  const OtpPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body:SafeArea(

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14,vertical:4),
              child: Row(
                children: [
                 const CustomArrowBackBottom(),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text('Verification Code',style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColor.navy,

                  ),),

                ],

              ),

            ),
            SizedBox(height:18.h,),
            Image.asset('assets/images/Illustration_Verification_Code_With_Phone.png',),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(

                        text: 'Please enter the 4 digit code\n    sent to:',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.navy,
                        ),
                      ),

                      TextSpan(
                        text: ' +20 1501142409',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.primaryColor,
                        ),
                      ),
                    ]
                  ),
                  ),
                ],
              ),

            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: OtpTextField(
                numberOfFields: 4,
                borderColor: AppColor.rect,
                autoFocus: true,
                focusedBorderColor:AppColor.primaryColor,
                borderRadius: BorderRadius.circular(8),
                fieldWidth: 64.w,
                cursorColor: AppColor.primaryColor
                ,

                //set to true to show as box or false to show as dash
                showFieldAsBox: true,

                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode){
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      }
                  );
                }, // end onSubmit
              ),
            ),
            CustomBottom(text: 'Verify Code', onPressed: (){}),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text('00:45',style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: AppColor.navy,
              ),),
            ),
            GestureDetector(
              onTap: (){},
              child: Text('Resend Code',style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: AppColor.navy,
              ),),
            )

          ],
        ),
      ),
    );
  }
}
