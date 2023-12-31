import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_sample/providers/account_provider.dart';
import 'package:login_sample/providers/balance_provider.dart';

class VirtualCard extends ConsumerWidget {
  const VirtualCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);
    final double balance = ref.watch(balanceProvider);
    final username = ref.watch(accountProvider).username;

    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                'Welcome Back,',
                style: theme.textTheme.bodySmall,
              ),
              Text(
                username,
                style: theme.textTheme.displaySmall,
              ),
              SizedBox(height: 16.0),
              Text(
                'Wallet Balance',
                style: theme.textTheme.bodySmall,
              ),
              Text(
                '₱ $balance',
                style: theme.textTheme.displaySmall,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
