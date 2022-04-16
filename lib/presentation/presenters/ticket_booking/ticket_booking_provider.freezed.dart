// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ticket_booking_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TicketBookingStateTearOff {
  const _$TicketBookingStateTearOff();

  _TicketBookingState call(
      {required DateTime departure,
      required Destination destination,
      required List<Seat> seats}) {
    return _TicketBookingState(
      departure: departure,
      destination: destination,
      seats: seats,
    );
  }
}

/// @nodoc
const $TicketBookingState = _$TicketBookingStateTearOff();

/// @nodoc
mixin _$TicketBookingState {
  DateTime get departure => throw _privateConstructorUsedError;
  Destination get destination => throw _privateConstructorUsedError;
  List<Seat> get seats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketBookingStateCopyWith<TicketBookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketBookingStateCopyWith<$Res> {
  factory $TicketBookingStateCopyWith(
          TicketBookingState value, $Res Function(TicketBookingState) then) =
      _$TicketBookingStateCopyWithImpl<$Res>;
  $Res call({DateTime departure, Destination destination, List<Seat> seats});

  $DestinationCopyWith<$Res> get destination;
}

/// @nodoc
class _$TicketBookingStateCopyWithImpl<$Res>
    implements $TicketBookingStateCopyWith<$Res> {
  _$TicketBookingStateCopyWithImpl(this._value, this._then);

  final TicketBookingState _value;
  // ignore: unused_field
  final $Res Function(TicketBookingState) _then;

  @override
  $Res call({
    Object? departure = freezed,
    Object? destination = freezed,
    Object? seats = freezed,
  }) {
    return _then(_value.copyWith(
      departure: departure == freezed
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as DateTime,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Destination,
      seats: seats == freezed
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<Seat>,
    ));
  }

  @override
  $DestinationCopyWith<$Res> get destination {
    return $DestinationCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value));
    });
  }
}

/// @nodoc
abstract class _$TicketBookingStateCopyWith<$Res>
    implements $TicketBookingStateCopyWith<$Res> {
  factory _$TicketBookingStateCopyWith(
          _TicketBookingState value, $Res Function(_TicketBookingState) then) =
      __$TicketBookingStateCopyWithImpl<$Res>;
  @override
  $Res call({DateTime departure, Destination destination, List<Seat> seats});

  @override
  $DestinationCopyWith<$Res> get destination;
}

/// @nodoc
class __$TicketBookingStateCopyWithImpl<$Res>
    extends _$TicketBookingStateCopyWithImpl<$Res>
    implements _$TicketBookingStateCopyWith<$Res> {
  __$TicketBookingStateCopyWithImpl(
      _TicketBookingState _value, $Res Function(_TicketBookingState) _then)
      : super(_value, (v) => _then(v as _TicketBookingState));

  @override
  _TicketBookingState get _value => super._value as _TicketBookingState;

  @override
  $Res call({
    Object? departure = freezed,
    Object? destination = freezed,
    Object? seats = freezed,
  }) {
    return _then(_TicketBookingState(
      departure: departure == freezed
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as DateTime,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Destination,
      seats: seats == freezed
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<Seat>,
    ));
  }
}

/// @nodoc

class _$_TicketBookingState extends _TicketBookingState {
  const _$_TicketBookingState(
      {required this.departure, required this.destination, required this.seats})
      : super._();

  @override
  final DateTime departure;
  @override
  final Destination destination;
  @override
  final List<Seat> seats;

  @override
  String toString() {
    return 'TicketBookingState(departure: $departure, destination: $destination, seats: $seats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TicketBookingState &&
            const DeepCollectionEquality().equals(other.departure, departure) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality().equals(other.seats, seats));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(departure),
      const DeepCollectionEquality().hash(destination),
      const DeepCollectionEquality().hash(seats));

  @JsonKey(ignore: true)
  @override
  _$TicketBookingStateCopyWith<_TicketBookingState> get copyWith =>
      __$TicketBookingStateCopyWithImpl<_TicketBookingState>(this, _$identity);
}

abstract class _TicketBookingState extends TicketBookingState {
  const factory _TicketBookingState(
      {required DateTime departure,
      required Destination destination,
      required List<Seat> seats}) = _$_TicketBookingState;
  const _TicketBookingState._() : super._();

  @override
  DateTime get departure;
  @override
  Destination get destination;
  @override
  List<Seat> get seats;
  @override
  @JsonKey(ignore: true)
  _$TicketBookingStateCopyWith<_TicketBookingState> get copyWith =>
      throw _privateConstructorUsedError;
}
