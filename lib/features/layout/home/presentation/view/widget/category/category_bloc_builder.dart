

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/layout/home/view_model/home_cubit.dart';

import 'category_product.dart';

class CategoryBlocBuilder extends StatelessWidget {
  const CategoryBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
        buildWhen: (previous, current) => current is CategoriesLoading || current is CategoriesSuccess|| current is CategoriesError,
        builder:(context,state){

          return state.maybeWhen(categoriesLoading: (){
            return Center(
              child: CircularProgressIndicator(),
            );
          },
              categoriesSuccess: (listOfCategories){
                var categoriesList = listOfCategories;
                return CategoryProduct(listOfCategories: categoriesList ?? [],);
              },
              categoriesError: (errorHandler){
                return SizedBox.shrink();
              },
              orElse: (){
                return SizedBox.shrink();
              });
        } );
  }
}
