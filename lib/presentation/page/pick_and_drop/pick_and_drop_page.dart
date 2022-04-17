import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_riverpod/presentation/page/pick_and_drop/drop_customer.dart';
import 'package:flutter_boilerplate_riverpod/presentation/page/pick_and_drop/header_pick_up.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../presenters/histories_booking/histories_provider.dart';
import 'pick_up.dart';

class PickAndDropPage extends HookConsumerWidget {
  const PickAndDropPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int sumCustomer = 0;
    double sumTotalPrice = 0;
    final state = ref.watch(historiesProvider).historiesBooking;
    for (var historyBooking in state) {
      sumTotalPrice += historyBooking.totalPrice;
      sumCustomer += historyBooking.seats.length;
    }
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.directions_car),
                  text: 'Đón khách',
                ),
                Tab(
                  icon: Icon(Icons.directions_transit),
                  text: 'Trung chuyển',
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                  text: 'Trả khách',
                ),
              ],
            ),
            title: const Text('Đón/ trả khách'),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    HeaderPickUp(
                      totalCustomers: sumCustomer,
                      totalPriceCustomers: sumTotalPrice,
                    ),
                    for (var item in state)
                      PickUp(
                        historyBooking: item,
                      )
                  ],
                ),
              ),
              HeaderPickUp(
                totalCustomers: sumCustomer,
                totalPriceCustomers: sumTotalPrice,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    HeaderPickUp(
                      totalCustomers: sumCustomer,
                      totalPriceCustomers: sumTotalPrice,
                    ),
                    for (var item in state)
                      DropCustomer(
                        historyBooking: item,
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
