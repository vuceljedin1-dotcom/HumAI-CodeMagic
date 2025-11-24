import 'package:flutter/material.dart';

// Ovo pretpostavlja da već imaš ove fajlove:
// lib/screens/intake_screen.dart
// lib/screens/dashboard_screen.dart
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),

      // Prva stranica nakon pokretanja aplikacije
      initialRoute: '/intake',

      // Rute – OVDJE JE BITNO: nema više "const" ispred ekrana
      routes: {
        '/intake': (_) => IntakeScreen(),
        '/dashboard': (_) => DashboardScreen(),
      },

      // Fallback ako se zovne nepostojeća ruta
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text('HumAI Digital Twin'),
            ),
            body: Center(
              child: Text(
                'Nepoznata ruta: ${settings.name}',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      },
    );
  }
}
