// Dart imports:
import 'dart:async';

// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/data/datasources/sharedpref/shared_preference_const.dart';

class SharedPreferenceHelper {
  // shared pref instance
  final SharedPreferences _sharedPreference;

  // constructor
  SharedPreferenceHelper(this._sharedPreference);

  // General Methods: ----------------------------------------------------------
  Future<String?> get authToken async {
    return _sharedPreference.getString(SharedPreferenceConst.authToken);
  }

  Future<bool> saveAuthToken(String authToken) async {
    return _sharedPreference.setString(
        SharedPreferenceConst.authToken, authToken);
  }

  Future<bool> removeAuthToken() async {
    return _sharedPreference.remove(SharedPreferenceConst.authToken);
  }

  // Login:---------------------------------------------------------------------
  Future<bool> get isLoggedIn async {
    return _sharedPreference.getBool(SharedPreferenceConst.isLoggedIn) ?? false;
  }

  Future<bool> saveIsLoggedIn(bool value) async {
    return _sharedPreference.setBool(SharedPreferenceConst.isLoggedIn, value);
  }

  // Theme:------------------------------------------------------
  bool get isDarkMode {
    return _sharedPreference.getBool(SharedPreferenceConst.isDarkMode) ?? false;
  }

  Future<void> changeBrightnessToDark(bool value) {
    return _sharedPreference.setBool(SharedPreferenceConst.isDarkMode, value);
  }

  // Language:---------------------------------------------------
  String? get currentLanguage {
    return _sharedPreference.getString(SharedPreferenceConst.currentLanguage);
  }

  Future<void> changeLanguage(String language) {
    return _sharedPreference.setString(
        SharedPreferenceConst.currentLanguage, language);
  }
}
