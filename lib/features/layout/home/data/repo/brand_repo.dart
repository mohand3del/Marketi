

import 'package:marketi/core/network/api_error_handler.dart';
import 'package:marketi/core/network/api_result.dart';
import 'package:marketi/core/network/api_service.dart';
import 'package:marketi/features/layout/home/data/model/brand_request_body.dart';
import 'package:marketi/features/layout/home/data/model/brand_response_body.dart';

class BrandRepo {
  final ApiService _apiService;

  BrandRepo(this._apiService);

  Future<ApiResult<BrandResponseBody>> getBrands(BrandRequestBody brandRequestBody) async {
       try {
         final response = await _apiService.brands(brandRequestBody);
         return ApiResult.success(response);
       } catch (error) {
         return ApiResult.failure(ErrorHandler.handle(error.toString()));
       }


      }


}