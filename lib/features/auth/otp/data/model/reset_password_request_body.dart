
import 'package:json_annotation/json_annotation.dart';
part 'reset_password_request_body.g.dart';
@JsonSerializable()
class ResetPasswordRequestBody{
  String?email;

  ResetPasswordRequestBody({this.email});
  Map<String,dynamic> toJson()=>_$ResetPasswordRequestBodyToJson(this);

}