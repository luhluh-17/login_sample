import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_sample/constants/routes.dart';
import 'package:login_sample/models/account.dart';
import 'package:login_sample/services/secure_storage.dart';

final usernameProvider = StateProvider<String>((_) => '');
final passwordProvider = StateProvider<String>((_) => '');
final isVisibleProvider = StateProvider.autoDispose<bool>((_) => false);

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final username = ref.watch(usernameProvider);
    final password = ref.watch(passwordProvider);
    final isVisible = ref.watch(isVisibleProvider);

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
              obscureText: !isVisible,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: IconButton(
                  onPressed: () {
                    ref.watch(isVisibleProvider.notifier).state = !isVisible;
                  },
                  icon: Icon(
                    isVisible
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                ),
              ),
              onChanged: (value) {
                ref.read(passwordProvider.notifier).state = value;
              },
            ),
            const SizedBox(height: 24.0),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: FilledButton(
                onPressed: () async {
                  final StorageService storageService = StorageService();

                  final String jsonString =
                      await storageService.readSecureData('account') ?? '{}';

                  Map<String, dynamic> jsonMap = json.decode(jsonString);
                  Account account = Account.fromJson(jsonMap);

                  if (username == account.username &&
                      password == account.password) {
                    Navigator.pushNamed(context, Routes.home);
                  } else {
                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Invalid Account'),
                      ),
                    );
                  }
                },
                child: const Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecureStorage {}
