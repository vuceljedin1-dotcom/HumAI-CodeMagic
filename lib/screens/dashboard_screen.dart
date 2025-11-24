import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HumAI Dashboard")),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            "Ovo je početni HumAI Digital Twin Dashboard.\n"
            "Kasnije dodajemo Insights, Plan & Execute, Credentials.",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
