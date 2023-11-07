import 'package:flutter/material.dart';
import 'package:login_sample/widgets/virtual_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // This provides the default theme for the app
    final ThemeData theme = Theme.of(context);
    final double boxSize = MediaQuery.of(context).size.width * 0.2;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            VirtualCard(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: boxSize,
                  height: boxSize,
                  child: Card(),
                ),
                Container(
                  width: boxSize,
                  height: boxSize,
                  child: Card(),
                ),
                Container(
                  width: boxSize,
                  height: boxSize,
                  child: Card(),
                ),
                Container(
                  width: boxSize,
                  height: boxSize,
                  child: Card(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
