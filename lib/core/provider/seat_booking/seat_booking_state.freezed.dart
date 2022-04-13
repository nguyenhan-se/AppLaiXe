// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'seat_booking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SeatBookingStateTearOff {
  const _$SeatBookingStateTearOff();

  _SeatBookingState call({required List<Seat> selectedSeats}) {
    return _SeatBookingState(
      selectedSeats: selectedSeats,
    );
  }
}

/// @nodoc
const $SeatBookingState = _$SeatBookingStateTearOff();

/// @nodoc
mixin _$SeatBookingState {
  List<Seat> get selectedSeats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatBookingStateCopyWith<SeatBookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatBookingStateCopyWith<$Res> {
  factory $SeatBookingStateCopyWith(
          SeatBookingState value, $Res Function(SeatBookingState) then) =
      _$SeatBookingStateCopyWithImpl<$Res>;
  $Res call({List<Seat> selectedSeats});
}

/// @nodoc
class _$SeatBookingStateCopyWithImpl<$Res>
    implements $SeatBookingStateCopyWith<$Res> {
  _$SeatBookingStateCopyWithImpl(this._value, this._then);

  final SeatBookingState _value;
  // ignore: unused_field
  final $Res Function(SeatBookingState) _then;

  @override
  $Res call({
    Object? selectedSeats = freezed,
  }) {
    return _then(_value.copyWith(
      selectedSeats: selectedSeats == freezed
          ? _value.selectedSeats
          : selectedSeats // ignore: cast_nullable_to_non_nullable
              as List<Seat>,
    ));
  }
}

/// @nodoc
abstract class _$SeatBookingStateCopyWith<$Res>
    implements $SeatBookingStateCopyWith<$Res> {
  factory _$SeatBookingStateCopyWith(
          _SeatBookingState value, $Res Function(_SeatBookingState) then) =
      __$SeatBookingStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Seat> selectedSeats});
}

/// @nodoc
class __$SeatBookingStateCopyWithImpl<$Res>
    extends _$SeatBookingStateCopyWithImpl<$Res>
    implements _$SeatBookingStateCopyWith<$Res> {
  __$SeatBookingStateCopyWithImpl(
      _SeatBookingState _value, $Res Function(_SeatBookingState) _then)
      : super(_value, (v) => _then(v as _SeatBookingState));

  @override
  _SeatBookingState get _value => super._value as _SeatBookingState;

  @override
  $Res call({
    Object? selectedSeats = freezed,
  }) {
    return _then(_SeatBookingState(
      selectedSeats: selectedSeats == freezed
          ? _value.selectedSeats
          : selectedSeats // ignore: cast_nullable_to_non_nullable
              as List<Seat>,
    ));
  }
}

/// @nodoc

class _$_SeatBookingState extends _SeatBookingState {
  const _$_SeatBookingState({required this.selectedSeats}) : super._();

  @override
  final List<Seat> selectedSeats;

  @override
  String toString() {
    return 'SeatBookingState(selectedSeats: $selectedSeats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SeatBookingState &&
            const DeepCollectionEquality()
                .equals(other.selectedSeats, selectedSeats));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedSeats));

  @JsonKey(ignore: true)
  @override
  _$SeatBookingStateCopyWith<_SeatBookingState> get copyWith =>
      __$SeatBookingStateCopyWithImpl<_SeatBookingState>(this, _$identity);
}

abstract class _SeatBookingState extends SeatBookingState {
  const factory _SeatBookingState({required List<Seat> selectedSeats}) =
      _$_SeatBookingState;
  const _SeatBookingState._() : super._();

  @override
  List<Seat> get selectedSeats;
  @override
  @JsonKey(ignore: true)
  _$SeatBookingStateCopyWith<_SeatBookingState> get copyWith =>
      throw _privateConstructorUsedError;
}
