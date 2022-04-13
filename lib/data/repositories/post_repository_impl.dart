// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/logics/error_handle/failures.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/todo.dart';
import 'package:flutter_boilerplate_riverpod/domain/repositories/todo_repository.dart';
import '../datasources/remote/todo/todo_api.dart';
import 'repository_utils.dart';

class TodoRepositoryImpl extends RepositoryUtils implements ITodoRepository {
  final TodoApi _todoApi;

  TodoRepositoryImpl(this._todoApi);

  @override
  Future<Either<Failure, List<Todo>>> fetchTodos() async {
    return await convertToEither<List<Todo>>(
      () async {
        final res = await _todoApi.getTodos();
        return res.data;
      },
    );
  }
}
