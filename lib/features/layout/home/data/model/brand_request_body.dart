
import 'package:json_annotation/json_annotation.dart';
part 'brand_request_body.g.dart';
@JsonSerializable()
class BrandRequestBody {
  final String name;


  BrandRequestBody({
    required this.name,

  });

  factory BrandRequestBody.fromJson(Map<String, dynamic> json) => _$BrandRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$BrandRequestBodyToJson(this);



}