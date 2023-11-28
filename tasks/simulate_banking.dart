import 'dart:async';

/* This is a simple banking simulation */

// TODO: Please identify and resolve errors in the code.

class BankAccount {
  final String accountNumber;
  final String accountHolder;
  double balance;
  List<Transaction> transactionHistory = [];

  // Error 1: Missing constructor parameters for balance
  BankAccount({
    required this.accountNumber,
    required this.accountHolder,
  });

  // Error 2: Missing type annotation for the amount parameter
  void deposit(amount) {
    balance += amount;
    transactionHistory.add(Transaction('Deposit', amount));
  }

  // Error 3: Using an undefined 'Transaction' class
  bool withdraw(double amount) {
    if (balance - amount >= 0) {
      balance -= amount;
      transactionHistory.add(Transaction('Withdrawal', amount));
      return true;
    } else {
      print('Insufficient funds!');
      return false;
    }
  }

  // Error 4: Using an undefined 'Transaction' class
  void applyInterest(double rate) {
    double interest = balance * rate;
    deposit(interest);
    transactionHistory.add(Transaction('Interest', interest));
  }

  // Error 5: Missing type annotation for the minimumBalance parameter
  bool validateAccount(minimumBalance) {
    return balance >= minimumBalance;
  }

  void printTransactionHistory() {
    print('Transaction History for Account $accountNumber:');
    for (var transaction in transactionHistory) {
      print('${transaction.type}: ${transaction.amount} on ${transaction.timestamp}');
    }
  }
}

// Error 6: Missing type annotations for the 'type' and 'amount' parameters
class Transaction {
  final type;
  final amount;
  final DateTime timestamp;

  Transaction(this.type, this.amount) : timestamp = DateTime.now();
}

void main() {
  // Error 7: Missing required 'balance' parameter in the constructor
  var account = BankAccount(accountNumber: '123456', accountHolder: 'John Doe', balance: 1000.0);

  // Error 8: Passing an invalid argument to deposit
  account.deposit('invalidAmount');

  // Error 9: Incorrect usage of 'Transaction' class
  account.withdraw(200.0);
  account.applyInterest(0.05);

  // Error 10: Missing type annotation for the minimumBalance argument
  account.validateAccount('500.0');

  account.printTransactionHistory();
}
