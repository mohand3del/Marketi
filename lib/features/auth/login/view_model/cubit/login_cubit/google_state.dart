part of 'google_cubit.dart';

@freezed
class GoogleState<T> with _$GoogleState<T> {
  const factory GoogleState.initial() = _Initial;

  const factory GoogleState.loading() = Loading;
  const factory GoogleState.success(T data) = Success<T>;
  const factory GoogleState.error({required String error}) = Error;
}
