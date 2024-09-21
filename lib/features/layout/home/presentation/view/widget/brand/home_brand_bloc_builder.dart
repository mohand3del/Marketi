


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/layout/home/presentation/view/widget/brand/custom_brand.dart';
import 'package:marketi/features/layout/home/view_model/home_cubit.dart';

class HomeBrandBlocBuilder extends StatelessWidget {
  const HomeBrandBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(

        buildWhen: (previous, current) =>
            current is BrandsLoading || current is BrandsSuccess || current is BrandsError,
        builder: (context, state) {

      return state.maybeWhen(
          brandsLoading: () {
            return Center(
              child: CircularProgressIndicator(),
            );
          },
          brandsSuccess: (listOfBrands) {
            var brandsList = listOfBrands;
            return CustomBrand(listOfBrands: brandsList ?? []);
          },
          brandsError: (errorHandler) {
            return SizedBox.shrink();
          },
          orElse: () {
            return SizedBox.shrink();
          });
    });
  }
}
