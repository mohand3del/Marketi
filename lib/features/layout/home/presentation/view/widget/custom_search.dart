import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(
        vertical: 14.h,
      ),
      child: Container(
        height: 44.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          color: Colors.white,
          border: Border.all(color: Colors.blue.shade100,width: 2.w,),
        ),
        child:  Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          child: Row(
            children: [
               Icon(FontAwesomeIcons.magnifyingGlass,size: 24,),
               SizedBox(
                width: 14.w,
              ),
               Expanded(
                child: Text('What are you looking for ?',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff929BAB)
                  ),
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                    padding:  EdgeInsetsDirectional.symmetric(
                      horizontal: 3.w,
                      vertical: 3.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: Colors.blue.shade100,width: 1.w),
                    ),
                    child:  Icon(FontAwesomeIcons.sliders,color: Colors.blue,size: 20,)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
