import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/layout/home/data/model/categories_response_body.dart';
import 'package:marketi/features/layout/home/data/model/popular_response_body.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/popular/build_popular_item.dart';
import 'package:marketi/features/layout/home/view_model/home_cubit.dart';



class CustomPopularProduct extends StatelessWidget {
  final List<ListOfProducts> listOfProducts;

  CustomPopularProduct({super.key, required this.listOfProducts});

  @override
  Widget build(BuildContext context) {
    return

      Column(
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
                onPressed: () {
                  Navigator.pushNamed(context, '/popular');
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
              itemBuilder: (context, index) =>
                  BuildPopularItem(product: listOfProducts[index]),
              separatorBuilder: (context, index) =>
                  SizedBox(
                    width: 16.w,
                  ),
              itemCount: listOfProducts.length,


            ),

          ),


        ],
      );
  }
}

