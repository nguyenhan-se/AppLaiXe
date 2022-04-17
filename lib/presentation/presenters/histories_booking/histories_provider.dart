// Package imports:
import 'package:flutter_boilerplate_riverpod/core/di/init_di.dart';
import 'package:flutter_boilerplate_riverpod/domain/usecases/histories/histories_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'histories_state.dart';

final historiesProvider =
    StateNotifierProvider<_SeatBookingController, HistoriesState>(
  (ref) {
    return _SeatBookingController(
        getHistoryBookingsUseCase: getIt<GetHistoryBookingsUseCase>())
      ..historiesLoaded();
  },
);

class _SeatBookingController extends StateNotifier<HistoriesState> {
  late GetHistoryBookingsUseCase _getHistoryBookingsUseCase;

  _SeatBookingController(
      {required GetHistoryBookingsUseCase getHistoryBookingsUseCase})
      : super(HistoriesState.initial()) {
    _getHistoryBookingsUseCase = getHistoryBookingsUseCase;
  }

  void historiesLoaded() {
    final listHistories = _getHistoryBookingsUseCase();

    state = state.copyWith(historiesBooking: listHistories);
  }
}
