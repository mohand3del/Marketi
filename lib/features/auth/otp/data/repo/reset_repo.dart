

import 'package:marketi/core/network/api_error_handler.dart';
import 'package:marketi/core/network/api_result.dart';
import 'package:marketi/core/network/api_service.dart';
import 'package:marketi/features/auth/otp/data/model/reset_password_request_body.dart';
import 'package:marketi/features/auth/otp/data/model/reset_password_response_body.dart';

class ResetRepo{
  ApiService _apiService;

  ResetRepo(this._apiService);
  Future<ApiResult<ResetPasswordResponseBody>> reset(ResetPasswordRequestBody resetPasswordRequestBody)async{
    try {
      final response = await _apiService.reset(resetPasswordRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}