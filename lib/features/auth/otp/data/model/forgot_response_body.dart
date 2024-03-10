
import 'package:json_annotation/json_annotation.dart';

part 'forgot_response_body.g.dart';
@JsonSerializable()
class ForgotResponseBody {
  String? message;


  ForgotResponseBody({this.message});

  factory ForgotResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ForgotResponseBodyFromJson(json);

}