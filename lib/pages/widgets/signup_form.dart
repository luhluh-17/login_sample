import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
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
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
              suffixIcon: Icon(Icons.lock_outline_rounded),
            ),
          ),
          const SizedBox(height: 24.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: FilledButton(
              onPressed: () {},
              child: const Text('Signup'),
            ),
          ),
        ],
      ),
    );
  }
}
