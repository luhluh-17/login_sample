import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
      child: Form(
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}
