import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActionButton extends ConsumerWidget {
  const ActionButton({super.key});

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
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          'Add Money',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
