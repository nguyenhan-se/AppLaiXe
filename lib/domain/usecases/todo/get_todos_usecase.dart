// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/logics/error_handle/failures.dart';
import '../../entities/todo.dart';
import '../../repositories/todo_repository.dart';
import '../usecase.dart';

class GetTodosUseCase
    implements UseCase<Future<Either<Failure, List<Todo>>>, void> {
  final ITodoRepository todoRepository;

  GetTodosUseCase(this.todoRepository);

  @override
  call({void params}) async {
    final res = await todoRepository.fetchTodos();
    return res;
  }
}
