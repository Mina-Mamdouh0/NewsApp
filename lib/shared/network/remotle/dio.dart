import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHelper{
  static Dio dio=Dio();
  static init(){
    dio=Dio(
      BaseOptions(
      baseUrl: 'https://newsapi.org/',
      receiveDataWhenStatusError: true,
      )
    );
  }
  static Future<Response> getDate({
 required final String path,
  required Map<String, dynamic> query,
})async{
    return await dio.get(path,queryParameters: query);
  }
}
