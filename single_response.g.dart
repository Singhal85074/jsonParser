// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleResponse _$SingleResponseFromJson(Map<String, dynamic> json) {
  return SingleResponse()
    ..user = json['data'] == null
        ? null
        : User.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SingleResponseToJson(SingleResponse instance) =>
    <String, dynamic>{
      'data': instance.user,
    };
