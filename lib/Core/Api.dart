import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';

import 'ApiPath.dart';
import 'Interceptors/ConnectivityRequestRetrier.dart';
import 'Interceptors/RetryOnConnectionChangeIntercptor.dart';

class Api {
  late Dio dio;

  initApi() {
    dio = Dio();
    BaseOptions options = BaseOptions(
        baseUrl: BASE_URL,
        connectTimeout: const Duration(minutes: 5),
        receiveTimeout: const Duration(minutes: 5));
    dio = Dio(options);
    // _dio.interceptors.add(RetryInterceptor(dio: _dio));
    dio.interceptors.add(RetryOnConnectionChangeInterceptor(
        requestRetrier:
            ConnectiveRequestRetrier(connectivity: Connectivity(), dio: dio)));
  }
}
