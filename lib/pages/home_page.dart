import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Wallet Balance',
                    ),
                    Text(
                      '₱ 10000',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
