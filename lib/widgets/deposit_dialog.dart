import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final depositProvider = StateProvider<double>((_) => 0.0);

class DepositDialog extends ConsumerStatefulWidget {
  const DepositDialog({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DepositDialogState();
}

class _DepositDialogState extends ConsumerState<DepositDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Enter Amount',
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              ref.read(depositProvider.notifier).state = double.parse(value);
            },
          ),
          const SizedBox(height: 16.0),
          FilledButton(
            onPressed: () {},
            child: const Text('Deposit'),
          ),
        ],
      ),
    );
  }
}
