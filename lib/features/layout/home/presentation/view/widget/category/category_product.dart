import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/layout/home/data/model/categories_response_body.dart';
import 'package:marketi/features/layout/home/view_model/home_cubit.dart';

import 'category_item.dart';

class CategoryProduct extends StatelessWidget {
  final List<ListOfCategories> listOfCategories;
  const CategoryProduct({super.key,required this.listOfCategories});

  @override
  Widget build(BuildContext context) {

          return Column(
            children: [
              Row(
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/category');
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
                  itemBuilder: (context, index) => CategoryItem(
                    listOfCategories: listOfCategories[index],
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 16.w,
                  ),
                  itemCount:listOfCategories.length,
                ),
              ),
            ],
          );
        }

  }

