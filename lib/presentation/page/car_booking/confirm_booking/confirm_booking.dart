// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/route/route.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/booker.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/history_booking.dart';
import 'package:flutter_boilerplate_riverpod/presentation/presenters/histories_booking/histories_provider.dart';
import 'package:flutter_boilerplate_riverpod/presentation/presenters/presenters.dart';
import 'ticket_view.dart';

class ConfirmBookingPage extends HookConsumerWidget {
  const ConfirmBookingPage({
    Key? key,
    required this.booker,
  }) : super(key: key);

  final Booker booker;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đặt vé'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Column(
          children: [
            const TicketView(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      final ticketBookingState =
                          ref.read(ticketBookingProvider);
                      final HistoryBooking history = HistoryBooking(
                        user: booker,
                        departure: ticketBookingState.departure,
                        destination: ticketBookingState.destination,
                        seats: ticketBookingState.seats,
                        isCheckPhoneCall: false,
                        isCheckGetinCar: false,
                      );

                      ref
                          .read(historiesProvider.notifier)
                          .historyAdded(history);
                      ref.read(ticketBookingProvider.notifier).cleared();
                      ref
                          .read(seatBookingProvider.notifier)
                          .clearSelectedSeats();
                      context.router.popUntilRouteWithName(PassengerRoute.name);
                    },
                    child: const Text('Đặt')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
