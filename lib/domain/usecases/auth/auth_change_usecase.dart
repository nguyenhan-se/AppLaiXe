// Package imports:
import 'package:firebase_auth/firebase_auth.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/domain/repositories/auth_repository.dart';
import '../usecase.dart';

class AuthChangeUseCase implements UseCase<Stream<User?>, void> {
  final IAuthRepository repository;

  AuthChangeUseCase(this.repository);

  @override
  call({void params}) {
    return repository.authStateChanges;
  }
}
