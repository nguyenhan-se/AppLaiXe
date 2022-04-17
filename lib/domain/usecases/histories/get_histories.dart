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
      phone: '0945658635',
      startPoint: 'Tổ 12',
      endPoint: 'Gia Lâm',
      type: 'Mặt đường',
    ),
    departure: DateTime.now(),
    destination: const Destination(
      id: '1',
      code: 'HG-HN',
      dateForm: '21:00',
      dateTo: '05:00',
      from: 'Hà Giang',
      to: 'Hà Nội',
      timeout: 8,
      price: 200000,
    ),
    seats: const [
      Seat(seatRow: 'A', seatNumber: 5),
    ],
  ),
  HistoryBooking(
    user: const UserBooking(
      name: 'Bảo Bảo 1',
      phone: '0334228284',
      startPoint: 'Tổ 7',
      endPoint: 'Mỹ Đình',
      type: 'Mặt đường',
    ),
    departure: DateTime.now(),
    destination: const Destination(
      id: '1',
      code: 'HG-HN',
      dateForm: '21:00',
      dateTo: '05:00',
      from: 'Hà Giang',
      to: 'Hà Nội',
      timeout: 8,
      price: 200000,
    ),
    seats: const [
      Seat(seatRow: 'C', seatNumber: 3),
      Seat(seatRow: 'C', seatNumber: 4),
    ],
  ),
  HistoryBooking(
    user: const UserBooking(
      name: 'Nguyễn Hưng',
      phone: '0945658635',
      startPoint: 'Mễ Trì',
      endPoint: 'Tổ 17',
      type: 'Mặt đường',
    ),
    departure: DateTime.now(),
    destination: const Destination(
      id: '4',
      code: 'HN-HG',
      dateForm: '21:00',
      dateTo: '05:00',
      from: 'Hà Nội',
      to: 'Hà Giang',
      timeout: 8,
      price: 200000,
    ),
    seats: const [
      Seat(seatRow: 'C', seatNumber: 1),
      Seat(seatRow: 'D', seatNumber: 1),
      Seat(seatRow: 'E', seatNumber: 1),
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
