// Package imports:
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'request_dto.dart';
part 'response_dto.dart';
part 'auth_api.g.dart';
part 'auth_api.freezed.dart';

@RestApi(baseUrl: 'https://reqres.in/api')
abstract class AuthApi {
  factory AuthApi(Dio dio) = _AuthApi;

  @POST('/login')
  Future<HttpResponse<ResponseDto>> login(@Body() RequestLoginDto dto);
}
