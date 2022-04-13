import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_riverpod/core/provider/seat_booking/seat_booking_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//Widgets
import '../widgets/custom_text_button.dart';

class PurchaseSeatsButton extends StatelessWidget {
  const PurchaseSeatsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Consumer(
        builder: (ctx, ref, _) {
          final carSeats = ref.watch(seatBookingProvider).selectedSeats.length;
          return CustomTextButton.gradient(
            width: double.infinity,
            onPressed: () {
              print("come hể babty ====>");
            },
            disabled: carSeats == 0,
            gradient: const LinearGradient(colors: [Colors.orange, Colors.red]),
            child: Center(
              child: Text(
                'Mua - $carSeats Ghế',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  letterSpacing: 0.7,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
