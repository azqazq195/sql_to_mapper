// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Response _$ResponseFromJson(Map<String, dynamic> json) => Response(
      timestamp: DateTime.parse(json['timestamp'] as String),
      status: json['status'] as int,
      error: json['error'] as String?,
      errorCode: json['errorCode'] as String?,
      message: json['message'] as String,
      data: json['data'],
    );

Map<String, dynamic> _$ResponseToJson(Response instance) => <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'status': instance.status,
      'error': instance.error,
      'errorCode': instance.errorCode,
      'message': instance.message,
      'data': instance.data,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.moseoh.xyz/v1';
    // baseUrl ??= 'http://localhost:8080/v1';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Response> signup(signUpRequestDto) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(signUpRequestDto.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/authentication/signup',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Response.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Response> signin(signInRequestDto) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(signInRequestDto.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/authentication/signin',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Response.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Response> reload(accessToken, reloadRequestDto) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'X-AUTH-TOKEN': accessToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(reloadRequestDto.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/code/reload',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Response.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Response> tablenames(accessToken, databaseName) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'databaseName': databaseName};
    final _headers = <String, dynamic>{r'X-AUTH-TOKEN': accessToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/code/tablenames',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Response.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Response> table(accessToken, databaseName, tablename) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'databaseName': databaseName,
      r'tablename': tablename
    };
    final _headers = <String, dynamic>{r'X-AUTH-TOKEN': accessToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/code/table',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Response.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Response> domain(accessToken, mtableId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'mtableId': mtableId};
    final _headers = <String, dynamic>{r'X-AUTH-TOKEN': accessToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/code/domain',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Response.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Response> mapper(accessToken, mtableId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'mtableId': mtableId};
    final _headers = <String, dynamic>{r'X-AUTH-TOKEN': accessToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/code/mapper',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Response.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Response> mybatis(accessToken, mtableId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'mtableId': mtableId};
    final _headers = <String, dynamic>{r'X-AUTH-TOKEN': accessToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/code/mybatis',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Response.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Response> service(accessToken, mtableId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'mtableId': mtableId};
    final _headers = <String, dynamic>{r'X-AUTH-TOKEN': accessToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/code/service',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Response.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
