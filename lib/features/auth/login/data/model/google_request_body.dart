
import 'package:json_annotation/json_annotation.dart';

part 'google_request_body.g.dart';
@JsonSerializable()
class GoogleRequestBody {
 // final String? token;


  GoogleRequestBody();

  Map<String,dynamic> toJson() => _$GoogleRequestBodyToJson(this);

}