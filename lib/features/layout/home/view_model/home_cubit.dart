import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketi/features/layout/home/data/repo/popular_repo.dart';

import '../data/model/popular_request_body.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final PopularRepo _popularRepo;

  HomeCubit(this._popularRepo) : super(const HomeState.initial());

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
}