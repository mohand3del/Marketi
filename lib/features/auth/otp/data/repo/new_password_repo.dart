
import 'package:marketi/core/network/api_error_handler.dart';
import 'package:marketi/core/network/api_result.dart';
import 'package:marketi/core/network/api_service.dart';
import 'package:marketi/features/auth/otp/data/model/new_password_request_body.dart';
import 'package:marketi/features/auth/otp/data/model/new_password_response_body.dart';

class NewPasswordRepo {

ApiService _apiService;

NewPasswordRepo(this._apiService);
      Future<ApiResult<NewPasswordResponseBody>>newPassword(NewPasswordRequestBody newPasswordRequestBody)async{
        try{
          final response = await _apiService.newPassword(newPasswordRequestBody);
          return ApiResult.success(response);

        }catch(error){
          return ApiResult.failure(ErrorHandler.handle(error));
        }
      }

}