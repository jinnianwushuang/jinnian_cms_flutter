import 'package:dio/dio.dart';

class DioRequest {
  Dio get_dio() {
    var dio = new Dio();

    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      // Do something before request is sent
      options.baseUrl = "http://127.0.0.1:17101";
      return handler.next(options); //continue
      // If you want to resolve the request with some custom data，
      // you can resolve a `Response` object eg: `handler.resolve(response)`.
      // If you want to reject the request with a error message,
      // you can reject a `DioError` object eg: `handler.reject(dioError)`
    }, onResponse: (response, handler) {
      // Do something with response data
      return handler.next(response); // continue
      // If you want to reject the request with a error message,
      // you can reject a `DioError` object eg: `handler.reject(dioError)`
    }, onError: (DioError e, handler) {
      // Do something with response error
      return handler.next(e); //continue
      // If you want to resolve the request with some custom data，
      // you can resolve a `Response` object eg: `handler.resolve(response)`.
    }));
    print("发起请求");

    return dio;
  }
}
