

import 'package:json_annotation/json_annotation.dart';
part 'popular_request_body.g.dart';
@JsonSerializable()
class PopularRequestBody {
  String? skip;
  String? search;
  String?brand;
  String? category;
  String?rating;
  String?price;
  String?discount;
  String?popular;

  PopularRequestBody(
      {this.skip,
      this.search,
      this.brand,
      this.category,
      this.rating,
      this.price,
      this.discount,
      this.popular});

  Map<String,dynamic> toJson() => _$PopularRequestBodyToJson(this);
}