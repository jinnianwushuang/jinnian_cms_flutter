// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginationWapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationWapper _$PaginationWapperFromJson(Map<String, dynamic> json) =>
    PaginationWapper()
      ..docs = (json['docs'] as List<dynamic>).map((e) => e as Object).toList()
      ..limit = json['limit'] as num
      ..page = json['page'] as num
      ..pages = json['pages'] as num
      ..total = json['total'] as num;

Map<String, dynamic> _$PaginationWapperToJson(PaginationWapper instance) =>
    <String, dynamic>{
      'docs': instance.docs,
      'limit': instance.limit,
      'page': instance.page,
      'pages': instance.pages,
      'total': instance.total,
    };
