

import 'package:marketi/core/network/api_error_handler.dart';
import 'package:marketi/core/network/api_result.dart';
import 'package:marketi/core/network/api_service.dart';
import 'package:marketi/features/auth/otp/data/model/forgot_request_body.dart';
import 'package:marketi/features/auth/otp/data/model/forgot_response_body.dart';

class ForgotRepo {
 ApiService _apiService;

 ForgotRepo(this._apiService);
 Future<ApiResult<ForgotResponseBody>> forgot(ForgotRequestBody forgotRequestBody)async{

   try {
     final response = await _apiService.forgot(forgotRequestBody);
     return ApiResult.success(response);
   } catch (error) {
     return ApiResult.failure(ErrorHandler.handle(error));
   }
 }
}