// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularResponseBody _$PopularResponseBodyFromJson(Map<String, dynamic> json) =>
    PopularResponseBody(
      (json['list'] as List<dynamic>?)
          ?.map((e) => ListOfProducts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PopularResponseBodyToJson(
        PopularResponseBody instance) =>
    <String, dynamic>{
      'list': instance.listOfProducts,
    };

ListOfProducts _$ListOfProductsFromJson(Map<String, dynamic> json) =>
    ListOfProducts(
      json['id'] as String?,
      json['title'] as String?,
      (json['price'] as num?)?.toInt(),
      json['description'] as String?,
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      (json['rating'] as num?)?.toInt(),
      (json['discount'] as num?)?.toInt(),
      (json['remain'] as num?)?.toInt(),
      (json['sold'] as num?)?.toInt(),
      json['category'] as String?,
      json['brand'] as String?,
      json['createdAt'] as String?,
      json['updatedAt'] as String?,
    );

Map<String, dynamic> _$ListOfProductsToJson(ListOfProducts instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'images': instance.images,
      'rating': instance.rating,
      'discount': instance.discount,
      'remain': instance.remain,
      'sold': instance.sold,
      'category': instance.category,
      'brand': instance.brand,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

ListOfLocations _$ListOfLocationsFromJson(Map<String, dynamic> json) =>
    ListOfLocations(
      json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      json['name'] as String?,
    );

Map<String, dynamic> _$ListOfLocationsToJson(ListOfLocations instance) =>
    <String, dynamic>{
      'location': instance.location,
      'name': instance.name,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      json['type'] as String?,
      (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
