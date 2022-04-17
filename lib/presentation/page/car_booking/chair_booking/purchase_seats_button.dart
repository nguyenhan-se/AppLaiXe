// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_riverpod/core/route/route.dart';
import 'package:flutter_boilerplate_riverpod/presentation/presenters/ticket_booking/ticket_booking_provider.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:

import 'package:flutter_boilerplate_riverpod/presentation/presenters/presenters.dart'
    show seatBookingProvider;

class PurchaseSeatsButton extends StatelessWidget {
  const PurchaseSeatsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Consumer(
        builder: (ctx, ref, _) {
          final carSeats = ref.watch(seatBookingProvider).selectedSeats;
          return SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: Text('Đặt - ${carSeats.length} Ghế'),
              onPressed: carSeats.isNotEmpty
                  ? () {
                      ref
                          .read(ticketBookingProvider.notifier)
                          .seatsChanged(carSeats);
                      context.router.push(UserBookingRoute());
                    }
                  : null,
            ),
          );
        },
      ),
    );
  }
}
