// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat.freezed.dart';

@freezed
class Seat with _$Seat {
  const Seat._();

  const factory Seat({
    required String seatRow,
    required int seatNumber,
  }) = _Seat;

  String get seatNames => '$seatRow - $seatNumber';
}
