import 'package:flutter/material.dart';
import 'package:login_sample/constants/routes.dart';
import 'package:login_sample/pages/widgets/login_form.dart';

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
            Image.asset(
              'assets/images/logo.png',
              width: 40,
              height: 40,
            ),
            const SizedBox(height: 16),
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
            const LoginForm(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: FilledButton(
                onPressed: () {},
                child: const Text('Login'),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.register);
              },
              child: const Text('Don\'t have an account? Signup here'),
            ),
          ],
        ),
      ),
    );
  }
}
