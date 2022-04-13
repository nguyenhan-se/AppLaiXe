// Package imports:
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/logics/error_handle/failures.dart';
import 'package:flutter_boilerplate_riverpod/domain/repositories/auth_repository.dart';
import 'repository_utils.dart';

class AuthRepositoryImpl extends RepositoryUtils implements IAuthRepository {
  final FirebaseAuth _firebaseAuth;

  AuthRepositoryImpl(this._firebaseAuth);

  @override
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  @override
  Future<Either<Failure, User>> signIn(email, password) async {
    return await convertToEither<User>(
      () async {
        final credential = await _firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password);
        return credential.user!;
      },
    );
  }

  @override
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
