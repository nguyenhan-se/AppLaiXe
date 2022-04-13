part of 'auth_provider.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState.unknown() = _Unknown;

  const factory AuthState.authenticating() = _Authenticating;

  const factory AuthState.authenticated({required User user}) = _Authenticated;

  const factory AuthState.failure({required Failure failure}) = _Failure;

  const factory AuthState.unauthenticated() = _UnAuthenticated;
}
