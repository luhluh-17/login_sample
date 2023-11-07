class Account {
  final String username;
  final String password;
  final double balance;

  Account({
    required this.username,
    required this.password,
    this.balance = 0.00,
  });

  // Add method to convert to json
  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'balance': balance,
    };
  }

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      username: json['username'],
      password: json['password'],
      balance: json['balance'],
    );
  }
}
