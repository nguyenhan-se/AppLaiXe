// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/logics/error_handle/error_handle.dart';
import '../entities/todo.dart';

abstract class ITodoRepository {
  // API methods
  Future<Either<Failure, List<Todo>>> fetchTodos();
}
