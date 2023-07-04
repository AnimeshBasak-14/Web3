import 'package:flutter/material.dart';
import 'package:web3/providers/provider.dart';

import 'screens/home_screen.dart';
import 'providers/token_provider.dart';

void main() {
  runApp(CryptoWalletApp());
}

class CryptoWalletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TokenProvider()),
      ],
      child: MaterialApp(
        title: 'Crypto Wallet',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}


