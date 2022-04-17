import 'package:flutter/material.dart';

class Transhipment extends StatelessWidget {
  const Transhipment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text('Tổng số:'),
              SizedBox(
                width: 10,
              ),
              Text('12 khách'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Text('Tổng số tiền đặt vé:'),
              SizedBox(
                width: 10,
              ),
              Text('260000000đ'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 2,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
