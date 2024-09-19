import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/buy%20again/buy_again_item.dart';


import '../category/category_item.dart';


class BuyAgain extends StatelessWidget {
  const BuyAgain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Buy again',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: const Text('View all'),
            ),
          ],
        ),
        SizedBox(
          height: 190.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context,index)=>const BuyAgainItem(),
            separatorBuilder: (context,index)=> SizedBox(
              width: 16.w,
            ),
            itemCount: 20,
          ),
        ),
      ],
    );
  }
}
