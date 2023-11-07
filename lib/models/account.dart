class Account {
  final String username;
  final String password;

  Account({required this.username, required this.password});

  // Add method to convert to json
  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      username: json['username'],
      password: json['password'],
    );
  }
}
