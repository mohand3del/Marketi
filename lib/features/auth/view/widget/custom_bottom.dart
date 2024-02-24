import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/coloe.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom(
      {super.key, required this.text, this.validator, required this.onPressed});
  final String text;
  final Function(String?)? validator;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 347.w,
      height: 48.h,
      child: MaterialButton(
        color: AppColor.primaryColor,
        textColor: Colors.white,
        padding: EdgeInsets.only(right: 50, left: 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        onPressed: onPressed,

        child: Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
