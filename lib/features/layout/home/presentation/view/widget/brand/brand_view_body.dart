import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/brand/brand_item.dart';

import '../custom_app_bar_two.dart';
import 'brand_gride_view.dart';
import 'custom_brand_item.dart';
import '../popular/custom_popular_card_item.dart';
import '../custom_search.dart';

class BrandViewBody extends StatelessWidget {
  const BrandViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Padding(
       padding: EdgeInsets.symmetric(
        horizontal: 14.w,
        vertical: 14.h,
    ),
      child:SingleChildScrollView(
        child: Column(
          children: [
           CustomBar(title: "Brand"),
            const CustomSearch(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 10.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'All Brands',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const BrandGridView(),


    ],)
      ),
    ));
  }
}
