// providers/transaction_provider.dart

import 'package:flutter/foundation.dart';


import '../models/transaction.dart';

import 'package:web3/services/api_service.dart';

class TransactionProvider with ChangeNotifier {
  final List<Transaction> _transactions = [];

  List<Transaction> get transactions => _transactions;

  void fetchTransactions() {
    // Call your crypto service API to fetch transaction history
    // Update the _transactions list with the retrieved data
    // Notify listeners to update the UI
  }
}
