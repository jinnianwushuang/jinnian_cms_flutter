



import 'package:jinnian_cms_flutter/api/common/base_request.dart';
import 'package:jinnian_cms_flutter/api/common/dio_wapper.dart';

class UserRequest extends BaseRequest {
  @override
  HttpMethod httpMethod() {
    // TODO: implement httpMethod
    return HttpMethod.GET;
  }

  @override
  bool needLogin() {
    // TODO: implement needLogin
    // throw UnimplementedError();

    return false;
  }

  @override
  String path() {
    // TODO: implement path
    // http://127.0.0.1:7001/user/all?name=&currentPage=1&pageSize=10
    // throw UnimplementedError();
    return "/user/all";
  }


}

class UserAPi{


  handle_read(Map<String, dynamic> params) async {

    DioRequest dioRequest =new DioRequest();
    var dio= dioRequest.get_dio();
    var response = await  dio.get("/user/all",queryParameters: params);

    // print(response.data.toString());

    return  response;



  }


//   Response response;
//   var dio = Dio();
//   response = await dio.get('/test?id=12&name=wendu');
//   print(response.data.toString());
// // Optionally the request above could also be done as
//   response = await dio.get('/test', queryParameters: {'id': 12, 'name': 'wendu'});
//   print(response.data.toString());


}