import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/layout/home/data/model/brand_response_body.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/brand/brand_item.dart';


import '../category/category_item.dart';


class CustomBrand extends StatelessWidget {
   CustomBrand({super.key,this.listOfBrands});
  final List<ListOfBrands>? listOfBrands;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Brand',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/brand');
              },
              child: const Text('View all'),
            ),
          ],
        ),
        SizedBox(
          height: 154.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context,index)=> BrandItem(listOfBrands:listOfBrands?[index],),
            separatorBuilder: (context,index)=> SizedBox(
              width: 16.w,
            ),
            itemCount: listOfBrands?.length??0,
          ),
        ),
      ],
    );
  }
}
