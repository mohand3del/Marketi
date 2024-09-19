

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/custom_app_bar.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/custom_app_bar_two.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
        padding: EdgeInsets.symmetric(
        horizontal: 14.w,
        vertical: 14.h,
    ),
    child: SingleChildScrollView(
    child: Column(
    children: [
      CustomBar(title: "Categories"),
    ],
    ),
    ),
      ),
      )
    );
  }
}
