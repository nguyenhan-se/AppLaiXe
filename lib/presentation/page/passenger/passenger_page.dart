import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_riverpod/core/route/route.dart';
import 'package:flutter_boilerplate_riverpod/presentation/presenters/destinations/destinations_provider.dart';
import 'package:flutter_boilerplate_riverpod/presentation/presenters/ticket_booking/ticket_booking_provider.dart';
import 'package:flutter_boilerplate_riverpod/presentation/widgets/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'filter_passenger.dart';

class PassengerPage extends HookConsumerWidget {
  const PassengerPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            FilterPassenger(onSubmit: (date, journey) {
              ref.read(ticketBookingProvider.notifier).departureChanged(date);
              ref
                  .read(destinationsProvider.notifier)
                  .destinationByCodeLoaded(journey);
            }),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Consumer(builder: (context, ref, _) {
                  final state = ref.watch(destinationsProvider);
                  return ListView.builder(
                    itemCount: state.destinations.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          ref
                              .read(ticketBookingProvider.notifier)
                              .destinationChanged(state.destinations[index]);
                          context.router.push(const ChairBookingRoute());
                        },
                        child: BoxDestination(
                          destination: state.destinations[index],
                        ),
                      );
                    },
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
