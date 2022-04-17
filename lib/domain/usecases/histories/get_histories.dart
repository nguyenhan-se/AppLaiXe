// Package imports:
import 'package:flutter_boilerplate_riverpod/domain/entities/destination.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/history_booking.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/seat.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/user_booking.dart';

import '../usecase.dart';

final List<HistoryBooking> listHistoryBooking = [
  HistoryBooking(
    user: const UserBooking(
        name: 'Bảo Bảo',
        phone: '9086753629',
        startPoint: 'Hà Nội',
        endPoint: 'Hà Giang',
        type: 'Đón mặt đường'),
    departure: DateTime.now(),
    destination: const Destination(
      code: 'HG-HN',
      dateForm: '21:00',
      dateTo: '05:00',
      from: 'Hà Giang',
      to: 'Hà Nội',
      timeout: 8,
      price: 200000,
    ),
    seats: <Seat>[
      const Seat(seatRow: '2', seatNumber: 2),
      const Seat(seatRow: '2', seatNumber: 3),
    ],
  ),
  HistoryBooking(
    user: const UserBooking(
        name: 'Bảo Bảo 1',
        phone: '0334228284',
        startPoint: 'Hà Nội 1',
        endPoint: 'Hà Giang 1',
        type: 'Đón mặt đường'),
    departure: DateTime.now(),
    destination: const Destination(
      code: 'HG-HN',
      dateForm: '21:00',
      dateTo: '05:00',
      from: 'Hà Giang',
      to: 'Hà Nội',
      timeout: 8,
      price: 200000,
    ),
    seats: <Seat>[
      const Seat(seatRow: '1', seatNumber: 3),
      const Seat(seatRow: '1', seatNumber: 4),
    ],
  ),
];

class GetHistoryBookingsUseCase
    implements UseCase<List<HistoryBooking>, String> {
  GetHistoryBookingsUseCase();

  @override
  call({String? params}) {
    return listHistoryBooking.toList();
  }
}
