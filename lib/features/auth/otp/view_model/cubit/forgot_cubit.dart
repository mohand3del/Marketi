import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketi/features/auth/otp/data/model/forgot_request_body.dart';
import 'package:marketi/features/auth/otp/data/repo/forgot_repo.dart';

part 'forgot_state.dart';
part 'forgot_cubit.freezed.dart';

class ForgotCubit extends Cubit<ForgotState> {
  final ForgotRepo _forgotRepo;
  ForgotCubit(this._forgotRepo) : super(const ForgotState.initial());
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  void emitForgotState ()async {
    emit(ForgotState.loading());
    final response = await _forgotRepo.forgot(
      ForgotRequestBody(email: emailController.text)
    );
    response.when(success: (forgotResponseBody) {
      emit(ForgotState.success(forgotResponseBody));
    }, failure: (error) {
      emit(ForgotState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
