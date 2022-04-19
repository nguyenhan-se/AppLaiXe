// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/route/route.dart';
import 'package:flutter_boilerplate_riverpod/presentation/presenters/presenters.dart';
import 'package:flutter_boilerplate_riverpod/presentation/widgets/widgets.dart';
import 'filter_passenger.dart';

class PassengerPage extends HookConsumerWidget {
  const PassengerPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Chặng đường'),
        actions: [
          Consumer(builder: (context, ref, _) {
            return Consumer(
              builder: (ctx, ref, _) {
                return IconButton(
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  onPressed: () => ref.read(authProvider.notifier).signOut(),
                );
              },
            );
          }),
        ],
      ),
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
                          context.router.push(ChairBookingRoute(
                              destination: state.destinations[index]));
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
