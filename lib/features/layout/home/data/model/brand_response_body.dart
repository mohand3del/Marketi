import 'package:json_annotation/json_annotation.dart';


part 'brand_response_body.g.dart';
@JsonSerializable()
class BrandResponseBody {
  @JsonKey(name: "list")
  List<ListOfBrands> list;

  BrandResponseBody({
    required this.list,
  });

  factory BrandResponseBody.fromJson(Map<String, dynamic> json) => _$BrandResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$BrandResponseBodyToJson(this);
}

@JsonSerializable()
class ListOfBrands {
  @JsonKey(name: "name")
  String name;

  ListOfBrands({
    required this.name,
  });

  factory ListOfBrands.fromJson(Map<String, dynamic> json) => _$ListOfBrandsFromJson(json);

  Map<String, dynamic> toJson() => _$ListOfBrandsToJson(this);
}
