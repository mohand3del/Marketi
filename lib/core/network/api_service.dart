

import 'package:dio/dio.dart';
import 'package:marketi/core/network/api_constants.dart';

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
  @POST(ApiConstants.forgot)
  Future<ForgotResponseBody> forgot(
      @Body() ForgotRequestBody forgotRequestBody,

      );
  
  @POST(ApiConstants.reset)
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
}