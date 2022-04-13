// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/seat.dart';

part 'seat_booking_state.freezed.dart';

@freezed
class SeatBookingState with _$SeatBookingState {
  const SeatBookingState._();

  const factory SeatBookingState({
    required List<Seat> selectedSeats,
  }) = _SeatBookingState;

  factory SeatBookingState.initial() =>
      const SeatBookingState(selectedSeats: []);

  List<String> get selectedSeatNames => selectedSeats
      .map((seat) => '${seat.seatRow}-${seat.seatNumber}')
      .toList();
}
