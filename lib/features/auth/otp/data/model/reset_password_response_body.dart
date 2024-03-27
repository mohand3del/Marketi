

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'reset_password_response_body.g.dart';
@JsonSerializable()
class ResetPasswordResponseBody{
  String? message;

  ResetPasswordResponseBody({this.message});

  factory ResetPasswordResponseBody.fromJson(Map<String,dynamic>json){
    return _$ResetPasswordResponseBodyFromJson(json);
  }
}