import 'package:dio/dio.dart';

class HttpRequest {
  static String baseUrl;
  static const CONTENT_TYPE_JSON = "application/json";
  static const CONTENT_TYPE_FORM = "application/x-www-form-urlencoded";
  static const int CONNECT_TIMEOUT = 10000; //链接超时
  static const int RECEIVE_TIMEOUT = 3000; //接收超时

  static Dio _dio;

  static get(url, param) async {
    return await request(
        baseUrl + url, param, null, new Options(method: "GET"));
  }

  static post(url, param) async {
    return await request(
        baseUrl + url,
        param,
        {"Accept": 'application/vnd.github.VERSION.full+json'},
        new Options(method: 'POST'));
  }

  static request(url, params, Map<String, String> header, Options option) {}
}
