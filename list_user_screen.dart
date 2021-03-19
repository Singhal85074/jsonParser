import 'package:json_annotation/json_annotation.dart';
import './userdata.dart';
part 'list_user_screen.g.dart';

@JsonSerializable()
class ListUserResponse {
  ListUserResponse();

  @JsonKey(name: "page")
  int page;

  @JsonKey(name: "per_page")
  int perpage;

  @JsonKey(name: "total")
  int total;

  @JsonKey(name: "total_pages")
  int totalpages;

  @JsonKey(name: "data")
  List<User> users;

  factory ListUserResponse.fromJson(Map<String, dynamic> json) =>
      _$ListUserResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ListUserResponseToJson(this);
}
