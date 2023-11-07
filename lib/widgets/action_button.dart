import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActionButton extends ConsumerWidget {
  final String text;
  final IconData icon;

  const ActionButton({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double boxSize = MediaQuery.of(context).size.width * 0.2;

    return Column(
      children: [
        Container(
          width: boxSize,
          height: boxSize,
          child: Card(
            child: IconButton(
              icon: Icon(icon),
              onPressed: () {},
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
