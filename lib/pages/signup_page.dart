import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
              'Welcome to WalletWise!',
              style: theme.textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Where Your Financial Journey Begins',
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
