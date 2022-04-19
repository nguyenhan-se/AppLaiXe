// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';

class HeaderPickUp extends StatelessWidget {
  final int totalCustomers;
  final double totalPriceCustomers;
  const HeaderPickUp({
    Key? key,
    required this.totalCustomers,
    required this.totalPriceCustomers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final oCcy = NumberFormat("#,##0", "en_US");

    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('Tổng số:'),
              const SizedBox(
                width: 10,
              ),
              Text(
                '$totalCustomers khách hàng',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Text('Tổng số tiền đặt vé:'),
              const SizedBox(
                width: 10,
              ),
              Text(
                '${oCcy.format(totalPriceCustomers)} VNĐ',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 2,
            color: Colors.black,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
