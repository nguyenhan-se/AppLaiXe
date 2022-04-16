// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'destinations_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DestinationsStateTearOff {
  const _$DestinationsStateTearOff();

  _DestinationsState call({required List<Destination> destinations}) {
    return _DestinationsState(
      destinations: destinations,
    );
  }
}

/// @nodoc
const $DestinationsState = _$DestinationsStateTearOff();

/// @nodoc
mixin _$DestinationsState {
  List<Destination> get destinations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DestinationsStateCopyWith<DestinationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationsStateCopyWith<$Res> {
  factory $DestinationsStateCopyWith(
          DestinationsState value, $Res Function(DestinationsState) then) =
      _$DestinationsStateCopyWithImpl<$Res>;
  $Res call({List<Destination> destinations});
}

/// @nodoc
class _$DestinationsStateCopyWithImpl<$Res>
    implements $DestinationsStateCopyWith<$Res> {
  _$DestinationsStateCopyWithImpl(this._value, this._then);

  final DestinationsState _value;
  // ignore: unused_field
  final $Res Function(DestinationsState) _then;

  @override
  $Res call({
    Object? destinations = freezed,
  }) {
    return _then(_value.copyWith(
      destinations: destinations == freezed
          ? _value.destinations
          : destinations // ignore: cast_nullable_to_non_nullable
              as List<Destination>,
    ));
  }
}

/// @nodoc
abstract class _$DestinationsStateCopyWith<$Res>
    implements $DestinationsStateCopyWith<$Res> {
  factory _$DestinationsStateCopyWith(
          _DestinationsState value, $Res Function(_DestinationsState) then) =
      __$DestinationsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Destination> destinations});
}

/// @nodoc
class __$DestinationsStateCopyWithImpl<$Res>
    extends _$DestinationsStateCopyWithImpl<$Res>
    implements _$DestinationsStateCopyWith<$Res> {
  __$DestinationsStateCopyWithImpl(
      _DestinationsState _value, $Res Function(_DestinationsState) _then)
      : super(_value, (v) => _then(v as _DestinationsState));

  @override
  _DestinationsState get _value => super._value as _DestinationsState;

  @override
  $Res call({
    Object? destinations = freezed,
  }) {
    return _then(_DestinationsState(
      destinations: destinations == freezed
          ? _value.destinations
          : destinations // ignore: cast_nullable_to_non_nullable
              as List<Destination>,
    ));
  }
}

/// @nodoc

class _$_DestinationsState extends _DestinationsState {
  const _$_DestinationsState({required this.destinations}) : super._();

  @override
  final List<Destination> destinations;

  @override
  String toString() {
    return 'DestinationsState(destinations: $destinations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DestinationsState &&
            const DeepCollectionEquality()
                .equals(other.destinations, destinations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(destinations));

  @JsonKey(ignore: true)
  @override
  _$DestinationsStateCopyWith<_DestinationsState> get copyWith =>
      __$DestinationsStateCopyWithImpl<_DestinationsState>(this, _$identity);
}

abstract class _DestinationsState extends DestinationsState {
  const factory _DestinationsState({required List<Destination> destinations}) =
      _$_DestinationsState;
  const _DestinationsState._() : super._();

  @override
  List<Destination> get destinations;
  @override
  @JsonKey(ignore: true)
  _$DestinationsStateCopyWith<_DestinationsState> get copyWith =>
      throw _privateConstructorUsedError;
}
