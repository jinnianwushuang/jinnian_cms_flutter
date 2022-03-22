import 'package:json_annotation/json_annotation.dart';
part 'responseWapper.g.dart';

@JsonSerializable()
class ResponseWapper {
  ResponseWapper();

  late String code;
  late Object data;
  late String msg;
  late bool success;
  
  factory ResponseWapper.fromJson(Map<String,dynamic> json) => _$ResponseWapperFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseWapperToJson(this);
}
