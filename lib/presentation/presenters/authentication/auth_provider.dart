// Dart imports:
import 'dart:async';

// Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/di/init_di.dart';
import 'package:flutter_boilerplate_riverpod/core/logics/error_handle/error_handle.dart';
import 'package:flutter_boilerplate_riverpod/domain/usecases/auth/auth_usecase.dart';

part 'auth_provider.freezed.dart';
part 'auth_state.dart';

final authProvider = StateNotifierProvider<_AuthController, AuthState>(
  (ref) {
    return _AuthController(
      authChangeUseCase: getIt<AuthChangeUseCase>(),
      signInUseCase: getIt<SignInUseCase>(),
      signOutUseCase: getIt<SignOutUseCase>(),
    );
  },
);

class _AuthController extends StateNotifier<AuthState> {
  late AuthChangeUseCase _authChangeUseCase;
  late SignInUseCase _signInUseCase;
  late SignOutUseCase _signOutUseCase;

  StreamSubscription<User?>? _authStateChangeSubscription;

  _AuthController({
    required AuthChangeUseCase authChangeUseCase,
    required SignInUseCase signInUseCase,
    required SignOutUseCase signOutUseCase,
  }) : super(AuthState.unknown()) {
    _authChangeUseCase = authChangeUseCase;
    _signInUseCase = signInUseCase;
    _signOutUseCase = signOutUseCase;

    _authStateChangeSubscription?.cancel();
    _authStateChangeSubscription = _authChangeUseCase().listen((user) {
      if (user != null) {
        state = AuthState.authenticated(user: user);
      } else {
        state = const AuthState.unauthenticated();
      }
    });
  }

  @override
  void dispose() {
    _authStateChangeSubscription?.cancel();
    super.dispose();
  }

  Future<void> login(email, password) async {
    state = const AuthState.authenticating();
    final res = await _signInUseCase(
        params: AuthRequestParams(email: email, password: password));
    res.fold(
      (failure) => state = AuthState.failure(failure: failure),
      (user) => null,
    );
  }

  Future<void> signOut() async {
    _signOutUseCase();
  }
}
