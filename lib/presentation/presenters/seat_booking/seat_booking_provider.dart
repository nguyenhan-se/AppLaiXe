// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../../../domain/entities/seat.dart';
import 'seat_booking_state.dart';

final seatBookingProvider =
    StateNotifierProvider<_SeatBookingController, SeatBookingState>(
  (ref) {
    return _SeatBookingController();
  },
);

class _SeatBookingController extends StateNotifier<SeatBookingState> {
  _SeatBookingController() : super(SeatBookingState.initial());

  void toggleSeat({required Seat seat, required bool select}) {
    if (select) {
      state = state.copyWith(
          selectedSeats: List<Seat>.from(state.selectedSeats)..add(seat));
    } else {
      state = state.copyWith(
          selectedSeats: List<Seat>.from(state.selectedSeats)..remove(seat));
    }
  }

  void clearSelectedSeats() => state = state.copyWith(selectedSeats: []);
}
