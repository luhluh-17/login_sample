import 'package:flutter/material.dart';
import 'package:login_sample/constants/routes.dart';
import 'package:login_sample/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.login,
      routes: {
        Routes.login: (context) => const LoginPage(),
      },
    );
  }
}
