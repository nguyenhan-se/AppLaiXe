// Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/data/datasources/sharedpref/shared_preference_helper.dart';
import '../../consts/http_const.dart';
import '../../utils/http/interceptor/dio_connectivity_request_retrier.dart';
import '../../utils/http/interceptor/token_interceptor.dart';

abstract class NetworkModule {
  /// A singleton dio provider.
  ///
  /// Calling it multiple times will return the same instance.
  static Dio provideDio(SharedPreferenceHelper sharedPrefHelper) {
    final dio = Dio();

    dio
      ..options.baseUrl = HttpConst.baseUrl
      ..options.connectTimeout = HttpConst.connectionTimeout
      ..options.receiveTimeout = HttpConst.receiveTimeout
      ..options.headers = {'Content-Type': 'application/json; charset=utf-8'}
      ..interceptors.add(PrettyDioLogger(
        requestHeader: false,
        requestBody: false,
        responseBody: false,
        responseHeader: false,
        error: false,
        compact: false,
        maxWidth: 90,
      ))
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (RequestOptions options,
              RequestInterceptorHandler handler) async {
            // getting token
            var token = await sharedPrefHelper.authToken;

            if (token != null) {
              options.headers.putIfAbsent('Authorization', () => token);
            } else {
              print('Auth token is null');
            }

            return handler.next(options);
          },
        ),
      )
      ..interceptors.add(TokenChangeInterceptor(
          requestRetrier: DioConnectivityRequestRetrier(
        dio: dio,
        connectivity: Connectivity(),
      )));

    return dio;
  }
}
