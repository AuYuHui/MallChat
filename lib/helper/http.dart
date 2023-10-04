import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:mallchat/env.dart';
import 'package:mallchat/helper/logger.dart';
import 'package:mallchat/injection.dart';

class HttpClient {
  static final HttpClient _singleton = HttpClient._internal();

  late String token;

  factory HttpClient() {
    return _singleton;
  }

  HttpClient._internal() {
    _init();
  }

  final Dio dio = Dio();

  void _init() {
    BaseOptions options = BaseOptions(
      //请求基地址,可以包含子路径
      baseUrl: Env.apiServerURL,
      //连接服务器超时时间，单位是毫秒.
      connectTimeout: 12000,
      //响应流上前后两次接受到数据的间隔，单位为毫秒。
      receiveTimeout: 12000,
    );
    dio.options = options;

    dio.interceptors.add(RetryInterceptor(
      dio: dio,
      retries: 3,
      logPrint: (message) {
        Logger.instance.w(message);
      },
      retryDelays: const [
        Duration(seconds: 1), // wait 1 sec before first retry
        Duration(seconds: 2), // wait 2 sec before second retry
        Duration(seconds: 3), // wait 3 sec before third retry
      ],
    ));
  }

  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return await dio.get(url,
        queryParameters: queryParameters,
        options: options ?? await _buildRequestOptions());
  }

  Future<Response> post(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? formData,
    Options? options,
  }) async {
    final resp = await dio.post(
      url,
      queryParameters: queryParameters,
      data: formData,
      options: options ?? await _buildRequestOptions(),
    );

    return resp;
  }

  Future<Response> put(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? formData,
    Options? options,
  }) async {
    return await dio.put(
      url,
      queryParameters: queryParameters,
      data: formData != null ? FormData.fromMap(formData) : null,
      options: options ?? await _buildRequestOptions(),
    );
  }

  Future<Response> delete(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? formData,
    Options? options,
  }) async {
    return await dio.delete(
      url,
      queryParameters: queryParameters,
      data: formData != null ? FormData.fromMap(formData) : null,
      options: options ?? await _buildRequestOptions(),
    );
  }

  Map<String, dynamic> _buildAuthHeaders() {
    final headers = <String, dynamic>{
      'Content-Type': 'application/json; charset=utf-8'
    };

    if (token == '') {
      return headers;
    }

    headers['Authorization'] = 'Bearer $token';

    return headers;
  }

  Future<Options> _buildRequestOptions() async {
    final user = await db.userDao.findUser();
    if (user?.token != '') {
      token = user!.token;
    }
    return Options(
      headers: _buildAuthHeaders(),
      receiveDataWhenStatusError: true,
      sendTimeout: 10000,
      receiveTimeout: 10000,
    );
  }
}
