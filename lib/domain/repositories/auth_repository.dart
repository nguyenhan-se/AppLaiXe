// Package imports:
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/logics/error_handle/error_handle.dart';

abstract class IAuthRepository {
  // API methods
  Future<Either<Failure, User>> signIn(String email, String password);

  Stream<User?> get authStateChanges;

  User? getCurrentUser();

  Future<void> signOut();
}
