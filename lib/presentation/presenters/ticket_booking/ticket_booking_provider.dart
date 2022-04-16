import 'package:date_format/date_format.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/destination.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/seat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

part 'ticket_booking_state.dart';
part 'ticket_booking_provider.freezed.dart';

final ticketBookingProvider =
    StateNotifierProvider<_TicketBookingController, TicketBookingState>(
  (ref) {
    return _TicketBookingController();
  },
);

class _TicketBookingController extends StateNotifier<TicketBookingState> {
  _TicketBookingController() : super(TicketBookingState.initial());

  void departureChanged(DateTime date) {
    state = state.copyWith(departure: date);
  }

  void destinationChanged(Destination destination) {
    state = state.copyWith(destination: destination);
  }

  void seatsChanged(List<Seat> seats) {
    state = state.copyWith(seats: seats);
  }
}
