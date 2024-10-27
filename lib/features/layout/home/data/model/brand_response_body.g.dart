// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandResponseBody _$BrandResponseBodyFromJson(Map<String, dynamic> json) =>
    BrandResponseBody(
      list: (json['list'] as List<dynamic>)
          .map((e) => ListOfBrands.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BrandResponseBodyToJson(BrandResponseBody instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

ListOfBrands _$ListOfBrandsFromJson(Map<String, dynamic> json) => ListOfBrands(
      name: json['name'] as String,
    );

Map<String, dynamic> _$ListOfBrandsToJson(ListOfBrands instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
