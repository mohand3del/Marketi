
import 'package:json_annotation/json_annotation.dart';



part 'categories_request_body.g.dart';
@JsonSerializable()
class CategoriesRequestBody {

  String? name;
  CategoriesRequestBody({
    this.name,
  });



Map<String,dynamic> toJson() => _$CategoriesRequestBodyToJson(this);


}