part of 'home_cubit.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.popularLoading() = PopularLoading;
  const factory HomeState.popularSuccess(T data) = PopularSuccess<T>;
  const factory HomeState.error({required String error}) = Error;
}
