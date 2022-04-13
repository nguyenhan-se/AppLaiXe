// Package imports:
import 'package:firebase_auth/firebase_auth.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/domain/repositories/auth_repository.dart';
import '../usecase.dart';

class GetUserUseCase implements UseCase<User?, void> {
  final IAuthRepository repository;

  GetUserUseCase(this.repository);

  @override
  call({void params}) {
    return repository.getCurrentUser();
  }
}
