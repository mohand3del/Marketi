import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketi/features/auth/otp/data/model/reset_password_request_body.dart';
import 'package:marketi/features/auth/otp/data/repo/reset_repo.dart';

part 'reset_state.dart';
part 'reset_cubit.freezed.dart';

class ResetCubit extends Cubit<ResetState> {
  final ResetRepo _resetRepo;
  ResetCubit(this._resetRepo) : super(const ResetState.initial());


  String? emailController;

  void emitResetState ()async {
    emit(ResetState.loading());
    final response = await _resetRepo.reset(
        ResetPasswordRequestBody(email: emailController)
    );
    response.when(success: (resetPasswordRequestBody) {
      emit(ResetState.success(resetPasswordRequestBody));
    }, failure: (error) {
      emit(ResetState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
