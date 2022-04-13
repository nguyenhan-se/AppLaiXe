// Project imports:
import 'package:flutter_boilerplate_riverpod/domain/repositories/auth_repository.dart';
import '../usecase.dart';

class SignOutUseCase implements UseCase<Future<void>, void> {
  final IAuthRepository repository;

  SignOutUseCase(this.repository);

  @override
  call({void params}) async {
    await repository.signOut();
  }
}
