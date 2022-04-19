// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'user_form_state.dart';
part 'user_form_provider.freezed.dart';

final userFormProvider =
    StateNotifierProvider<_UserFormInfoNotifier, UserFormInfo>((ref) {
  return _UserFormInfoNotifier();
});

class _UserFormInfoNotifier extends StateNotifier<UserFormInfo> {
  _UserFormInfoNotifier() : super(UserFormInfo.empty());

  void nameChanged(value) => state = state.copyWith(name: value);
  void phoneChanged(value) => state = state.copyWith(phone: value);
  void startPointChanged(value) => state = state.copyWith(startPoint: value);
  void endPointChanged(value) => state = state.copyWith(endPoint: value);
  void noteChanged(value) => state = state.copyWith(note: value);

  void clearForm() => state = UserFormInfo.empty();
}
