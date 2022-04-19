// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';

// Project imports:
import '../../../domain/entities/history_booking.dart';

class DropCustomer extends StatelessWidget {
  final HistoryBooking historyBooking;
  const DropCustomer({
    Key? key,
    required this.historyBooking,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final oCcy = NumberFormat("#,##0", "en_US");

    return Padding(
      padding: const EdgeInsets.only(
        right: 24,
        left: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            historyBooking.user.endPoint,
            style: const TextStyle(color: Colors.red, fontSize: 18),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                historyBooking.user.phone,
                style: const TextStyle(color: Colors.blue, fontSize: 16),
              ),
              Text(
                '${oCcy.format(historyBooking.totalPrice)} VNĐ',
                style: const TextStyle(color: Colors.red, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text('Ghế:'),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  historyBooking.seats.map((item) => item.seatNames).join(', '),
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          const Divider(height: 2, color: Colors.black),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
