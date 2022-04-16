// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_booking.freezed.dart';

@freezed
class UserBooking with _$UserBooking {
  const UserBooking._();

  const factory UserBooking({
    required String name,
    required String phone,
    required String startPoint,
    required String endPoint,
    required String type,
    String? note,
  }) = _UserBooking;

  factory UserBooking.empty() => const UserBooking(
      name: '', phone: '', startPoint: '', endPoint: '', type: '');
}
