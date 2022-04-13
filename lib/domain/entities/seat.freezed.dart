// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'seat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SeatTearOff {
  const _$SeatTearOff();

  _Seat call({required String seatRow, required int seatNumber}) {
    return _Seat(
      seatRow: seatRow,
      seatNumber: seatNumber,
    );
  }
}

/// @nodoc
const $Seat = _$SeatTearOff();

/// @nodoc
mixin _$Seat {
  String get seatRow => throw _privateConstructorUsedError;
  int get seatNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatCopyWith<Seat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatCopyWith<$Res> {
  factory $SeatCopyWith(Seat value, $Res Function(Seat) then) =
      _$SeatCopyWithImpl<$Res>;
  $Res call({String seatRow, int seatNumber});
}

/// @nodoc
class _$SeatCopyWithImpl<$Res> implements $SeatCopyWith<$Res> {
  _$SeatCopyWithImpl(this._value, this._then);

  final Seat _value;
  // ignore: unused_field
  final $Res Function(Seat) _then;

  @override
  $Res call({
    Object? seatRow = freezed,
    Object? seatNumber = freezed,
  }) {
    return _then(_value.copyWith(
      seatRow: seatRow == freezed
          ? _value.seatRow
          : seatRow // ignore: cast_nullable_to_non_nullable
              as String,
      seatNumber: seatNumber == freezed
          ? _value.seatNumber
          : seatNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SeatCopyWith<$Res> implements $SeatCopyWith<$Res> {
  factory _$SeatCopyWith(_Seat value, $Res Function(_Seat) then) =
      __$SeatCopyWithImpl<$Res>;
  @override
  $Res call({String seatRow, int seatNumber});
}

/// @nodoc
class __$SeatCopyWithImpl<$Res> extends _$SeatCopyWithImpl<$Res>
    implements _$SeatCopyWith<$Res> {
  __$SeatCopyWithImpl(_Seat _value, $Res Function(_Seat) _then)
      : super(_value, (v) => _then(v as _Seat));

  @override
  _Seat get _value => super._value as _Seat;

  @override
  $Res call({
    Object? seatRow = freezed,
    Object? seatNumber = freezed,
  }) {
    return _then(_Seat(
      seatRow: seatRow == freezed
          ? _value.seatRow
          : seatRow // ignore: cast_nullable_to_non_nullable
              as String,
      seatNumber: seatNumber == freezed
          ? _value.seatNumber
          : seatNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Seat implements _Seat {
  const _$_Seat({required this.seatRow, required this.seatNumber});

  @override
  final String seatRow;
  @override
  final int seatNumber;

  @override
  String toString() {
    return 'Seat(seatRow: $seatRow, seatNumber: $seatNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Seat &&
            const DeepCollectionEquality().equals(other.seatRow, seatRow) &&
            const DeepCollectionEquality()
                .equals(other.seatNumber, seatNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(seatRow),
      const DeepCollectionEquality().hash(seatNumber));

  @JsonKey(ignore: true)
  @override
  _$SeatCopyWith<_Seat> get copyWith =>
      __$SeatCopyWithImpl<_Seat>(this, _$identity);
}

abstract class _Seat implements Seat {
  const factory _Seat({required String seatRow, required int seatNumber}) =
      _$_Seat;

  @override
  String get seatRow;
  @override
  int get seatNumber;
  @override
  @JsonKey(ignore: true)
  _$SeatCopyWith<_Seat> get copyWith => throw _privateConstructorUsedError;
}
