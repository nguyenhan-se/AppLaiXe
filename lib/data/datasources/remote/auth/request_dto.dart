part of 'auth_api.dart';

@freezed
class RequestDto with _$RequestDto {
  const factory RequestDto.login({
    required String email,
    required String password,
  }) = RequestLoginDto;

  factory RequestDto.fromJson(Map<String, dynamic> json) =>
      _$RequestDtoFromJson(json);
}
