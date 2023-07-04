import 'package:flutter/material.dart';

import '../models/token.dart';
import '../services/api_service.dart';

class TokenProvider with ChangeNotifier {
  List<Token> _tokens = [];

  List<Token> get tokens {
    return [..._tokens];
  }

  Future<void> fetchTokens() async {
    try {
      // Make API call to fetch token data
      // Store the received data in _tokens
      // Notify listeners
    } catch (error) {
      // Handle error
    }
  }

  Future<void> performTransaction() async {
    try {
      // Make API call to perform a transaction
      // Notify listeners
    } catch (error) {
      // Handle error
    }
  }
}
