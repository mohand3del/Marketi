// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularRequestBody _$PopularRequestBodyFromJson(Map<String, dynamic> json) =>
    PopularRequestBody(
      skip: json['skip'] as String?,
      search: json['search'] as String?,
      brand: json['brand'] as String?,
      category: json['category'] as String?,
      rating: json['rating'] as String?,
      price: json['price'] as String?,
      discount: json['discount'] as String?,
      popular: json['popular'] as String?,
    );

Map<String, dynamic> _$PopularRequestBodyToJson(PopularRequestBody instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'search': instance.search,
      'brand': instance.brand,
      'category': instance.category,
      'rating': instance.rating,
      'price': instance.price,
      'discount': instance.discount,
      'popular': instance.popular,
    };
