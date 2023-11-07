import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_sample/models/account.dart';
import 'package:login_sample/providers/account_provider.dart';
import 'package:login_sample/providers/balance_provider.dart';

final depositProvider = StateProvider<double>((_) => 0.0);

class DepositDialog extends ConsumerStatefulWidget {
  const DepositDialog({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DepositDialogState();
}

class _DepositDialogState extends ConsumerState<DepositDialog> {
  @override
  Widget build(BuildContext context) {
    final amount = ref.watch(depositProvider);
    final account = ref.watch(accountProvider);

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
              double amount = double.parse(value);
              ref.read(depositProvider.notifier).state = amount;
            },
          ),
          const SizedBox(height: 16.0),
          FilledButton(
            onPressed: () {
              ref.read(balanceProvider.notifier).state =
                  ref.watch(balanceProvider) + amount;
              Navigator.pop(context);
            },
            child: const Text('Deposit'),
          ),
        ],
      ),
    );
  }
}
