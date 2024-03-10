part of 'forgot_cubit.dart';

@freezed
class ForgotState<T> with _$ForgotState<T> {
  const factory ForgotState.initial() = _Initial;

  const factory ForgotState.loading() = Loading;
  const factory ForgotState.success(T data) = Success<T>;
  const factory ForgotState.error({required String error}) = Error;
}
