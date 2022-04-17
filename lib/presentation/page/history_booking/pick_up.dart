import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/history_booking.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class PickUp extends StatefulWidget {
  final HistoryBooking historyBooking;
  const PickUp({
    Key? key,
    required this.historyBooking,
  }) : super(key: key);

  @override
  _PickUpState createState() => _PickUpState();
}

class _PickUpState extends State<PickUp> {
  bool _disableButtonPhone = false;
  bool _disableButtonCar = false;
  final oCcy = NumberFormat("#,##0", "en_US");

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 24,
        left: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.historyBooking.user.startPoint,
            style: const TextStyle(color: Colors.red, fontSize: 18),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.historyBooking.user.name,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      launch('tel://${widget.historyBooking.user.phone}');
                    },
                    child: Text(
                      widget.historyBooking.user.phone,
                      style: const TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: _disableButtonPhone || _disableButtonCar
                    ? null
                    : () => showDialogAlert(
                          context,
                          'Xác nhận ĐÃ GỌI',
                          widget.historyBooking,
                          () => {
                            setState(
                              () {
                                _disableButtonPhone = true;
                              },
                            ),
                            Navigator.of(context).pop()
                          },
                        ),
                icon: const Icon(Icons.phone_enabled),
              ),
              IconButton(
                  onPressed: _disableButtonPhone || _disableButtonCar
                      ? null
                      : () => showDialogAlert(
                            context,
                            'Xác nhận KHÔNG NGHE',
                            widget.historyBooking,
                            () => {
                              setState(
                                () {
                                  _disableButtonPhone = true;
                                },
                              ),
                              Navigator.of(context).pop()
                            },
                          ),
                  icon: const Icon(Icons.phone_disabled)),
              IconButton(
                  onPressed: _disableButtonCar
                      ? null
                      : () => showDialogAlert(
                            context,
                            'Xác nhận ĐÃ LÊN',
                            widget.historyBooking,
                            () => {
                              setState(
                                () {
                                  _disableButtonCar = true;
                                },
                              ),
                              Navigator.of(context).pop()
                            },
                          ),
                  icon: const Icon(Icons.directions_car)),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            '${oCcy.format(widget.historyBooking.totalPrice)} VNĐ',
            style: const TextStyle(color: Colors.red, fontSize: 16),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text('Ghế:'),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  widget.historyBooking.seats
                      .map((item) => item.seatNames)
                      .join(', '),
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          const Divider(
            height: 2,
            color: Colors.black,
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  void showDialogAlert(BuildContext context, String title,
          HistoryBooking historyBooking, Function() submit) =>
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Thông báo'),
            children: [
              SimpleDialogOption(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        letterSpacing: 0.7,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '${historyBooking.user.phone} - ${historyBooking.user.name}',
                      style: const TextStyle(
                        fontSize: 16,
                        letterSpacing: 0.7,
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: submit,
                          child: const Text('Có'),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('Không'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        },
      );
}
