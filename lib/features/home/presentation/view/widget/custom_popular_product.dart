import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/home/presentation/view/widget/build_popular_item.dart';


class CustomPopularProduct extends StatelessWidget {
  const CustomPopularProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
             Text('Popular Product',
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
          height: 154.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context,index)=>const BuildItem(),
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
