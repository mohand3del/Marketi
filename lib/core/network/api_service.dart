

import 'package:dio/dio.dart';
import 'package:marketi/core/network/api_constants.dart';
import 'package:marketi/features/auth/data/model/login_request_body.dart';
import 'package:marketi/features/auth/data/model/login_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl:ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginResponse>login(
      @Body() LoginRequestBody loginRequestBody
      );
  
}