// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) =>
    SignUpResponse(
      code: (json['statusCode '] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      token: json['token'] as String?,
      userName: json['name'] as String?,
    );

Map<String, dynamic> _$SignUpResponseToJson(SignUpResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'statusCode ': instance.code,
      'token': instance.token,
      'name': instance.userName,
    };
