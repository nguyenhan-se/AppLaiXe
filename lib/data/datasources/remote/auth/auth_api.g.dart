// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestLoginDto _$$RequestLoginDtoFromJson(Map<String, dynamic> json) =>
    _$RequestLoginDto(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$RequestLoginDtoToJson(_$RequestLoginDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$_ResponseDto _$$_ResponseDtoFromJson(Map<String, dynamic> json) =>
    _$_ResponseDto(
      token: json['token'] as String,
    );

Map<String, dynamic> _$$_ResponseDtoToJson(_$_ResponseDto instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _AuthApi implements AuthApi {
  _AuthApi(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://reqres.in/api';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<ResponseDto>> login(dto) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = dto;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<ResponseDto>>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseDto.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
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
