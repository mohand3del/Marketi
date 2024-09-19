import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/layout/home/data/model/categories_response_body.dart';

class CategoryItem extends StatelessWidget {
  final ListOfCategories listOfCategories;
  const CategoryItem({super.key, required this.listOfCategories});

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
              border: Border.all(color: const Color(0xffD9E6FF), width: 1.5),
              borderRadius: BorderRadius.circular(8.r),
              image: DecorationImage(
                fit: BoxFit.scaleDown,
                image: NetworkImage(
                  (listOfCategories.imagePath != null && listOfCategories.imagePath!.isNotEmpty)
                      ? listOfCategories.imagePath![0]
                      : 'https://via.placeholder.com/90',
                ),
              ),
            ),
          ),
        ),
        Text(
          '${listOfCategories.name}',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
