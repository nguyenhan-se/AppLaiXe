// Dart imports:
import 'dart:async';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/di/init_di.dart';
import 'package:flutter_boilerplate_riverpod/core/logics/error_handle/error_handle.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/user.dart';
import 'package:flutter_boilerplate_riverpod/domain/usecases/auth/auth_usecase.dart';

part 'auth_provider.freezed.dart';
part 'auth_state.dart';

final authProvider = StateNotifierProvider<AuthController, AuthState>(
  (ref) {
    return AuthController(
      signInUseCase: getIt<SignInUseCase>(),
      signOutUseCase: getIt<SignOutUseCase>(),
    );
  },
);

class AuthController extends StateNotifier<AuthState> {
  late SignInUseCase _signInUseCase;
  late SignOutUseCase _signOutUseCase;

  AuthController({
    required SignInUseCase signInUseCase,
    required SignOutUseCase signOutUseCase,
  }) : super(const AuthState.unauthenticated()) {
    _signInUseCase = signInUseCase;
    _signOutUseCase = signOutUseCase;
  }

  Future<void> appStarted() async {
    state = AuthState.authenticated(
        user: User(email: 'aaa', username: 'username', name: 'name'));
  }

  Future<void> login(email, password) async {
    state = const AuthState.authenticating();
    final res = await _signInUseCase(
        params: AuthRequestParams(email: email, password: password));
    res.fold(
      (failure) => state = AuthState.failure(failure: failure),
      (user) => state = AuthState.authenticated(user: user),
    );
  }

  Future<void> signOut() async {
    _signOutUseCase();
    state = const AuthState.unauthenticated();
  }
}
