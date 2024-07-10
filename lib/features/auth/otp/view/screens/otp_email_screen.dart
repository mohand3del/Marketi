import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/constant/color.dart';
import 'package:marketi/features/auth/login/view/widget/custom_back_arrow_bottom.dart';
import 'package:marketi/features/auth/login/view/widget/custom_bottom.dart';
import 'package:marketi/features/auth/otp/view/screens/create_new_password.dart';
import 'package:marketi/features/auth/otp/view/widgets/verify_bloc_lisenar.dart';
import 'package:marketi/features/auth/otp/view_model/cubit/reset_cubit.dart';
import 'package:marketi/features/auth/otp/view_model/cubit/verify_cubit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpEmailScreen extends StatefulWidget {
  OtpEmailScreen({super.key, this.email});
  String? email;
  String? otpCode;



  @override
  State<OtpEmailScreen> createState() => _OtpEmailScreenState();
}

class _OtpEmailScreenState extends State<OtpEmailScreen> {
  bool isLoading = false;
  int _start = 60;
  late Timer _timer;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            isLoading = false;
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }
  @override
  void initState() {
    super.initState();
    startTimer();
  }
  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifyCubit,VerifyState>(
       builder: (BuildContext context,state){
         return Scaffold(
           backgroundColor: Color(0xffFFFFFF),
           body: SafeArea(
             child: Form(
               key: context.read<VerifyCubit>().formKey,
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
                                 text: widget.email.toString(),
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
                           controller: context.read<VerifyCubit>().code,
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
                           onChanged: (code) {
                             widget.otpCode = code;
                             print(code);
                           },
                           validator: (value){
                             if (value!.isEmpty) {
                               return 'Please enter the OTP code';
                             } else if (value.length != 6) {
                               return 'OTP code must be 6 digits';
                             }
                             return null;

                           },
                           beforeTextPaste: (text) {
                             print("Allowing to paste $text");
                             //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                             //but you can show anything you want here, like your pop up saying wrong paste format or etc
                             return true;
                           },
                           appContext: context,
                         )),
                     CustomBottom(text: 'Verify Code', onPressed: () {
                       validateTheDoVerify(context);

                     }),
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 16),
                       child: Text(
                         _start.toString(),
                         style: TextStyle(
                           fontSize: 16.sp,
                           fontWeight: FontWeight.bold,
                           color: AppColor.navy,
                         ),
                       ),
                     ),
                     InkWell(
                       onTap: (){
                         validateThenDoReset(context);
                         setState(() {
                           _start = 45;
                           //isLoading = true;
                           startTimer();
                         });
                       },
                       child: Text(
                         'Resend Code',
                         style: TextStyle(
                           fontSize: 16.sp,
                           fontWeight: FontWeight.bold,
                           color: AppColor.navy,
                         ),
                       ),
                     ),
                     VerifyBlocListener(),
                   ],
                 ),
               ),
             ),
           ),
         );
       },
    );
  }
  void validateThenDoReset(BuildContext context) {

      context.read<ResetCubit>().emitResetState();
      context.read<ResetCubit>().emailController = widget.email;
      print(context.read<ResetCubit>().emailController = widget.email);

  }
  void validateTheDoVerify(BuildContext context) {
    if (context.read<VerifyCubit>().formKey.currentState!.validate()) {
      if (widget.otpCode != null || widget.otpCode!.isNotEmpty) {
        print(context
            .read<VerifyCubit>()
            .emailController = widget.email);
        print(context
            .read<VerifyCubit>()
            .codeController = widget.otpCode);
        context
            .read<VerifyCubit>()
            .codeController = widget.otpCode;
        context.read<VerifyCubit>().emailController = widget.email;
        context.read<VerifyCubit>().emitVerifyState();
       context.read<VerifyCubit>().verifyCode(widget.otpCode!)
            .then((isCodeValid) { // isCodeValid will be true or false
          if (isCodeValid == true) {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => CreateNewPassword(email: widget.email,)));
          } else {
            // Code is invalid, display an error message
           /* showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Invalid Code'),
                content: Text('The OTP code you entered is incorrect. Please try again.'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('OK'),
                  ),
                ],
              ),
            );*/
          }
        });
      } else {
        // Handle missing OTP code
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Missing OTP Code'),
            content: Text('Please enter the OTP code sent to your email.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    }
  }


}



