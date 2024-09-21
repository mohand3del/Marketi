

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_brand_item.dart';

class BrandGridView extends StatelessWidget {
  const BrandGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return   GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.4.h,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CustomBrandItem();
      },
    );
  }
}
