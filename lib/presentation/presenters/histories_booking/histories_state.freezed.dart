// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'histories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoriesStateTearOff {
  const _$HistoriesStateTearOff();

  _HistoriesState call({required List<HistoryBooking> historiesBooking}) {
    return _HistoriesState(
      historiesBooking: historiesBooking,
    );
  }
}

/// @nodoc
const $HistoriesState = _$HistoriesStateTearOff();

/// @nodoc
mixin _$HistoriesState {
  List<HistoryBooking> get historiesBooking =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoriesStateCopyWith<HistoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoriesStateCopyWith<$Res> {
  factory $HistoriesStateCopyWith(
          HistoriesState value, $Res Function(HistoriesState) then) =
      _$HistoriesStateCopyWithImpl<$Res>;
  $Res call({List<HistoryBooking> historiesBooking});
}

/// @nodoc
class _$HistoriesStateCopyWithImpl<$Res>
    implements $HistoriesStateCopyWith<$Res> {
  _$HistoriesStateCopyWithImpl(this._value, this._then);

  final HistoriesState _value;
  // ignore: unused_field
  final $Res Function(HistoriesState) _then;

  @override
  $Res call({
    Object? historiesBooking = freezed,
  }) {
    return _then(_value.copyWith(
      historiesBooking: historiesBooking == freezed
          ? _value.historiesBooking
          : historiesBooking // ignore: cast_nullable_to_non_nullable
              as List<HistoryBooking>,
    ));
  }
}

/// @nodoc
abstract class _$HistoriesStateCopyWith<$Res>
    implements $HistoriesStateCopyWith<$Res> {
  factory _$HistoriesStateCopyWith(
          _HistoriesState value, $Res Function(_HistoriesState) then) =
      __$HistoriesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<HistoryBooking> historiesBooking});
}

/// @nodoc
class __$HistoriesStateCopyWithImpl<$Res>
    extends _$HistoriesStateCopyWithImpl<$Res>
    implements _$HistoriesStateCopyWith<$Res> {
  __$HistoriesStateCopyWithImpl(
      _HistoriesState _value, $Res Function(_HistoriesState) _then)
      : super(_value, (v) => _then(v as _HistoriesState));

  @override
  _HistoriesState get _value => super._value as _HistoriesState;

  @override
  $Res call({
    Object? historiesBooking = freezed,
  }) {
    return _then(_HistoriesState(
      historiesBooking: historiesBooking == freezed
          ? _value.historiesBooking
          : historiesBooking // ignore: cast_nullable_to_non_nullable
              as List<HistoryBooking>,
    ));
  }
}

/// @nodoc

class _$_HistoriesState extends _HistoriesState {
  const _$_HistoriesState({required this.historiesBooking}) : super._();

  @override
  final List<HistoryBooking> historiesBooking;

  @override
  String toString() {
    return 'HistoriesState(historiesBooking: $historiesBooking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoriesState &&
            const DeepCollectionEquality()
                .equals(other.historiesBooking, historiesBooking));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(historiesBooking));

  @JsonKey(ignore: true)
  @override
  _$HistoriesStateCopyWith<_HistoriesState> get copyWith =>
      __$HistoriesStateCopyWithImpl<_HistoriesState>(this, _$identity);
}

abstract class _HistoriesState extends HistoriesState {
  const factory _HistoriesState(
      {required List<HistoryBooking> historiesBooking}) = _$_HistoriesState;
  const _HistoriesState._() : super._();

  @override
  List<HistoryBooking> get historiesBooking;
  @override
  @JsonKey(ignore: true)
  _$HistoriesStateCopyWith<_HistoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}
