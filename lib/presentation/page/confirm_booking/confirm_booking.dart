import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_riverpod/core/route/route.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/history_booking.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/user_booking.dart';
import 'package:flutter_boilerplate_riverpod/presentation/page/user_booking/provider/user_form_provider.dart';
import 'package:flutter_boilerplate_riverpod/presentation/presenters/histories_booking/histories_provider.dart';
import 'package:flutter_boilerplate_riverpod/presentation/presenters/presenters.dart';
import 'package:flutter_boilerplate_riverpod/presentation/presenters/ticket_booking/ticket_booking_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'ticket_view.dart';

class ConfirmBookingPage extends HookConsumerWidget {
  const ConfirmBookingPage({Key? key}) : super(key: key);
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
                      final userInfoForm = ref.read(userFormProvider);
                      final HistoryBooking history = HistoryBooking(
                        user: UserBooking(
                          name: userInfoForm.name,
                          phone: userInfoForm.phone,
                          startPoint: userInfoForm.startPoint,
                          endPoint: userInfoForm.endPoint,
                          type: 'Tại điểm đón',
                        ),
                        departure: ticketBookingState.departure,
                        destination: ticketBookingState.destination,
                        seats: ticketBookingState.seats,
                      );

                      ref
                          .read(historiesProvider.notifier)
                          .historyAdded(history);
                      ref.read(ticketBookingProvider.notifier).cleared();
                      ref.read(userFormProvider.notifier).clearForm();
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
