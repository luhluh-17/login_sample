import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_sample/constants/routes.dart';
import 'package:login_sample/widgets/action_button.dart';
import 'package:login_sample/widgets/deposit_dialog.dart';

class ActionButtonContainer extends ConsumerWidget {
  const ActionButtonContainer({super.key});

  void _deposit(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const DepositDialog();
      },
    );
  }

  void _expenses(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Expenses'),
      ),
    );
  }

  void _shop(BuildContext context) {
    Navigator.pushNamed(context, Routes.shop);
  }

  void _transfer(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Transfer'),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ActionButton(
          text: 'Deposit',
          icon: Icons.add,
          onPressed: () => _deposit(context),
        ),
        ActionButton(
          text: 'Expenses',
          icon: Icons.payment_rounded,
          onPressed: () => _expenses(context),
        ),
        ActionButton(
          text: 'Shop',
          icon: Icons.local_convenience_store_rounded,
          onPressed: () => _shop(context),
        ),
        ActionButton(
          text: 'Transfer',
          icon: Icons.send_rounded,
          onPressed: () => _transfer(context),
        ),
      ],
    );
  }
}
