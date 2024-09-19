


import 'package:marketi/core/network/api_error_handler.dart';
import 'package:marketi/core/network/api_result.dart';
import 'package:marketi/core/network/api_service.dart';
import 'package:marketi/features/layout/home/data/model/categories_response_body.dart';

import '../model/categories_request_body.dart';

class CategoriesRepo {
  final ApiService _apiService;

  CategoriesRepo(this._apiService);


  Future<ApiResult<CategoriesResponseBody>> categories(
      CategoriesRequestBody categoriesRequestBody) async {
    try {
      final response = await _apiService.categories(categoriesRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}