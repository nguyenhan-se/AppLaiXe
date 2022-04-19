// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/logics/error_handle/failures.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/user.dart';
import 'package:flutter_boilerplate_riverpod/domain/repositories/auth_repository.dart';
import 'repository_utils.dart';

class AuthRepositoryImpl extends RepositoryUtils implements IAuthRepository {
  AuthRepositoryImpl();

  @override
  Future<Either<Failure, User>> signIn(email, password) async {
    return await convertToEither<User>(
      () async {
        return User(
          email: 'anonymous@gmail.com',
          name: 'anonymous',
          username: 'anonymous',
        );
      },
    );
  }

  @override
  Future<void> signOut() async {
    return;
  }
}
