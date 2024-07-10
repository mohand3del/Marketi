import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/di/dependency_injection.dart';
import 'package:marketi/features/layout/home/data/repo/popular_repo.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/buy_again.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/custom_brand.dart';
import 'package:marketi/features/layout/home/view_model/home_cubit.dart';

import 'category_product.dart';
import 'custom_app_bar.dart';
import 'custom_popular_product.dart';
import 'custom_search.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=> HomeCubit(getIt())..getPopularProducts(),
      child: SafeArea(
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
                const CustomPopularProduct(),
                SizedBox(
                  height: 14.h,
                ),
                const CategoryProduct(),

                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 14.h),
                  child: const BuyAgain(),
                ),
                const CustomBrand(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
