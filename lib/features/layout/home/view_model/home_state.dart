part of 'home_cubit.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.popularLoading() = PopularLoading;
  const factory HomeState.popularSuccess(T data) = PopularSuccess<T>;
  const factory HomeState.error({required String error}) = Error;

  const factory HomeState.categoriesLoading() = CategoriesLoading;
  const factory HomeState.categoriesSuccess(T data) = CategoriesSuccess<T>;
  const factory HomeState.categoriesError({required String error}) = CategoriesError;

  const factory HomeState.brandsLoading() = BrandsLoading;
  const factory HomeState.brandsSuccess(T data) = BrandsSuccess<T>;
  const factory HomeState.brandsError({required String error}) = BrandsError;
}
