import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class UserDetail {
  late String name;
  late int phone;
  int rating = 0;
}

List<UserDetail> listUser = [];

class RatingPage extends StatefulWidget {
  const RatingPage({Key? key}) : super(key: key);

  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  double _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đánh giá khách hàng'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Row(
          children: [
            const Text('0334228284'),
            const SizedBox(
              width: 20,
            ),
            const Text('Đỗ Vũ Quốc Bảo'),
            const SizedBox(
              width: 20,
            ),
            Text('$_rating'),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () => showDialogRating(context),
              child: const Text('Đánh giá'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRating() => RatingBar.builder(
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        unratedColor: Colors.amber.withAlpha(50),
        itemCount: 5,
        itemSize: 40.0,
        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          setState(() {
            _rating = rating;
          });
        },
        updateOnDrag: true,
      );

  void showDialogRating(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Đánh giá'),
            children: [
              SimpleDialogOption(
                child: Column(
                  children: [
                    buildRating(),
                    const SizedBox(height: 20),
                    const Text(
                      'Nhận xét',
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 0.7,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const TextField(),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Lưu'),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      );
}
