

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/auth/login/view/widget/custom_back_arrow_bottom.dart';

class CustomBar extends StatelessWidget {
   CustomBar({super.key, required this.title});
  String title = 'Popular Product';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomArrowBackBottom(),

        const Spacer(),

        Text(title,style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
        ), ),

        const Spacer(),

        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            CircleAvatar(
              radius: 30.r,
              backgroundColor: Colors.blue,
            ),
            CircleAvatar(
              radius: 28.r,
              backgroundImage: NetworkImage('https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80'),
            ),
          ],
        ),

      ],
    );
  }
}
