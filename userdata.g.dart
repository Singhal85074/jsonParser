// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userdata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..id = json['id'] as int
    ..email = json['email'] as String
    ..firstname = json['first_name'] as String
    ..lastname = json['last_name'] as String
    ..avatar = json['avatar'] as String;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstname,
      'last_name': instance.lastname,
      'avatar': instance.avatar,
    };
