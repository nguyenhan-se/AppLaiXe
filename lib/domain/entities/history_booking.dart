// Package imports:
import 'package:flutter_boilerplate_riverpod/domain/entities/destination.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/seat.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/user_booking.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_booking.freezed.dart';

@freezed
class HistoryBooking with _$HistoryBooking {
  const HistoryBooking._();

  const factory HistoryBooking({
    required UserBooking user,
    required DateTime departure,
    required Destination destination,
    required List<Seat> seats,
    String? note,
  }) = _HistoryBooking;

  factory HistoryBooking.empty() => HistoryBooking(
        user: UserBooking.empty(),
        departure: DateTime.now(),
        destination: Destination.empty(),
        seats: [],
      );

  get totalPrice => destination.price * seats.length;
}
