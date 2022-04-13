// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/logics/error_handle/error_handle.dart';

class RepositoryUtils {
  Future<Either<Failure, T>> convertToEither<T>(
      Future<T> Function() function) async {
    try {
      return Right(await function());
    } on NoConnectionException {
      return Left(Failure(ResponseCode.noInternetConnection,
          ResponseMessage.noInternetConnection));
    } catch (error) {
      rethrow;
    }
  }

  /// [isDeviceOnline] returns true, If device connected to the internet
  /// It uses [ConnectivityUtils] in it.
  // Future<bool> get isDeviceOnline async =>
  //     ConnectivityResult.none != await d.connectivityUtils.isDeviceOnline;
}
