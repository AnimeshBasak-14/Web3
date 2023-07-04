import 'package:flutter/foundation.dart';


import '../models/token.dart';
import '../models/transaction.dart';
import '../services/api_services.dart';

class Provider with ChangeNotifier {
  final ApiService _apiService = ApiService();
  List<Token> _tokens = [];
  final List<Transaction> _transactionHistory = [];

  List<Token> get tokens => _tokens;
  List<Transaction> get transactionHistory => _transactionHistory;

  Future<void> fetchTokens() async {
    try {
      _tokens = await ApiService.getTokens(); // Replace with your API call to fetch tokens
      notifyListeners();
    } catch (error) {
      // Handle error
    }
  }

  Future<void> performTransaction(Transaction transaction) async {
    try {
      await ApiService.performTransaction(transaction as String, transaction as double ); // Replace with your API call to perform a transaction
      _transactionHistory.add(transaction);
      notifyListeners();
    } catch (error) {
      // Handle error
    }
  }
}
