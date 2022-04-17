// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'destination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DestinationTearOff {
  const _$DestinationTearOff();

  _Destination call(
      {required String code,
      required String from,
      required String to,
      required String dateForm,
      required String dateTo,
      required double timeout,
      required int price}) {
    return _Destination(
      code: code,
      from: from,
      to: to,
      dateForm: dateForm,
      dateTo: dateTo,
      timeout: timeout,
      price: price,
    );
  }
}

/// @nodoc
const $Destination = _$DestinationTearOff();

/// @nodoc
mixin _$Destination {
  String get code => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get dateForm => throw _privateConstructorUsedError;
  String get dateTo => throw _privateConstructorUsedError;
  double get timeout => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DestinationCopyWith<Destination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationCopyWith<$Res> {
  factory $DestinationCopyWith(
          Destination value, $Res Function(Destination) then) =
      _$DestinationCopyWithImpl<$Res>;
  $Res call(
      {String code,
      String from,
      String to,
      String dateForm,
      String dateTo,
      double timeout,
      int price});
}

/// @nodoc
class _$DestinationCopyWithImpl<$Res> implements $DestinationCopyWith<$Res> {
  _$DestinationCopyWithImpl(this._value, this._then);

  final Destination _value;
  // ignore: unused_field
  final $Res Function(Destination) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? dateForm = freezed,
    Object? dateTo = freezed,
    Object? timeout = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      dateForm: dateForm == freezed
          ? _value.dateForm
          : dateForm // ignore: cast_nullable_to_non_nullable
              as String,
      dateTo: dateTo == freezed
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as String,
      timeout: timeout == freezed
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as double,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DestinationCopyWith<$Res>
    implements $DestinationCopyWith<$Res> {
  factory _$DestinationCopyWith(
          _Destination value, $Res Function(_Destination) then) =
      __$DestinationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String code,
      String from,
      String to,
      String dateForm,
      String dateTo,
      double timeout,
      int price});
}

/// @nodoc
class __$DestinationCopyWithImpl<$Res> extends _$DestinationCopyWithImpl<$Res>
    implements _$DestinationCopyWith<$Res> {
  __$DestinationCopyWithImpl(
      _Destination _value, $Res Function(_Destination) _then)
      : super(_value, (v) => _then(v as _Destination));

  @override
  _Destination get _value => super._value as _Destination;

  @override
  $Res call({
    Object? code = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? dateForm = freezed,
    Object? dateTo = freezed,
    Object? timeout = freezed,
    Object? price = freezed,
  }) {
    return _then(_Destination(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      dateForm: dateForm == freezed
          ? _value.dateForm
          : dateForm // ignore: cast_nullable_to_non_nullable
              as String,
      dateTo: dateTo == freezed
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as String,
      timeout: timeout == freezed
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as double,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Destination extends _Destination {
  const _$_Destination(
      {required this.code,
      required this.from,
      required this.to,
      required this.dateForm,
      required this.dateTo,
      required this.timeout,
      required this.price})
      : super._();

  @override
  final String code;
  @override
  final String from;
  @override
  final String to;
  @override
  final String dateForm;
  @override
  final String dateTo;
  @override
  final double timeout;
  @override
  final int price;

  @override
  String toString() {
    return 'Destination(code: $code, from: $from, to: $to, dateForm: $dateForm, dateTo: $dateTo, timeout: $timeout, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Destination &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.dateForm, dateForm) &&
            const DeepCollectionEquality().equals(other.dateTo, dateTo) &&
            const DeepCollectionEquality().equals(other.timeout, timeout) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(dateForm),
      const DeepCollectionEquality().hash(dateTo),
      const DeepCollectionEquality().hash(timeout),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$DestinationCopyWith<_Destination> get copyWith =>
      __$DestinationCopyWithImpl<_Destination>(this, _$identity);
}

abstract class _Destination extends Destination {
  const factory _Destination(
      {required String code,
      required String from,
      required String to,
      required String dateForm,
      required String dateTo,
      required double timeout,
      required int price}) = _$_Destination;
  const _Destination._() : super._();

  @override
  String get code;
  @override
  String get from;
  @override
  String get to;
  @override
  String get dateForm;
  @override
  String get dateTo;
  @override
  double get timeout;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$DestinationCopyWith<_Destination> get copyWith =>
      throw _privateConstructorUsedError;
}
