import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  final String _baseUrl = dotenv.env['API_BASE_URL']!;
  final Dio _dio;

  ApiService(this._dio) {
    _dio
      ..options.baseUrl = _baseUrl
      ..httpClientAdapter
      ..options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };
  }

  Future<Map<String, dynamic>> get({
    required String endpoint,
    Map<String, dynamic>? query,
  }) async {
    try {
      var response = await _dio.get(
        '$_baseUrl$endpoint',
        queryParameters: query,
      );
      return response.data;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> post(
    String endpoint, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var response = await _dio.post(
        '$_baseUrl$endpoint',
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> del(
    String endpoint, {
    data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var response = await _dio.delete(
        '$_baseUrl$endpoint',
        queryParameters: queryParameters,
      );
      return response;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }

  // void updateHeader({String? token}) {
  //   final newToken = token ?? this.token;
  //   this.token = newToken;
  //   _dio.options.headers = {
  //     'Accept': 'application/json',
  //     'Content-Type': 'application/json',
  //     'Authorization': newToken == ""
  //         ? ""
  //         : newToken.contains('Bearer')
  //         ? newToken
  //         : 'Bearer $newToken',

  //   };
  // }

  Future<Response> postWithImage(
    String endpoint, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var response = await _dio.post(
        '$_baseUrl$endpoint',
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }
}
