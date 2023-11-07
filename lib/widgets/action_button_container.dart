import 'package:flutter/material.dart';
import 'package:login_sample/widgets/action_button.dart';

class ActionButtonContainer extends StatelessWidget {
  const ActionButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ActionButton(
          text: 'Deposit',
          icon: Icons.add,
          onPressed: () {},
        ),
        ActionButton(
          text: 'Expenses',
          icon: Icons.payment_rounded,
          onPressed: () {},
        ),
        ActionButton(
          text: 'Shop',
          icon: Icons.local_convenience_store_rounded,
          onPressed: () {},
        ),
        ActionButton(
          text: 'Transfer',
          icon: Icons.send_rounded,
          onPressed: () {},
        ),
      ],
    );
  }
}
