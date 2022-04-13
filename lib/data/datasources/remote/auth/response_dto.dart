part of 'auth_api.dart';

@freezed
class ResponseDto with _$ResponseDto {
  const factory ResponseDto({
    required String token,
  }) = _ResponseDto;

  factory ResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ResponseDtoFromJson(json);
}
