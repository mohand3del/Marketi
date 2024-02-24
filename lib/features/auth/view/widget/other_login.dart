

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOtherLogin extends StatelessWidget {
  const CustomOtherLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
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
            Image.asset('assets/images/Google_Icon.png'),

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
}
