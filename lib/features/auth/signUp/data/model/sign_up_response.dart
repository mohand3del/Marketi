



import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  String? message;
  bool? status;
  @JsonKey(name: 'statusCode ')
  int? code;
  String? token;
  @JsonKey(name:'name')
  String? userName;

  SignUpResponse({
    this.code,
    this.message,
    this.status,
    this.token,
    this.userName,

  });

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);

}
