// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_form_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserFormInfoTearOff {
  const _$UserFormInfoTearOff();

  _UserFormInfo call(
      {required String name,
      required String phone,
      required String startPoint,
      required String endPoint,
      String? note}) {
    return _UserFormInfo(
      name: name,
      phone: phone,
      startPoint: startPoint,
      endPoint: endPoint,
      note: note,
    );
  }
}

/// @nodoc
const $UserFormInfo = _$UserFormInfoTearOff();

/// @nodoc
mixin _$UserFormInfo {
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get startPoint => throw _privateConstructorUsedError;
  String get endPoint => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserFormInfoCopyWith<UserFormInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormInfoCopyWith<$Res> {
  factory $UserFormInfoCopyWith(
          UserFormInfo value, $Res Function(UserFormInfo) then) =
      _$UserFormInfoCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String phone,
      String startPoint,
      String endPoint,
      String? note});
}

/// @nodoc
class _$UserFormInfoCopyWithImpl<$Res> implements $UserFormInfoCopyWith<$Res> {
  _$UserFormInfoCopyWithImpl(this._value, this._then);

  final UserFormInfo _value;
  // ignore: unused_field
  final $Res Function(UserFormInfo) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? startPoint = freezed,
    Object? endPoint = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      startPoint: startPoint == freezed
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as String,
      endPoint: endPoint == freezed
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserFormInfoCopyWith<$Res>
    implements $UserFormInfoCopyWith<$Res> {
  factory _$UserFormInfoCopyWith(
          _UserFormInfo value, $Res Function(_UserFormInfo) then) =
      __$UserFormInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String phone,
      String startPoint,
      String endPoint,
      String? note});
}

/// @nodoc
class __$UserFormInfoCopyWithImpl<$Res> extends _$UserFormInfoCopyWithImpl<$Res>
    implements _$UserFormInfoCopyWith<$Res> {
  __$UserFormInfoCopyWithImpl(
      _UserFormInfo _value, $Res Function(_UserFormInfo) _then)
      : super(_value, (v) => _then(v as _UserFormInfo));

  @override
  _UserFormInfo get _value => super._value as _UserFormInfo;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? startPoint = freezed,
    Object? endPoint = freezed,
    Object? note = freezed,
  }) {
    return _then(_UserFormInfo(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      startPoint: startPoint == freezed
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as String,
      endPoint: endPoint == freezed
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserFormInfo extends _UserFormInfo {
  const _$_UserFormInfo(
      {required this.name,
      required this.phone,
      required this.startPoint,
      required this.endPoint,
      this.note})
      : super._();

  @override
  final String name;
  @override
  final String phone;
  @override
  final String startPoint;
  @override
  final String endPoint;
  @override
  final String? note;

  @override
  String toString() {
    return 'UserFormInfo(name: $name, phone: $phone, startPoint: $startPoint, endPoint: $endPoint, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserFormInfo &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.startPoint, startPoint) &&
            const DeepCollectionEquality().equals(other.endPoint, endPoint) &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(startPoint),
      const DeepCollectionEquality().hash(endPoint),
      const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  _$UserFormInfoCopyWith<_UserFormInfo> get copyWith =>
      __$UserFormInfoCopyWithImpl<_UserFormInfo>(this, _$identity);
}

abstract class _UserFormInfo extends UserFormInfo {
  const factory _UserFormInfo(
      {required String name,
      required String phone,
      required String startPoint,
      required String endPoint,
      String? note}) = _$_UserFormInfo;
  const _UserFormInfo._() : super._();

  @override
  String get name;
  @override
  String get phone;
  @override
  String get startPoint;
  @override
  String get endPoint;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$UserFormInfoCopyWith<_UserFormInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
