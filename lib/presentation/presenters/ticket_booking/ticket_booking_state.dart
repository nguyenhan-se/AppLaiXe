part of 'ticket_booking_provider.dart';

@freezed
class TicketBookingState with _$TicketBookingState {
  const TicketBookingState._();

  const factory TicketBookingState({
    required DateTime departure,
    required Destination destination,
    required List<Seat> seats,
  }) = _TicketBookingState;

  factory TicketBookingState.initial() => TicketBookingState(
        departure: DateTime.now(),
        destination: Destination.empty(),
        seats: [],
      );

  String get departureFormat => formatDate(departure, [yyyy, '-', mm, '-', d]);

  double get totalPrice => destination.price * seats.length;
}
