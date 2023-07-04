import 'package:flutter/material.dart';

import '../models/token.dart';

class TokenDetailsScreen extends StatelessWidget {
  final Token token;

  TokenDetailsScreen(this.token);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Token Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${token.name}'),
            Text('Symbol: ${token.symbol}'),
            // Additional token details
            // ...
          ],
        ),
      ),
    );
  }
}
