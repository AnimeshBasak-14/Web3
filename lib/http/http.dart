import 'dart:convert';

import 'package:http/http.dart' as http;

class CryptoServiceAPI {
  static const String baseUrl = 'https://binance-docs.github.io/apidocs/spot/en/';


  // Method to get token information
  static Future<Map<String, dynamic>> getTokenInfo(String tokenId) async {
    final url = '$baseUrl/tokens/$tokenId';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Failed to get token information');
    }
  }

  // Method to perform a transaction
  static Future<void> performTransaction(String tokenId, double amount) async {
    const url = '$baseUrl/transactions';

    final body = jsonEncode({
      'token_id': tokenId,
      'amount': amount,
    });

    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: body,
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to perform transaction');
    }
  }

}
