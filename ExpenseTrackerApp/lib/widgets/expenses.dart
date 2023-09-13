import 'package:expense/widgets/expenses_list/expenses_list.dart';
import 'package:expense/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _Expenses();
  }
}

class _Expenses extends State<Expenses> {
  final List<Expense> _registeredExpense = [
    Expense(
        title: "flutter Course",
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: "Cinems",
        amount: 15.59,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("The chart"),
          Expanded(
            child: ExpensesList(expenses: _registeredExpense),
          )
        ],
      ),
    );
  }
}
