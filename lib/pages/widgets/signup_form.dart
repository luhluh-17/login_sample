import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignupForm extends ConsumerStatefulWidget {
  const SignupForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignupFormState();
}

class _SignupFormState extends ConsumerState<SignupForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
          ),
          const SizedBox(height: 24.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: FilledButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Registered Successfully'),
                    ),
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
