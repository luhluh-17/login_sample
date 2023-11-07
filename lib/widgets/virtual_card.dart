import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VirtualCard extends ConsumerWidget {
  const VirtualCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);

    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wallet Balance',
                style: theme.textTheme.bodySmall,
              ),
              Text(
                '₱ 10000',
                style: theme.textTheme.displaySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
