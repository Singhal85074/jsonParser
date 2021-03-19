import 'package:json_annotation/json_annotation.dart';
import './userdata.dart';
part 'single_response.g.dart';

@JsonSerializable()
class SingleResponse {
  SingleResponse();
  @JsonKey(name: "data")
  User user;

  factory SingleResponse.fromJson(Map<String, dynamic> json) =>
      _$SingleResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SingleResponseToJson(this);
}
