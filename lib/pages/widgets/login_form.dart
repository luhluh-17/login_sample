import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_sample/constants/routes.dart';
import 'package:login_sample/providers/account_provider.dart';

final usernameProvider = StateProvider<String>((ref) => '');
final passwordProvider = StateProvider<String>((ref) => '');

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final account = ref.watch(accountProvider);
    final username = ref.watch(usernameProvider);
    final password = ref.watch(passwordProvider);

    void validateAccount() {
      if (username == account.username && password == account.password) {
        Navigator.pushNamed(context, Routes.home);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Invalid Account'),
          ),
        );
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(height: 24.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Username',
                suffixIcon: Icon(Icons.person_2_outlined),
              ),
              onChanged: (value) {
                ref.read(usernameProvider.notifier).state = value;
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                suffixIcon: Icon(Icons.lock_outline_rounded),
              ),
              onChanged: (value) {
                ref.read(passwordProvider.notifier).state = value;
              },
            ),
            const SizedBox(height: 24.0),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: FilledButton(
                onPressed: validateAccount,
                child: const Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
