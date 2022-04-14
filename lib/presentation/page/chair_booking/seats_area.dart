// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/domain/entities/seat.dart';
import 'seat_widget.dart';

class SeatsArea extends StatelessWidget {
  final double maxGridHeight, seatSize, seatGap;
  final int numOfRows, maxRows, seatsPerRow;
  final List<Seat> missing, blocked, booked;
  final ScrollController screenScrollController;

  const SeatsArea({
    Key? key,
    required this.maxGridHeight,
    required this.seatSize,
    required this.seatGap,
    required this.numOfRows,
    required this.maxRows,
    required this.seatsPerRow,
    required this.missing,
    required this.blocked,
    required this.booked,
    required this.screenScrollController,
  }) : super(key: key);

  bool isMissing(Seat seat) => missing.contains(seat);

  bool isBlocked(Seat seat) => blocked.contains(seat);

  bool isBooked(Seat seat) => booked.contains(seat);

  bool _onGlowNotification(OverscrollIndicatorNotification overScroll) {
    overScroll.disallowIndicator();
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: maxGridHeight * numOfRows / maxRows,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Seat letters' column
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (var i = 0; i < numOfRows; i++)
                SizedBox(
                  height: 26.5,
                  child: Center(
                    child: Text(
                      String.fromCharCode(i + 65),
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                )
            ],
          ),

          const SizedBox(width: 10),

          //Seats
          NotificationListener<OverscrollIndicatorNotification>(
            onNotification: _onGlowNotification,
            child: Flexible(
              child: NotificationListener<ScrollNotification>(
                child: GridView.builder(
                  itemCount: numOfRows * seatsPerRow,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(right: 20),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: seatSize,
                    crossAxisSpacing: seatGap,
                    mainAxisSpacing: seatGap,
                  ),
                  itemBuilder: (ctx, i) {
                    final seat = Seat(
                      seatRow: String.fromCharCode(i % numOfRows + 65),
                      seatNumber: i ~/ numOfRows,
                    );
                    if (isMissing(seat)) {
                      return const SizedBox.shrink();
                    } else if (isBlocked(seat) || isBooked(seat)) {
                      return const DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color(0xFF5A5A5A),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      );
                    }
                    return SeatWidget(seat: seat);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
