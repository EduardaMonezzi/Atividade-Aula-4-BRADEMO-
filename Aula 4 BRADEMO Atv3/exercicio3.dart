import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Exercicio3()));

class Exercicio3 extends StatelessWidget {
  const Exercicio3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        child: Center(
          child: Container(
            width: 300,
            height: 200,
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: const Color(0xFF1976D2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              color: const Color(0xFF4DD0E1),
            ),
          ),
        ),
      ),
    );
  }
}