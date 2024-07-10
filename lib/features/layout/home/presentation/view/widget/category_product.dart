import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'category_item.dart';


class CategoryProduct extends StatelessWidget {
  const CategoryProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Category',
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
            itemBuilder: (context,index)=>const CategoryItem(),
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
