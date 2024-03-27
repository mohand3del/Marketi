part of 'reset_cubit.dart';

@freezed
class ResetState<T> with _$ResetState<T>{
  const factory ResetState.initial() = _Initial;
  const factory ResetState.loading() = Loading;
  const factory ResetState.success(T data) = Success<T>;
  const factory ResetState.error({required String error}) = Error;
}
