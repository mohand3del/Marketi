

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/layout/home/view_model/home_cubit.dart';

import 'custom_popular_product.dart';

class PopularBlocBuilder extends StatelessWidget {
  const PopularBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return   BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) => current is PopularLoading || current is PopularSuccess|| current is Error,

        builder: (context, state) {
          return state.maybeWhen(popularLoading: (){
            return Center(
              child: CircularProgressIndicator(),
            );
          },

              popularSuccess: (listOfProducts){
                var popularProductList = listOfProducts;
                return CustomPopularProduct(listOfProducts: popularProductList ?? []);
              },
              error: (errorHandler){
                return SizedBox.shrink();
              },
              orElse: (){
                return SizedBox.shrink();
              }

          );
        }

    );
  }
}
