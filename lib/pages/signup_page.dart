import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 80,
                height: 80,
              ),
              const SizedBox(height: 16),
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
      ),
    );
  }
}
