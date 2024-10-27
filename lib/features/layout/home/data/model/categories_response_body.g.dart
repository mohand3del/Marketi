// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesResponseBody _$CategoriesResponseBodyFromJson(
        Map<String, dynamic> json) =>
    CategoriesResponseBody(
      listOfCategories: (json['list'] as List<dynamic>?)
          ?.map((e) => ListOfCategories.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoriesResponseBodyToJson(
        CategoriesResponseBody instance) =>
    <String, dynamic>{
      'list': instance.listOfCategories,
    };

ListOfCategories _$ListOfCategoriesFromJson(Map<String, dynamic> json) =>
    ListOfCategories(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      imagePath: json['imagePath'] as String?,
    );

Map<String, dynamic> _$ListOfCategoriesToJson(ListOfCategories instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'imagePath': instance.imagePath,
    };
