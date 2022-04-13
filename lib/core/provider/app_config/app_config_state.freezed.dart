// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_config_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppConfigStateTearOff {
  const _$AppConfigStateTearOff();

  _AppConfigState call({required ThemeMode themeMode, required Locale locale}) {
    return _AppConfigState(
      themeMode: themeMode,
      locale: locale,
    );
  }
}

/// @nodoc
const $AppConfigState = _$AppConfigStateTearOff();

/// @nodoc
mixin _$AppConfigState {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  Locale get locale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppConfigStateCopyWith<AppConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigStateCopyWith<$Res> {
  factory $AppConfigStateCopyWith(
          AppConfigState value, $Res Function(AppConfigState) then) =
      _$AppConfigStateCopyWithImpl<$Res>;
  $Res call({ThemeMode themeMode, Locale locale});
}

/// @nodoc
class _$AppConfigStateCopyWithImpl<$Res>
    implements $AppConfigStateCopyWith<$Res> {
  _$AppConfigStateCopyWithImpl(this._value, this._then);

  final AppConfigState _value;
  // ignore: unused_field
  final $Res Function(AppConfigState) _then;

  @override
  $Res call({
    Object? themeMode = freezed,
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
abstract class _$AppConfigStateCopyWith<$Res>
    implements $AppConfigStateCopyWith<$Res> {
  factory _$AppConfigStateCopyWith(
          _AppConfigState value, $Res Function(_AppConfigState) then) =
      __$AppConfigStateCopyWithImpl<$Res>;
  @override
  $Res call({ThemeMode themeMode, Locale locale});
}

/// @nodoc
class __$AppConfigStateCopyWithImpl<$Res>
    extends _$AppConfigStateCopyWithImpl<$Res>
    implements _$AppConfigStateCopyWith<$Res> {
  __$AppConfigStateCopyWithImpl(
      _AppConfigState _value, $Res Function(_AppConfigState) _then)
      : super(_value, (v) => _then(v as _AppConfigState));

  @override
  _AppConfigState get _value => super._value as _AppConfigState;

  @override
  $Res call({
    Object? themeMode = freezed,
    Object? locale = freezed,
  }) {
    return _then(_AppConfigState(
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_AppConfigState extends _AppConfigState {
  const _$_AppConfigState({required this.themeMode, required this.locale})
      : super._();

  @override
  final ThemeMode themeMode;
  @override
  final Locale locale;

  @override
  String toString() {
    return 'AppConfigState(themeMode: $themeMode, locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppConfigState &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode) &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(themeMode),
      const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  _$AppConfigStateCopyWith<_AppConfigState> get copyWith =>
      __$AppConfigStateCopyWithImpl<_AppConfigState>(this, _$identity);
}

abstract class _AppConfigState extends AppConfigState {
  const factory _AppConfigState(
      {required ThemeMode themeMode,
      required Locale locale}) = _$_AppConfigState;
  const _AppConfigState._() : super._();

  @override
  ThemeMode get themeMode;
  @override
  Locale get locale;
  @override
  @JsonKey(ignore: true)
  _$AppConfigStateCopyWith<_AppConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}
