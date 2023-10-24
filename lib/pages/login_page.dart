import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'WalletWise',
              style: theme.textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Smarter Spending, Easier Saving',
              style: theme.textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
