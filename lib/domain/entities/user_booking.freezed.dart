// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserBookingTearOff {
  const _$UserBookingTearOff();

  _UserBooking call(
      {required String name,
      required String phone,
      required String startPoint,
      required String endPoint,
      required String type,
      String? note}) {
    return _UserBooking(
      name: name,
      phone: phone,
      startPoint: startPoint,
      endPoint: endPoint,
      type: type,
      note: note,
    );
  }
}

/// @nodoc
const $UserBooking = _$UserBookingTearOff();

/// @nodoc
mixin _$UserBooking {
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get startPoint => throw _privateConstructorUsedError;
  String get endPoint => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserBookingCopyWith<UserBooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBookingCopyWith<$Res> {
  factory $UserBookingCopyWith(
          UserBooking value, $Res Function(UserBooking) then) =
      _$UserBookingCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String phone,
      String startPoint,
      String endPoint,
      String type,
      String? note});
}

/// @nodoc
class _$UserBookingCopyWithImpl<$Res> implements $UserBookingCopyWith<$Res> {
  _$UserBookingCopyWithImpl(this._value, this._then);

  final UserBooking _value;
  // ignore: unused_field
  final $Res Function(UserBooking) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? startPoint = freezed,
    Object? endPoint = freezed,
    Object? type = freezed,
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
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserBookingCopyWith<$Res>
    implements $UserBookingCopyWith<$Res> {
  factory _$UserBookingCopyWith(
          _UserBooking value, $Res Function(_UserBooking) then) =
      __$UserBookingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String phone,
      String startPoint,
      String endPoint,
      String type,
      String? note});
}

/// @nodoc
class __$UserBookingCopyWithImpl<$Res> extends _$UserBookingCopyWithImpl<$Res>
    implements _$UserBookingCopyWith<$Res> {
  __$UserBookingCopyWithImpl(
      _UserBooking _value, $Res Function(_UserBooking) _then)
      : super(_value, (v) => _then(v as _UserBooking));

  @override
  _UserBooking get _value => super._value as _UserBooking;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? startPoint = freezed,
    Object? endPoint = freezed,
    Object? type = freezed,
    Object? note = freezed,
  }) {
    return _then(_UserBooking(
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
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserBooking extends _UserBooking {
  const _$_UserBooking(
      {required this.name,
      required this.phone,
      required this.startPoint,
      required this.endPoint,
      required this.type,
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
  final String type;
  @override
  final String? note;

  @override
  String toString() {
    return 'UserBooking(name: $name, phone: $phone, startPoint: $startPoint, endPoint: $endPoint, type: $type, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserBooking &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.startPoint, startPoint) &&
            const DeepCollectionEquality().equals(other.endPoint, endPoint) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(startPoint),
      const DeepCollectionEquality().hash(endPoint),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  _$UserBookingCopyWith<_UserBooking> get copyWith =>
      __$UserBookingCopyWithImpl<_UserBooking>(this, _$identity);
}

abstract class _UserBooking extends UserBooking {
  const factory _UserBooking(
      {required String name,
      required String phone,
      required String startPoint,
      required String endPoint,
      required String type,
      String? note}) = _$_UserBooking;
  const _UserBooking._() : super._();

  @override
  String get name;
  @override
  String get phone;
  @override
  String get startPoint;
  @override
  String get endPoint;
  @override
  String get type;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$UserBookingCopyWith<_UserBooking> get copyWith =>
      throw _privateConstructorUsedError;
}
