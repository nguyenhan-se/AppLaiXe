part of 'todos_provider.dart';

@freezed
class TodosState with _$TodosState {
  const factory TodosState({
    required AsyncValue<List<Todo>> state,
  }) = _TodosState;

  factory TodosState.initial() => const TodosState(state: AsyncValue.loading());
}
