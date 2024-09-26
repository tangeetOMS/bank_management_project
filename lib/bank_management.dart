class Account {
  String username;
  String address;
  double _balance = 0;

  Account({required this.username, required this.address});

  double get balance => _balance;
  set balance(double amount) {
    if (amount > 0) {
      _balance = amount;
      print('Balance updated to: $amount');
    } else {
      print('Invalid amount');
    }
  }

  void deposit(double amount) {
    if (amount > 0) {
      balance = _balance + amount;
      print('Added balance: $amount');
      print('New balance: $_balance\n\n');
    } else {
      print('Please add a positive value');
    }
  }
  // Withdraw method (deducts from balance)
  void withDraw(double amount) {
    if (amount <= _balance && amount > 0) {
      balance = _balance - amount;
      print('Withdrew: $amount');
    } else {
      print('Something went wrong');
    }
  }

  void displayAccount() {
    print('Account Holder: $username');
    print('Address: $address');
    print('Total balance: $_balance\n\n');
  }
}