// Flutter imports:
import 'package:flutter/material.dart';

class ContainerLegend extends StatelessWidget {
  final String title;
  final Widget child;

  const ContainerLegend({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(5),
            shape: BoxShape.rectangle,
          ),
          child: child,
        ),
        Positioned(
          left: 60,
          top: 12,
          child: Container(
            padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
            color: Colors.white,
            child: Text(
              title,
              style: theme.textTheme.bodySmall?.copyWith(color: Colors.blue),
            ),
          ),
        ),
      ],
    );
  }
}
