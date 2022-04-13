// Package imports:
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/logics/error_handle/failures.dart';
import 'package:flutter_boilerplate_riverpod/domain/repositories/auth_repository.dart';
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
    try {
      return await repository.signIn(params.email, params.password)
        ..map((r) => r);
    } on FirebaseAuthException catch (error) {
      return Left(Failure(403, error.message ?? ''));
    }
  }
}
