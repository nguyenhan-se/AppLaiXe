// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryBookingTearOff {
  const _$HistoryBookingTearOff();

  _HistoryBooking call(
      {required Booker user,
      required DateTime departure,
      required Destination destination,
      required List<Seat> seats,
      String? note}) {
    return _HistoryBooking(
      user: user,
      departure: departure,
      destination: destination,
      seats: seats,
      note: note,
    );
  }
}

/// @nodoc
const $HistoryBooking = _$HistoryBookingTearOff();

/// @nodoc
mixin _$HistoryBooking {
  Booker get user => throw _privateConstructorUsedError;
  DateTime get departure => throw _privateConstructorUsedError;
  Destination get destination => throw _privateConstructorUsedError;
  List<Seat> get seats => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryBookingCopyWith<HistoryBooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryBookingCopyWith<$Res> {
  factory $HistoryBookingCopyWith(
          HistoryBooking value, $Res Function(HistoryBooking) then) =
      _$HistoryBookingCopyWithImpl<$Res>;
  $Res call(
      {Booker user,
      DateTime departure,
      Destination destination,
      List<Seat> seats,
      String? note});

  $BookerCopyWith<$Res> get user;
  $DestinationCopyWith<$Res> get destination;
}

/// @nodoc
class _$HistoryBookingCopyWithImpl<$Res>
    implements $HistoryBookingCopyWith<$Res> {
  _$HistoryBookingCopyWithImpl(this._value, this._then);

  final HistoryBooking _value;
  // ignore: unused_field
  final $Res Function(HistoryBooking) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? departure = freezed,
    Object? destination = freezed,
    Object? seats = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Booker,
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
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $BookerCopyWith<$Res> get user {
    return $BookerCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $DestinationCopyWith<$Res> get destination {
    return $DestinationCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value));
    });
  }
}

/// @nodoc
abstract class _$HistoryBookingCopyWith<$Res>
    implements $HistoryBookingCopyWith<$Res> {
  factory _$HistoryBookingCopyWith(
          _HistoryBooking value, $Res Function(_HistoryBooking) then) =
      __$HistoryBookingCopyWithImpl<$Res>;
  @override
  $Res call(
      {Booker user,
      DateTime departure,
      Destination destination,
      List<Seat> seats,
      String? note});

  @override
  $BookerCopyWith<$Res> get user;
  @override
  $DestinationCopyWith<$Res> get destination;
}

/// @nodoc
class __$HistoryBookingCopyWithImpl<$Res>
    extends _$HistoryBookingCopyWithImpl<$Res>
    implements _$HistoryBookingCopyWith<$Res> {
  __$HistoryBookingCopyWithImpl(
      _HistoryBooking _value, $Res Function(_HistoryBooking) _then)
      : super(_value, (v) => _then(v as _HistoryBooking));

  @override
  _HistoryBooking get _value => super._value as _HistoryBooking;

  @override
  $Res call({
    Object? user = freezed,
    Object? departure = freezed,
    Object? destination = freezed,
    Object? seats = freezed,
    Object? note = freezed,
  }) {
    return _then(_HistoryBooking(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Booker,
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
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HistoryBooking extends _HistoryBooking {
  const _$_HistoryBooking(
      {required this.user,
      required this.departure,
      required this.destination,
      required this.seats,
      this.note})
      : super._();

  @override
  final Booker user;
  @override
  final DateTime departure;
  @override
  final Destination destination;
  @override
  final List<Seat> seats;
  @override
  final String? note;

  @override
  String toString() {
    return 'HistoryBooking(user: $user, departure: $departure, destination: $destination, seats: $seats, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoryBooking &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.departure, departure) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality().equals(other.seats, seats) &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(departure),
      const DeepCollectionEquality().hash(destination),
      const DeepCollectionEquality().hash(seats),
      const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  _$HistoryBookingCopyWith<_HistoryBooking> get copyWith =>
      __$HistoryBookingCopyWithImpl<_HistoryBooking>(this, _$identity);
}

abstract class _HistoryBooking extends HistoryBooking {
  const factory _HistoryBooking(
      {required Booker user,
      required DateTime departure,
      required Destination destination,
      required List<Seat> seats,
      String? note}) = _$_HistoryBooking;
  const _HistoryBooking._() : super._();

  @override
  Booker get user;
  @override
  DateTime get departure;
  @override
  Destination get destination;
  @override
  List<Seat> get seats;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$HistoryBookingCopyWith<_HistoryBooking> get copyWith =>
      throw _privateConstructorUsedError;
}
