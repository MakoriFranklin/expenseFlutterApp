import 'package:expensesapp/models/transaction.dart';
import 'package:expensesapp/widgets/new_transactions.dart';
import 'package:expensesapp/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({super.key});

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 'T1',
      title: 'New Bag',
      amount: 45.8,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T2',
      title: 'New Phone',
      amount: 48.09,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now()
      );

      setState(() {
        _userTransactions.add(newTx);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions)
      ],
    );
  }
}
