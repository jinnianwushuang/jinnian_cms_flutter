// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responseWapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseWapper _$ResponseWapperFromJson(Map<String, dynamic> json) =>
    ResponseWapper()
      ..code = json['code'] as String
      ..data = json['data'] as Map<String, dynamic>
      ..msg = json['msg'] as String
      ..success = json['success'] as bool;

Map<String, dynamic> _$ResponseWapperToJson(ResponseWapper instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
      'msg': instance.msg,
      'success': instance.success,
    };
