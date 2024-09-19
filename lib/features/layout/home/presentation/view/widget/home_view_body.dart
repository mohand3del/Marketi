
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/buy%20again/buy_again.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/brand/custom_brand.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/category/category_bloc_builder.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/popular/popular_bloc_builder.dart';



import 'custom_app_bar.dart';

import 'custom_search.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.w,
          vertical: 14.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(),
              const CustomSearch(),
              Container(
                margin: const EdgeInsets.only(bottom: 14),
                height: 120.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/Offer_1.png'),
                  ),
                ),
              ),
              const PopularBlocBuilder(),
              SizedBox(
                height: 14.h,
              ),
            const CategoryBlocBuilder(),

              Padding(
                padding:  EdgeInsets.symmetric(vertical: 14.h),
                child: const BuyAgain(),
              ),
              const CustomBrand(),

            ],
          ),
        ),
      ),
    );
  }
}
