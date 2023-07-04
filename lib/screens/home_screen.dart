import 'package:flutter/material.dart';
import 'package:web3/providers/provider.dart';

import '../providers/token_provider.dart';
import 'history_screens.dart';
import 'token_details_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tokenProvider = Provider.of<TokenProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Wallet'),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => HistoryScreen()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // UI for sending and receiving tokens
          // ...

          // List of tokens
          Expanded(
            child: ListView.builder(
              itemCount: tokenProvider.tokens.length,
              itemBuilder: (ctx, index) {
                final token = tokenProvider.tokens[index];
                return ListTile(
                  title: Text(token.name),
                  subtitle: Text(token.symbol),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TokenDetailsScreen(token),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
