import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_sample/models/account.dart';
import 'package:login_sample/providers/account_provider.dart';

final usernameProvider = StateProvider.autoDispose<String>((ref) => '');
final passwordProvider = StateProvider.autoDispose<String>((ref) => '');

class SignupForm extends ConsumerStatefulWidget {
  const SignupForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignupFormState();
}

class _SignupFormState extends ConsumerState<SignupForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final username = ref.watch(usernameProvider);
    final password = ref.watch(passwordProvider);

    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(height: 32.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Username',
              suffixIcon: Icon(Icons.person_2_outlined),
            ),
            validator: (value) {
              return value!.isEmpty ? 'Please enter username' : null;
            },
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
            validator: (value) {
              return value!.isEmpty ? 'Please enter password' : null;
            },
            onChanged: (value) {
              ref.read(passwordProvider.notifier).state = value;
            },
          ),
          const SizedBox(height: 24.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: FilledButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  ref.read(accountProvider.notifier).state = Account(
                    username: username,
                    password: password,
                  );
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text(
                          'Registration Sucessful',
                          textAlign: TextAlign.center,
                        ),
                        content: FilledButton(
                          onPressed: () {
                            Navigator.of(context)
                                .popUntil((route) => route.isFirst);
                          },
                          child: const Text('Return to Login'),
                        ),
                      );
                    },
                  );
                }
              },
              child: const Text('Signup'),
            ),
          ),
        ],
      ),
    );
  }
}
