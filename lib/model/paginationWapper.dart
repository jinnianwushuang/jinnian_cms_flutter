import 'package:json_annotation/json_annotation.dart';

part 'paginationWapper.g.dart';

@JsonSerializable()
class PaginationWapper {
  PaginationWapper();

  late List<Object> docs;
  late num limit;
  late num page;
  late num pages;
  late num total;
  
  factory PaginationWapper.fromJson(Map<String,dynamic> json) => _$PaginationWapperFromJson(json);
  Map<String, dynamic> toJson() => _$PaginationWapperToJson(this);
}
