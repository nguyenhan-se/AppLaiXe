// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config_state.freezed.dart';

enum ThemeEnum { dark, light }

@freezed
class AppConfigState with _$AppConfigState {
  const AppConfigState._();

  const factory AppConfigState({
    required ThemeMode themeMode,
    required Locale locale,
  }) = _AppConfigState;

  factory AppConfigState.initial() => const AppConfigState(
        themeMode: ThemeMode.system,
        locale: Locale('vi'),
      );

  bool get isDarkMode => themeMode == ThemeMode.dark;
}
