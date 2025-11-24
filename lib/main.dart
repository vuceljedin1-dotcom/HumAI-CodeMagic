import 'package:flutter/material.dart';
import 'screens/intake_screen.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(const HumaiApp());
}

class HumaiApp extends StatelessWidget {
  const HumaiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HumAI Digital Twin',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: "/intake",
      routes: {
        "/intake": (_) => const IntakeScreen(),
        "/dashboard": (_) => const DashboardScreen(),
      },
    );
  }
}
