

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/auth/login/data/model/google_request_body.dart';
import 'package:marketi/features/auth/login/view_model/cubit/login_cubit/google_cubit.dart';
import 'package:marketi/features/auth/login/view_model/cubit/login_cubit/login_cubit.dart';

class CustomOtherLogin extends StatelessWidget {
  const CustomOtherLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        GestureDetector(
          onTap: () {
           doLoginWithGoogle(context);
          },
          child: Container(
            width: 40,
            height: 40,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.5,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Color(0xB2B2CCFF),
                ),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: Stack(children: [
              Image.asset('assets/images/Google_Icon.png'),

            ]),
          ),
        ),
        SizedBox(width: 14.w,),
        Container(
          width: 40,
          height: 40,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.5,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: Color(0xB2B2CCFF),
              ),
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          child: Stack(children: [
            Image.asset('assets/images/Apple_Icon.png'),

          ]),
        ),
        SizedBox(width: 14.w,),
        Container(
          width: 40,
          height: 40,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.5,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: Color(0xB2B2CCFF),
              ),
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          child: Stack(children: [
            Image.asset('assets/images/Facebok_Icon.png'),

          ]),
        ),

      ],
    );
  }
  void doLoginWithGoogle(BuildContext context) {

      context.read<GoogleCubit>().emitLoginStatesGoogle(
      GoogleRequestBody(

      )
    );
  }
}
