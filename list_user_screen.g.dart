// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_user_screen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListUserResponse _$ListUserResponseFromJson(Map<String, dynamic> json) {
  return ListUserResponse()
    ..page = json['page'] as int
    ..perpage = json['per_page'] as int
    ..total = json['total'] as int
    ..totalpages = json['total_pages'] as int
    ..users = (json['data'] as List)
        ?.map(
            (e) => e == null ? null : User.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ListUserResponseToJson(ListUserResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perpage,
      'total': instance.total,
      'total_pages': instance.totalpages,
      'data': instance.users,
    };
