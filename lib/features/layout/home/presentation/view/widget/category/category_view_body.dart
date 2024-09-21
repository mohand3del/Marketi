import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/category/categoryScreenWidget/category_list_view.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/custom_app_bar.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/custom_app_bar_two.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/custom_search.dart';
import 'package:marketi/features/layout/home/view_model/home_cubit.dart';

import 'categoryScreenWidget/cotegory_item_widget.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<HomeCubit,HomeState>(
      builder: (context,state) {
        if(state is CategoriesLoading){
          return Center(child: CircularProgressIndicator());
        }else if(state is CategoriesSuccess){
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 14.w,
                vertical: 14.h,
              ),
              child: Column(
                children: [
                  CustomBar(title: "Categories"),
                  CustomSearch(),

                  Padding(
                    padding: EdgeInsets.symmetric( horizontal: 10.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'All Product',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),


                  CategoryListView(listOfCategories: state.data,),
                ],
              ),
            ),
          );
        }
        return Container();
      },

    );
  }
}
