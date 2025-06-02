import 'package:app_agendamentos_de_centrais/screens/home_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agendamentos de Centrais',
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}