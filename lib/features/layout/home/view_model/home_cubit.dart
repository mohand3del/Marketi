import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketi/features/layout/home/data/model/brand_request_body.dart';
import 'package:marketi/features/layout/home/data/model/categories_request_body.dart';
import 'package:marketi/features/layout/home/data/repo/brand_repo.dart';
import 'package:marketi/features/layout/home/data/repo/categories_repo.dart';
import 'package:marketi/features/layout/home/data/repo/popular_repo.dart';

import '../data/model/popular_request_body.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final PopularRepo _popularRepo;
  final CategoriesRepo _categoriesRepo;
  final BrandRepo _brandRepo;

  HomeCubit(this._popularRepo, this._categoriesRepo, this._brandRepo) : super(const HomeState.initial());

 final int _skip = 0;


  Future<void> getPopularProducts() async {
    emit(const HomeState.popularLoading());
    final popularRequestBody = PopularRequestBody(
      skip: _skip.toString(),
      search: '',
      brand: '',
      category: '',
      rating: '',
      price: '',
      discount: '',
      popular: "true",
    );
    final popularProducts = await _popularRepo.popular(popularRequestBody);
    popularProducts.when(
      success: (popularResponseBody) {
        emit(HomeState.popularSuccess(popularResponseBody.listOfProducts ?? []));
      },
      failure: (error) {
        emit(HomeState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> getCategories() async {
    emit(const HomeState.categoriesLoading());
    final categoriesRequestBody = CategoriesRequestBody(
      name:""

    );
    final categories = await _categoriesRepo.categories(categoriesRequestBody);
    categories.when(
      success: (categoriesResponseBody) {
        emit(HomeState.categoriesSuccess(categoriesResponseBody.listOfCategories ?? []));
      },
      failure: (error) {
        emit(HomeState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> getBrands() async {
    emit(const HomeState.brandsLoading());
    final brandRequestBody = BrandRequestBody(
      name:""
    );
    final brands = await _brandRepo.getBrands(brandRequestBody);
    brands.when(
      success: (brandResponseBody) {
        emit(HomeState.brandsSuccess(brandResponseBody.list ?? []));
      },
      failure: (error) {
        emit(HomeState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}