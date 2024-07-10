import 'package:json_annotation/json_annotation.dart';

part 'popular_response_body.g.dart';

@JsonSerializable()
class PopularResponseBody {
  @JsonKey(name: 'list')
  List<ListOfProducts>? listOfProducts;

  PopularResponseBody(this.listOfProducts);

  factory PopularResponseBody.fromJson(Map<String, dynamic> json) => _$PopularResponseBodyFromJson(json);
  Map<String, dynamic> toJson() => _$PopularResponseBodyToJson(this);
}

@JsonSerializable()
class ListOfProducts {
  String? id;
  String? title;
  int? price;
  String? description;
  List<String>? images;
  int? rating;
  int? discount;
  int? remain;
  int? sold;
  String? category;
  String? brand;
  String? createdAt;
  String? updatedAt;

  ListOfProducts(
      this.id,
      this.title,
      this.price,
      this.description,
      this.images,
      this.rating,
      this.discount,
      this.remain,
      this.sold,
      this.category,
      this.brand,
      this.createdAt,
      this.updatedAt);

  factory ListOfProducts.fromJson(Map<String, dynamic> json) => _$ListOfProductsFromJson(json);
  Map<String, dynamic> toJson() => _$ListOfProductsToJson(this);
}

@JsonSerializable()

class ListOfLocations {
  Location? location;
  String? name;

  ListOfLocations(this.location, this.name);

  factory ListOfLocations.fromJson(Map<String, dynamic> json) => _$ListOfLocationsFromJson(json);
  Map<String, dynamic> toJson() => _$ListOfLocationsToJson(this);
}

@JsonSerializable()
class Location {
  String? type;
  List<double>? coordinates;

  Location(this.type, this.coordinates);

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
