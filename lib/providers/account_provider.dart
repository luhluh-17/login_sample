import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login_sample/models/account.dart';

final accountProvider = StateProvider<Account>((_) => Account(
      username: 'admin',
      password: 'pass',
    ));
