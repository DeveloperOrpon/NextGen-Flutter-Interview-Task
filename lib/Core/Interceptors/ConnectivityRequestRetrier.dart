import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';

class ConnectiveRequestRetrier {
  final Dio dio;
  final Connectivity connectivity;

  ConnectiveRequestRetrier({required this.connectivity, required this.dio});

  Future<Response> scheduleRequestRetry(DioError e) async {
    late StreamSubscription streamSubscription;
    final responseCompleted = Completer<Response>();
    streamSubscription = connectivity.onConnectivityChanged.listen((event) {
      if (event != ConnectivityResult.none) {
        streamSubscription.cancel();
        responseCompleted.complete(dio.request(
          e.requestOptions.path,
          data: e.requestOptions.cancelToken,
          onReceiveProgress: e.requestOptions.onReceiveProgress,
          onSendProgress: e.requestOptions.onSendProgress,
          queryParameters: e.requestOptions.queryParameters,
        ));
      }
    });
    return responseCompleted.future;
  }
}
