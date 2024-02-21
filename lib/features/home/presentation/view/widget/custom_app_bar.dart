import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
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
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          child: Text('Hi Mohand !',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        //Spacer(),
        Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            CircleAvatar(
              radius: 5.r,
              backgroundColor: Colors.blue,
            ),
            Icon(Icons.notifications_none_sharp,size: 32.sp,color: Colors.blue,),
          ],
        ),
      ],
    );
  }
}
