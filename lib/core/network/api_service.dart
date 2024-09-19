

import 'package:dio/dio.dart';
import 'package:marketi/core/network/api_constants.dart';
import 'package:marketi/features/auth/login/data/model/google_request_body.dart';
import 'package:marketi/features/auth/login/data/model/google_response_body.dart';

import 'package:marketi/features/auth/login/data/model/login_request_body.dart';
import 'package:marketi/features/auth/login/data/model/login_response.dart';
import 'package:marketi/features/auth/otp/data/model/forgot_request_body.dart';
import 'package:marketi/features/auth/otp/data/model/forgot_response_body.dart';
import 'package:marketi/features/auth/otp/data/model/new_password_request_body.dart';
import 'package:marketi/features/auth/otp/data/model/new_password_response_body.dart';
import 'package:marketi/features/auth/otp/data/model/reset_password_request_body.dart';
import 'package:marketi/features/auth/otp/data/model/reset_password_response_body.dart';
import 'package:marketi/features/auth/otp/data/model/verify_request_body.dart';
import 'package:marketi/features/auth/otp/data/model/verify_response_body.dart';
import 'package:marketi/features/auth/signUp/data/model/sign_up_request_body.dart';
import 'package:marketi/features/auth/signUp/data/model/sign_up_response.dart';
import 'package:marketi/features/layout/home/data/model/categories_request_body.dart';
import 'package:marketi/features/layout/home/data/model/categories_response_body.dart';
import 'package:marketi/features/layout/home/data/model/popular_request_body.dart';
import 'package:marketi/features/layout/home/data/model/popular_response_body.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl:ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginResponse>login(
      @Body() LoginRequestBody loginRequestBody
      );
  @POST(ApiConstants.signUp)
  Future<SignUpResponse> signup(
      @Body() SignUpRequestBody signupRequestBody,
      );
  @POST(ApiConstants.send)
  Future<ForgotResponseBody> forgot(
      @Body() ForgotRequestBody forgotRequestBody,

      );
  
  @POST(ApiConstants.resend)
  Future<ResetPasswordResponseBody>reset(
      @Body() ResetPasswordRequestBody resetPasswordRequestBody,
      );

  @POST(ApiConstants.verify)
  Future<VerifyResponseBody>verify(
      @Body() VerifyRequestBody verifyRequestBody,
      );

  @POST(ApiConstants.newPass)
  Future<NewPasswordResponseBody>newPassword(
      @Body() NewPasswordRequestBody newPasswordRequestBody,
      );
  @GET(ApiConstants.google)
  Future<GoogleResponseBody> google(
      @Body() GoogleRequestBody googleRequestBody,
      );
  
  @GET(ApiConstants.popular)
  Future<PopularResponseBody> popular(
      @Body() PopularRequestBody popularRequestBody,
      );
  @GET(ApiConstants.categories)
  Future<CategoriesResponseBody> categories(
      @Body() CategoriesRequestBody categoriesRequestBody,
      );
}