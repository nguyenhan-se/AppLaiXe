import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_riverpod/presentation/presenters/ticket_booking/ticket_booking_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TicketView extends HookConsumerWidget {
  const TicketView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ticketBookingState = ref.watch(ticketBookingProvider);
    final destination = ticketBookingState.destination;
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24))),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      destination.codeForm,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Colors.indigo.shade50,
                          borderRadius: BorderRadius.circular(20)),
                      child: SizedBox(
                        height: 8,
                        width: 8,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.indigo.shade400,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: <Widget>[
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (context, constraints) {
                                  return Flex(
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => SizedBox(
                                              height: 1,
                                              width: 3,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color:
                                                        Colors.grey.shade300),
                                              ),
                                            )),
                                    direction: Axis.horizontal,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Icon(
                                Icons.bus_alert,
                                color: Colors.indigo.shade300,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Colors.pink.shade50,
                          borderRadius: BorderRadius.circular(20)),
                      child: SizedBox(
                        height: 8,
                        width: 8,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.pink.shade400,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      destination.codeTo,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink),
                    )
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                        width: 100,
                        child: Text(
                          destination.from,
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                        )),
                    Text(
                      '${destination.timeout}h',
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                        width: 100,
                        child: Text(
                          destination.to,
                          textAlign: TextAlign.end,
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                        )),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '${destination.dateForm}h',
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${destination.dateTo}h',
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      ticketBookingState.departureFormat,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Row(
                      children: const <Widget>[
                        Text(
                          "Flight No : ",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Text(
                          "23",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        color: Colors.grey.shade200),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Flex(
                          children: List.generate(
                              (constraints.constrainWidth() / 10).floor(),
                              (index) => SizedBox(
                                    height: 1,
                                    width: 5,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade400),
                                    ),
                                  )),
                          direction: Axis.horizontal,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                        color: Colors.grey.shade200),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24))),
            child: Column(
              children: const [
                _ListTile(
                  icon: Icons.supervised_user_circle,
                  leftTitle: "Họ tên",
                  rightTitle: "Nguyễn Thế Hưng",
                ),
                _ListTile(
                  icon: Icons.phone,
                  leftTitle: "SDT",
                  rightTitle: "0944458635",
                ),
                SizedBox(height: 4),
                _ListTile(
                  icon: Icons.chair,
                  leftTitle: "Số lượng",
                  rightTitle: "240.000 đ",
                ),
                SizedBox(height: 4),
                _ListTile(
                  icon: Icons.attach_money_outlined,
                  leftTitle: "Tổng",
                  rightTitle: "240.000 đ",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ListTile extends StatelessWidget {
  const _ListTile({
    Key? key,
    required this.icon,
    required this.leftTitle,
    required this.rightTitle,
  }) : super(key: key);

  final IconData icon;
  final String leftTitle;
  final String rightTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.amber.shade50,
              borderRadius: BorderRadius.circular(20)),
          child: Icon(
            icon,
            color: Colors.amber,
          ),
        ),
        const SizedBox(width: 16),
        Text(leftTitle,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
        Expanded(
            child: Text(rightTitle,
                textAlign: TextAlign.end,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black))),
      ],
    );
  }
}
