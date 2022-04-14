// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/core/utils/extensions/context_extensions.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/seat.dart';
import 'custom_chips_list.dart';
import 'purchase_seats_button.dart';
import 'seat_color_indicators.dart';
import 'seats_area.dart';

import 'package:flutter_boilerplate_riverpod/presentation/presenters/presenters.dart'
    show seatBookingProvider;

class ChairBookingPage extends HookConsumerWidget {
  const ChairBookingPage({Key? key}) : super(key: key);

  static const _seatSize = 50.0;
  static const _seatGap = 10.0;

  double getMaxGridHeight(int numOfRows) {
    return _seatSize * (14) + _seatGap + 3;
  }

  double getMaxScreenWidth(int seatsPerRow) {
    return seatsPerRow * (_seatSize + _seatGap + 3);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final theater = showSeatingModel.theater;
    final minScreenWidth = context.screenWidth;
    var screenWidth = getMaxScreenWidth(6);
    screenWidth = max(screenWidth, minScreenWidth);
    final maxGridHeight = getMaxGridHeight(12);
    late final screenScrollController = useScrollController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đặt ghế'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const SizedBox(height: 5),
              Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 550),
                  switchOutCurve: Curves.easeInBack,
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: SeatColorIndicators(),
                    ),
                    SeatsArea(
                      maxGridHeight: maxGridHeight,
                      seatSize: _seatSize,
                      seatGap: _seatGap,
                      maxRows: 12,
                      numOfRows: 4,
                      seatsPerRow: 6,
                      missing: const [
                        Seat(seatRow: 'A', seatNumber: 2),
                        Seat(seatRow: 'B', seatNumber: 2),
                        Seat(seatRow: 'C', seatNumber: 2),
                        Seat(seatRow: 'D', seatNumber: 2)
                      ],
                      blocked: const [],
                      booked: const [
                        Seat(seatRow: 'A', seatNumber: 5),
                        Seat(seatRow: 'C', seatNumber: 3),
                        Seat(seatRow: 'C', seatNumber: 4),
                      ],
                      screenScrollController: screenScrollController,
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 2, 0, 22),
                      child: Consumer(
                        builder: (ctx, ref, _) {
                          final _seatBookingProvider =
                              ref.watch(seatBookingProvider);
                          return CustomChipsList(
                            chipContents:
                                _seatBookingProvider.selectedSeatNames,
                            chipHeight: 27,
                            chipGap: 10,
                            fontSize: 14,
                            chipWidth: 60,
                            borderColor: Colors.orange,
                            contentColor: Colors.orange,
                            borderWidth: 1.5,
                            fontWeight: FontWeight.bold,
                            backgroundColor:
                                Colors.red.shade700.withOpacity(0.3),
                            isScrollable: true,
                          );
                        },
                      ),
                    ),
                    const PurchaseSeatsButton(),
                    const SizedBox(height: 5),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
