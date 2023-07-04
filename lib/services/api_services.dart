import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/token.dart';

class ApiService {
  static const String baseUrl = 'https://api.crypto.com/v2'; // Replace with your API base URL

  // Get list of tokens
  static Future<List<Token>> getTokens() async {
    final response = await http.get(Uri.parse('$baseUrl/tokens'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> tokenList = data['tokens'];

      List<Token> tokens = [];
      for (var tokenData in tokenList) {
        final token = Token(
          name: tokenData['name'],
          symbol: tokenData['symbol'],
        );
        tokens.add(token);
      }

      return tokens;
    } else {
      throw Exception('Failed to get tokens');
    }
  }

  // Perform a transaction
  static Future<void> performTransaction(String tokenSymbol, double amount) async {
    final response = await http.post(
      Uri.parse('$baseUrl/transactions'),
      body: {
        'tokenSymbol': tokenSymbol,
        'amount': amount.toString(),
      },
    );

    if (response.statusCode == 200) {
      // Transaction successful
    } else {
      throw Exception('Failed to perform transaction');
    }
  }
}
