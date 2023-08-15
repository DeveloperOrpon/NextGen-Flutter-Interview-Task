import 'dart:io';

import 'package:dio/dio.dart';

import 'ConnectivityRequestRetrier.dart';

class RetryOnConnectionChangeInterceptor extends Interceptor {
  final ConnectiveRequestRetrier requestRetrier;

  RetryOnConnectionChangeInterceptor({required this.requestRetrier});

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
    if (_shouldRetry(err)) {
      try {
        requestRetrier.scheduleRequestRetry(err);
      } catch (e) {
        handler.next(err);
      }
    }
    handler.next(err);
  }

  bool _shouldRetry(DioError err) {
    return err.type == DioErrorType.connectionError &&
        err.error != null &&
        err.error is SocketException;
  }
}
