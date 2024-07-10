
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/constant/constant.dart';
import 'package:marketi/core/helper/cache_helper.dart';
import 'package:marketi/core/network/dio_factory.dart';
import 'package:marketi/features/auth/login/data/model/google_request_body.dart';
import 'package:marketi/features/auth/login/data/reposetory/google_repo.dart';

import 'package:marketi/features/auth/login/data/reposetory/login_repo.dart';
import 'package:marketi/features/auth/login/view_model/cubit/login_cubit/login_state.dart';

import '../../../data/model/login_request_body.dart';



class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo,) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();



  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(success: (loginResponse)async {
      final token = loginResponse.token;
    //  CacheHelper.insertCache(key: "token", value:token);
      await saveUserToken(token!);
      debugPrint(token);
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
  Future<void> saveUserToken(String token) async {
    await CacheHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }


}
