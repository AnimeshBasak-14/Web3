import 'package:flutter/material.dart';
import 'package:web3/providers/provider.dart';

import '../providers/transaction_provider.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final transactionProvider = context.watch<TransactionProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction History'),
      ),
      body: ListView.builder(
        itemCount: transactionProvider.transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactionProvider.transactions[index];
          return ListTile(
            title: Text('Transaction ID: ${transaction.id}'),
            subtitle: Text('Amount: ${transaction.amount}'),
          );
        },
      ),
    );
  }
}
