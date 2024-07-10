


import 'package:marketi/core/network/api_error_handler.dart';
import 'package:marketi/core/network/api_result.dart';
import 'package:marketi/core/network/api_service.dart';

import 'package:marketi/features/layout/home/data/model/popular_request_body.dart';
import 'package:marketi/features/layout/home/data/model/popular_response_body.dart';



class PopularRepo {
  final ApiService _apiService;

  PopularRepo(this._apiService);

  Future<ApiResult<PopularResponseBody>> popular(
      PopularRequestBody popularRequestBody) async {
    try {
      final response = await _apiService.popular(popularRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
      //test
    }
  }
}
