// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestDto _$RequestDtoFromJson(Map<String, dynamic> json) {
  return RequestLoginDto.fromJson(json);
}

/// @nodoc
class _$RequestDtoTearOff {
  const _$RequestDtoTearOff();

  RequestLoginDto login({required String email, required String password}) {
    return RequestLoginDto(
      email: email,
      password: password,
    );
  }

  RequestDto fromJson(Map<String, Object?> json) {
    return RequestDto.fromJson(json);
  }
}

/// @nodoc
const $RequestDto = _$RequestDtoTearOff();

/// @nodoc
mixin _$RequestDto {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestLoginDto value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestLoginDto value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestLoginDto value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestDtoCopyWith<RequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDtoCopyWith<$Res> {
  factory $RequestDtoCopyWith(
          RequestDto value, $Res Function(RequestDto) then) =
      _$RequestDtoCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$RequestDtoCopyWithImpl<$Res> implements $RequestDtoCopyWith<$Res> {
  _$RequestDtoCopyWithImpl(this._value, this._then);

  final RequestDto _value;
  // ignore: unused_field
  final $Res Function(RequestDto) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $RequestLoginDtoCopyWith<$Res>
    implements $RequestDtoCopyWith<$Res> {
  factory $RequestLoginDtoCopyWith(
          RequestLoginDto value, $Res Function(RequestLoginDto) then) =
      _$RequestLoginDtoCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class _$RequestLoginDtoCopyWithImpl<$Res> extends _$RequestDtoCopyWithImpl<$Res>
    implements $RequestLoginDtoCopyWith<$Res> {
  _$RequestLoginDtoCopyWithImpl(
      RequestLoginDto _value, $Res Function(RequestLoginDto) _then)
      : super(_value, (v) => _then(v as RequestLoginDto));

  @override
  RequestLoginDto get _value => super._value as RequestLoginDto;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(RequestLoginDto(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestLoginDto implements RequestLoginDto {
  const _$RequestLoginDto({required this.email, required this.password});

  factory _$RequestLoginDto.fromJson(Map<String, dynamic> json) =>
      _$$RequestLoginDtoFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RequestDto.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestLoginDto &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $RequestLoginDtoCopyWith<RequestLoginDto> get copyWith =>
      _$RequestLoginDtoCopyWithImpl<RequestLoginDto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? login,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestLoginDto value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RequestLoginDto value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestLoginDto value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestLoginDtoToJson(this);
  }
}

abstract class RequestLoginDto implements RequestDto {
  const factory RequestLoginDto(
      {required String email, required String password}) = _$RequestLoginDto;

  factory RequestLoginDto.fromJson(Map<String, dynamic> json) =
      _$RequestLoginDto.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  $RequestLoginDtoCopyWith<RequestLoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseDto _$ResponseDtoFromJson(Map<String, dynamic> json) {
  return _ResponseDto.fromJson(json);
}

/// @nodoc
class _$ResponseDtoTearOff {
  const _$ResponseDtoTearOff();

  _ResponseDto call({required String token}) {
    return _ResponseDto(
      token: token,
    );
  }

  ResponseDto fromJson(Map<String, Object?> json) {
    return ResponseDto.fromJson(json);
  }
}

/// @nodoc
const $ResponseDto = _$ResponseDtoTearOff();

/// @nodoc
mixin _$ResponseDto {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDtoCopyWith<ResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDtoCopyWith<$Res> {
  factory $ResponseDtoCopyWith(
          ResponseDto value, $Res Function(ResponseDto) then) =
      _$ResponseDtoCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class _$ResponseDtoCopyWithImpl<$Res> implements $ResponseDtoCopyWith<$Res> {
  _$ResponseDtoCopyWithImpl(this._value, this._then);

  final ResponseDto _value;
  // ignore: unused_field
  final $Res Function(ResponseDto) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ResponseDtoCopyWith<$Res>
    implements $ResponseDtoCopyWith<$Res> {
  factory _$ResponseDtoCopyWith(
          _ResponseDto value, $Res Function(_ResponseDto) then) =
      __$ResponseDtoCopyWithImpl<$Res>;
  @override
  $Res call({String token});
}

/// @nodoc
class __$ResponseDtoCopyWithImpl<$Res> extends _$ResponseDtoCopyWithImpl<$Res>
    implements _$ResponseDtoCopyWith<$Res> {
  __$ResponseDtoCopyWithImpl(
      _ResponseDto _value, $Res Function(_ResponseDto) _then)
      : super(_value, (v) => _then(v as _ResponseDto));

  @override
  _ResponseDto get _value => super._value as _ResponseDto;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_ResponseDto(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseDto implements _ResponseDto {
  const _$_ResponseDto({required this.token});

  factory _$_ResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseDtoFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'ResponseDto(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseDto &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$ResponseDtoCopyWith<_ResponseDto> get copyWith =>
      __$ResponseDtoCopyWithImpl<_ResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseDtoToJson(this);
  }
}

abstract class _ResponseDto implements ResponseDto {
  const factory _ResponseDto({required String token}) = _$_ResponseDto;

  factory _ResponseDto.fromJson(Map<String, dynamic> json) =
      _$_ResponseDto.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$ResponseDtoCopyWith<_ResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
