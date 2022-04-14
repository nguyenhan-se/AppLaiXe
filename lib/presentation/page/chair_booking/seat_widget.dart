// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/domain/entities/seat.dart';

import 'package:flutter_boilerplate_riverpod/presentation/presenters/presenters.dart'
    show seatBookingProvider;

class SeatWidget extends StatefulHookConsumerWidget {
  final Seat seat;

  const SeatWidget({
    required this.seat,
    Key? key,
  }) : super(key: key);

  @override
  _SeatWidgetState createState() => _SeatWidgetState();
}

class _SeatWidgetState extends ConsumerState<SeatWidget> {
  bool isSelected = false;

  void _onTap() {
    setState(() {
      isSelected = !isSelected;
    });

    final _seatBookingProvider = ref.read(seatBookingProvider.notifier);
    _seatBookingProvider.toggleSeat(seat: widget.seat, select: isSelected);
  }

  @override
  Widget build(BuildContext context) {
    final animController = useAnimationController(
      duration: const Duration(milliseconds: 90),
    );
    final bounceAnimation = Tween<double>(begin: 1.0, end: 0.5).animate(
      CurvedAnimation(
        parent: animController,
        curve: Curves.easeInQuad,
      ),
    );
    useEffect(() {
      bounceAnimation.addStatusListener((status) {
        if (status == AnimationStatus.completed) animController.reverse();
      });
    }, const []);
    return GestureDetector(
      onTap: _onTap,
      onTapDown: (_) => animController.forward(),
      child: AnimatedBuilder(
        animation: bounceAnimation,
        builder: (ctx, child) => Transform.scale(
          scale: bounceAnimation.value,
          child: child,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: isSelected ? Colors.red : Colors.grey,
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
