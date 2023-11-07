import 'package:flutter/material.dart';
import 'package:login_sample/widgets/action_button_container.dart';
import 'package:login_sample/widgets/virtual_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // This provides the default theme for the app
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            VirtualCard(),
            ActionButtonContainer(),
          ],
        ),
      ),
    );
  }
}
