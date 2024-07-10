

import 'package:marketi/core/network/api_error_handler.dart';
import 'package:marketi/core/network/api_result.dart';
import 'package:marketi/core/network/api_service.dart';
import 'package:marketi/features/auth/login/data/model/google_request_body.dart';
import 'package:marketi/features/auth/login/data/model/google_response_body.dart';

class GoogleRepo{
  ApiService _apiService;
  GoogleRepo(this._apiService);
  Future<ApiResult<GoogleResponseBody>> google(GoogleRequestBody googleRequestBody)async{
    try{
      final response = await _apiService.google(googleRequestBody);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}