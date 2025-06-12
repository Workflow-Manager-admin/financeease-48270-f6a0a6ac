import 'package:flutter/material.dart';

// PUBLIC_INTERFACE
class FinanceEaseDashboard extends StatelessWidget {
  /// Placeholder dashboard widget for the FinanceEase home screen.
  const FinanceEaseDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FinanceEase Dashboard'),
      ),
      body: Center(
        child: Text(
          'FinanceEase Dashboard\n(Implement dashboard UI here)',
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
