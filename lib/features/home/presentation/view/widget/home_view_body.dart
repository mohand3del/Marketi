import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/home/presentation/view/widget/custom_app_bar.dart';

import 'custom_popular_product.dart';
import 'custom_search.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 14,
        ),
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
                  image: NetworkImage(
                      'https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg'),
                ),
              ),
            ),
            const CustomPopularProduct(),
          ],
        ),
      ),
    );
  }
}
