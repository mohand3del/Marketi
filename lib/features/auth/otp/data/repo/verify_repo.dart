

import 'package:marketi/core/network/api_error_handler.dart';
import 'package:marketi/core/network/api_result.dart';
import 'package:marketi/core/network/api_service.dart';
import 'package:marketi/features/auth/otp/data/model/verify_request_body.dart';
import 'package:marketi/features/auth/otp/data/model/verify_response_body.dart';

class VerifyRepo{
  ApiService _apiService;

  VerifyRepo(this._apiService);


  Future<ApiResult<VerifyResponseBody>>verify(VerifyRequestBody verifyRequestBody)async{
    try{
      final response = await _apiService.verify(verifyRequestBody);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }

  }


}