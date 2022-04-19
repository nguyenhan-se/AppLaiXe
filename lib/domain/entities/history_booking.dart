// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/domain/entities/booker.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/destination.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/seat.dart';

part 'history_booking.freezed.dart';

@freezed
class HistoryBooking with _$HistoryBooking {
  const HistoryBooking._();

  const factory HistoryBooking({
    required Booker user,
    required DateTime departure,
    required Destination destination,
    required List<Seat> seats,
    String? note,
    required bool isCheckPhoneCall,
    required bool isCheckGetinCar,
  }) = _HistoryBooking;

  factory HistoryBooking.empty() => HistoryBooking(
      user: Booker.empty(),
      departure: DateTime.now(),
      destination: Destination.empty(),
      seats: [],
      isCheckPhoneCall: false,
      isCheckGetinCar: false);

  get totalPrice => destination.price * seats.length;
}
