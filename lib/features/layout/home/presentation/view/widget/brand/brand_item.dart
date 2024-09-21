

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/layout/home/data/model/brand_response_body.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({super.key,  this.listOfBrands});
  final ListOfBrands? listOfBrands;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 0,
          child: Container(

            height: 96.h,
            width: 105.w,
            decoration: BoxDecoration(
              //border: Border.all(color: const Color(0xffD9E6FF),width: 1.5),
              borderRadius: BorderRadius.circular(8.r),
            ),
            // color: Colors.white,
            child: Image.asset('assets/images/Electronics.png',fit: BoxFit.cover,) ,


          ),
        ),
        Text(listOfBrands!.name,style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600)),
      ],
    );
  }
}
