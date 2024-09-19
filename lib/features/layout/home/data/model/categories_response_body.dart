

import 'package:json_annotation/json_annotation.dart';
part 'categories_response_body.g.dart';
@JsonSerializable()
class CategoriesResponseBody {
  @JsonKey(name: 'list')
  List<ListOfCategories>?listOfCategories;
  CategoriesResponseBody({this.listOfCategories});


  factory CategoriesResponseBody.fromJson(Map<String, dynamic> json) => _$CategoriesResponseBodyFromJson(json);
  Map<String, dynamic> toJson() => _$CategoriesResponseBodyToJson(this);




}


@JsonSerializable()
class ListOfCategories {
  @JsonKey(name: '_id')
  String? id;
  String? name;
  String? imagePath;

  ListOfCategories({this.id, this.name, this.imagePath});

factory ListOfCategories.fromJson(Map<String, dynamic> json) => _$ListOfCategoriesFromJson(json);
Map<String, dynamic> toJson() => _$ListOfCategoriesToJson(this);
}