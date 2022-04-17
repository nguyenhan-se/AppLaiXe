// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookerTearOff {
  const _$BookerTearOff();

  _Booker call(
      {required String name,
      required String phone,
      required String startPoint,
      required String endPoint,
      required String type,
      String? note}) {
    return _Booker(
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
const $Booker = _$BookerTearOff();

/// @nodoc
mixin _$Booker {
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get startPoint => throw _privateConstructorUsedError;
  String get endPoint => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookerCopyWith<Booker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookerCopyWith<$Res> {
  factory $BookerCopyWith(Booker value, $Res Function(Booker) then) =
      _$BookerCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String phone,
      String startPoint,
      String endPoint,
      String type,
      String? note});
}

/// @nodoc
class _$BookerCopyWithImpl<$Res> implements $BookerCopyWith<$Res> {
  _$BookerCopyWithImpl(this._value, this._then);

  final Booker _value;
  // ignore: unused_field
  final $Res Function(Booker) _then;

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
abstract class _$BookerCopyWith<$Res> implements $BookerCopyWith<$Res> {
  factory _$BookerCopyWith(_Booker value, $Res Function(_Booker) then) =
      __$BookerCopyWithImpl<$Res>;
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
class __$BookerCopyWithImpl<$Res> extends _$BookerCopyWithImpl<$Res>
    implements _$BookerCopyWith<$Res> {
  __$BookerCopyWithImpl(_Booker _value, $Res Function(_Booker) _then)
      : super(_value, (v) => _then(v as _Booker));

  @override
  _Booker get _value => super._value as _Booker;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? startPoint = freezed,
    Object? endPoint = freezed,
    Object? type = freezed,
    Object? note = freezed,
  }) {
    return _then(_Booker(
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

class _$_Booker extends _Booker {
  const _$_Booker(
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
    return 'Booker(name: $name, phone: $phone, startPoint: $startPoint, endPoint: $endPoint, type: $type, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Booker &&
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
  _$BookerCopyWith<_Booker> get copyWith =>
      __$BookerCopyWithImpl<_Booker>(this, _$identity);
}

abstract class _Booker extends Booker {
  const factory _Booker(
      {required String name,
      required String phone,
      required String startPoint,
      required String endPoint,
      required String type,
      String? note}) = _$_Booker;
  const _Booker._() : super._();

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
  _$BookerCopyWith<_Booker> get copyWith => throw _privateConstructorUsedError;
}
