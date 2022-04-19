// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/logics/error_handle/error_handle.dart';
import '../entities/user.dart';

abstract class IAuthRepository {
  // API methods
  Future<Either<Failure, User>> signIn(String email, String password);

  Future<void> signOut();
}
