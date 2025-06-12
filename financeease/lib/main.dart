import 'package:flutter/material.dart';

// Dummy import for FinanceEase dashboard/main container.
// Replace this with the actual dashboard file when implemented.
import 'dashboard.dart'; // Ensure this file exists and exports the dashboard widget.

void main() {
  runApp(FinanceEaseApp());
}

// PUBLIC_INTERFACE
class FinanceEaseApp extends StatelessWidget {
  /// The main application widget for FinanceEase.
  /// Applies the color scheme and sets the dashboard as the home screen.
  const FinanceEaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = const ColorScheme.light(
      primary: Color(0xFF2E86AB),
      secondary: Color(0xFFF6F7EB),
      tertiary: Color(0xFFF26419), // accent color
    );

    return MaterialApp(
      title: 'FinanceEase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: colorScheme,
        primaryColor: colorScheme.primary,
        scaffoldBackgroundColor: colorScheme.secondary,
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: colorScheme.primary,
          foregroundColor: Colors.white,
          elevation: 1,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: colorScheme.tertiary,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: colorScheme.primary,
          selectedItemColor: colorScheme.tertiary,
          unselectedItemColor: colorScheme.secondary,
        ),
        cardColor: colorScheme.secondary,
      ),
      // Set the dashboard as the initial home screen
      home: const FinanceEaseDashboard(),
    );
  }
}

// PUBLIC_INTERFACE
class FinanceEaseDashboard extends StatelessWidget {
  /// Placeholder for integration.
  /// Replace with the actual dashboard widget containing navigation and main UI.
  const FinanceEaseDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FinanceEase Dashboard'),
      ),
      body: Center(
        child: Text(
          'Welcome to FinanceEase!\n(Dashboard goes here)',
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
      ),
      // Example navigation bar according to the app's design
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Expenses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Income',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Budgets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Reports',
          ),
        ],
        currentIndex: 0,
        // TODO: Implement navigation bar logic
        onTap: (int index) {},
      ),
    );
  }
}
