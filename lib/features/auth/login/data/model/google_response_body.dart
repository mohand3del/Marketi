
import 'package:json_annotation/json_annotation.dart';


part 'google_response_body.g.dart';
@JsonSerializable()
class GoogleResponseBody {
 final String? message;
 GoogleResponseBody({required this.message});
  factory GoogleResponseBody.fromJson(Map<String, dynamic> json) => _$GoogleResponseBodyFromJson(json);


}