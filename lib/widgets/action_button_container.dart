import 'package:flutter/material.dart';
import 'package:login_sample/widgets/action_button.dart';

class ActionButtonContainer extends StatelessWidget {
  const ActionButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ActionButton(
          text: 'Deposit',
          icon: Icons.add,
        ),
        ActionButton(
          text: 'Expenses',
          icon: Icons.payment_rounded,
        ),
        ActionButton(
          text: 'Shop',
          icon: Icons.local_convenience_store_rounded,
        ),
        ActionButton(
          text: 'Transfer',
          icon: Icons.send_rounded,
        ),
      ],
    );
  }
}
