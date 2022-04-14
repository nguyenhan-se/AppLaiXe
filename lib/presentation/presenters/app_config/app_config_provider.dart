// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'app_config_state.dart';

final appConfigProvider =
    StateNotifierProvider<_AppConfigController, AppConfigState>((ref) {
  return _AppConfigController();
});

class _AppConfigController extends StateNotifier<AppConfigState> {
  _AppConfigController() : super(AppConfigState.initial());

  void themeTogged(isDark) => state =
      state.copyWith(themeMode: isDark ? ThemeMode.dark : ThemeMode.light);

  void localeChanged(locale) => state = state.copyWith(locale: locale);
}
