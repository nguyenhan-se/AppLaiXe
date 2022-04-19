// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/di/init_di.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/history_booking.dart';
import 'package:flutter_boilerplate_riverpod/domain/usecases/histories/histories_usecase.dart';
import 'histories_state.dart';

final historiesProvider =
    StateNotifierProvider<_SeatBookingController, HistoriesState>(
  (ref) {
    return _SeatBookingController(
        getHistoryBookingsUseCase: getIt<GetHistoryBookingsUseCase>(),
        getOneHistoryBookingUseCase: getIt<GetOneHistoryBookingUseCase>())
      ..historiesLoaded();
  },
);

class _SeatBookingController extends StateNotifier<HistoriesState> {
  late GetHistoryBookingsUseCase _getHistoryBookingsUseCase;
  late GetOneHistoryBookingUseCase _getOneHistoryBookingUseCase;

  _SeatBookingController(
      {required GetHistoryBookingsUseCase getHistoryBookingsUseCase,
      required GetOneHistoryBookingUseCase getOneHistoryBookingUseCase})
      : super(HistoriesState.initial()) {
    _getHistoryBookingsUseCase = getHistoryBookingsUseCase;
    _getOneHistoryBookingUseCase = getOneHistoryBookingUseCase;
  }

  void historiesLoaded() {
    final listHistories = _getHistoryBookingsUseCase();

    state = state.copyWith(historiesBooking: listHistories);
  }

  void historyAdded(HistoryBooking history) {
    state = state.copyWith(
      historiesBooking: List<HistoryBooking>.from(state.historiesBooking)
        ..insert(0, history),
    );
  }

  void updateSelectedPhoneHistory(String startPoint) {
    final objIndex = List<HistoryBooking>.from(state.historiesBooking)
        .indexWhere((element) => element.user.startPoint == startPoint);
    final newObjecData =
        List<HistoryBooking>.from(state.historiesBooking)[objIndex]
            .copyWith(isCheckPhoneCall: true);
    state = state.copyWith(
      historiesBooking: List<HistoryBooking>.from(state.historiesBooking)
        ..remove(List<HistoryBooking>.from(state.historiesBooking)[objIndex]),
    );
    state = state.copyWith(
      historiesBooking: List<HistoryBooking>.from(state.historiesBooking)
        ..insert(objIndex, newObjecData),
    );
  }

  void updateSelectedGetInCarHistory(String startPoint) {
    final objIndex = List<HistoryBooking>.from(state.historiesBooking)
        .indexWhere((element) => element.user.startPoint == startPoint);
    final newObjecData =
        List<HistoryBooking>.from(state.historiesBooking)[objIndex]
            .copyWith(isCheckPhoneCall: true, isCheckGetinCar: true);
    state = state.copyWith(
      historiesBooking: List<HistoryBooking>.from(state.historiesBooking)
        ..remove(List<HistoryBooking>.from(state.historiesBooking)[objIndex]),
    );
    state = state.copyWith(
      historiesBooking: List<HistoryBooking>.from(state.historiesBooking)
        ..insert(objIndex, newObjecData),
    );
  }
}
