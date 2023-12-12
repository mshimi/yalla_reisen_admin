import 'package:dio/dio.dart';
import 'package:yalla_reisen_withspringboot/app/api/token_interceptor.dart';

class ApiDio {
  static Dio buildDioClient(
      {required String base, required TokenInterceptor tokenInterceptor}) {
    final Dio dio = Dio()
      ..options = BaseOptions(
        baseUrl: base,
        contentType: 'application/json',
      );

    dio.interceptors.addAll([tokenInterceptor]);

    return dio;
  }
}
