// Package imports:

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/di/init_di.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/todo.dart';
import 'package:flutter_boilerplate_riverpod/domain/usecases/todo/get_todos_usecase.dart';

part 'todos_provider.freezed.dart';
part 'todos_state.dart';

final todosProvider = StateNotifierProvider<_TodosController, TodosState>(
  (ref) {
    return _TodosController(getTodos: getIt<GetTodosUseCase>());
  },
);

class _TodosController extends StateNotifier<TodosState> {
  late GetTodosUseCase _getTodos;

  _TodosController({required GetTodosUseCase getTodos})
      : super(TodosState.initial()) {
    _getTodos = getTodos;
  }

  Future todoLoaded() async {
    state = state.copyWith(state: const AsyncValue.loading());
    final result = await _getTodos();
    result.fold(
      (failure) => state = state.copyWith(state: AsyncValue.error(failure)),
      (data) => state = state.copyWith(state: AsyncValue.data(data)),
    );
  }
}
