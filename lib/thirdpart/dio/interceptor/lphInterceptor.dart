import 'package:dio/dio.dart';

class LPHInterceptor extends InterceptorsWrapper{

  // 在请求被发送之前做一些事情
  @override
  Future onRequest(RequestOptions options) {
    options.queryParameters = {"wd":"周杰伦","pn":"20"};
    return super.onRequest(options);
  }


  //在返回响应数据之前做一些预处理
@override
  Future onResponse(Response response) {

  response.data= response.data+"拦截后手动添加内容,";
    return super.onResponse(response);
  }
  //出现异常做的处理。
  @override
  Future onError(DioError err) {
    return super.onError(err);
  }

}