// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/logics/error_handle/failures.dart';
import 'package:flutter_boilerplate_riverpod/domain/repositories/auth_repository.dart';
import '../../entities/user.dart';
import '../usecase.dart';

class AuthRequestParams {
  final String email;
  final String password;

  const AuthRequestParams({
    required this.email,
    required this.password,
  });
}

class SignInUseCase
    implements UseCase<Future<Either<Failure, User>>, AuthRequestParams> {
  final IAuthRepository repository;

  SignInUseCase(this.repository);

  @override
  call({required params}) async {
    return await repository.signIn(params.email, params.password)
      ..map((r) => r);
  }
}
