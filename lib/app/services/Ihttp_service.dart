import 'package:deck2dark/app/services/impl/retry.dart';
import 'package:dio/dio.dart';

abstract class IHttpService {
  Future<Map<String, dynamic>> get(String path);
  Future<List<dynamic>> getListResponse(String path);

  Future<Map<String, dynamic>> post(String path,
      [dynamic body, bool useAccount]);

  Future<Map<String, dynamic>> put(String path, dynamic body);

  Future<Response<T>> retry<T>(RequestOptions? ops,
      [RetryOptions? retryOptions]);
}
