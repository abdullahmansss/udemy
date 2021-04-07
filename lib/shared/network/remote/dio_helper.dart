import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class DioHelper {
  static Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://student.valuxapps.com/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    @required String url,
    Map<String, dynamic> query,
    String lang = 'en',
    String token,
  }) async
  {
    dio.options.headers =
    {
      'Content-Type':'application/json',
      'lang':lang,
      'Authorization': token??'',
    };

    return await dio.get(
      url,
      queryParameters: query??null,
    );
  }

  static Future<Response> postData({
    @required String url,
    Map<String, dynamic> query,
    @required Map<String, dynamic> data,
    String lang = 'en',
    String token,
  }) async
  {
    dio.options.headers =
    {
      'Content-Type':'application/json',
      'lang':lang,
      'Authorization': token??'',
    };

    return dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
