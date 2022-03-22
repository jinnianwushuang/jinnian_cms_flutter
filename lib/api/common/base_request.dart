
import 'package:dio/dio.dart';


//请求允许方法  类型
enum  HttpMethod { GET ,POST}




// 基础请求

 abstract class BaseRequest {
  //请求的路径 上带的 参数 非 ？ 后参数
  var pathParams = "";
  //使用https
  var useHttps = true;
  //请求的 基础路径
  String authority(){

   return "localhost:38888";

  }



  // 请求方法 类型
  HttpMethod httpMethod();
  //请求路径
   String path();
  // 请求参数
  Map<String, String> params = Map();
  // 是否需要登录认证
  bool needLogin();


  //添加参数
  BaseRequest addParam(String key , Object value){
    params[key] = value.toString();
    // 这里返回 this 就能 连续 链式调用
    return this;
   }

   // 头信息
    Map<String, dynamic> header = {
   "token":'token'
  };

  //添加头信息
  BaseRequest addHeader(String key , Object value){
   header[key] = value.toString();
   // 这里返回 this 就能 连续 链式调用
   return this;
  }

   //请求完整路径
   String url(){
    Uri uri;
    // Uri.http(String authority, String unencodedPath, [Map<String, dynamic>? queryParameters])
    //请求路径
    var pathStr= path();
    // 拼接参数
    if(pathStr !=null){
      if(pathStr.endsWith('/')){
       pathStr = "${pathStr}${pathParams}";

      }else{
       pathStr = "${pathStr}/${pathParams}";
      }
    }
    // http https 兼容

    if(useHttps){
     uri = Uri.https(authority(), pathStr,params);
    }else{
     uri = Uri.http(authority(), pathStr,params);
    }

    //如果需要鉴权
    if(needLogin()){
     // 添加参数
     addHeader('token', "123");
    }

      print("请求--url：${uri.toString()}");
    return uri.toString();
   }


   get(){
   //  dio.get('/test', queryParameters: {'id': 12, 'name': 'wendu'});
    // print(response.data.toString());

    var dio = Dio();

   }
   post(){

   }

}