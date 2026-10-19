import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Exercicio2()));

class Exercicio2 extends StatelessWidget {
  const Exercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Responsive Layouts', style: TextStyle(fontSize: 14)),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Cheetah Coding', style: TextStyle(color: Colors.white, fontSize: 22)),
                      const SizedBox(height: 30),
                      _buildButton('BUTTON 1'),
                      const SizedBox(height: 15),
                      _buildButton('BUTTON 2'),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildListItem('Dart'),
                      _buildListItem('JavaScript'),
                      _buildListItem('PHP'),
                      _buildListItem('C++'),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Column(
              children: [
                const SizedBox(height: 40),
                const Text('Cheetah Coding', style: TextStyle(color: Colors.white, fontSize: 22)),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildButton('BUTTON 1'),
                    const SizedBox(width: 20),
                    _buildButton('BUTTON 2'),
                  ],
                ),
                const SizedBox(height: 40),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildListItem('Dart'),
                      _buildListItem('JavaScript'),
                      _buildListItem('PHP'),
                      _buildListItem('C++'),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildButton(String text) {
    return Container(
      width: 120,
      padding: const EdgeInsets.symmetric(vertical: 8),
      color: Colors.white,
      child: Text(text, textAlign: TextAlign.center, style: const TextStyle(fontSize: 10)),
    );
  }

  Widget _buildListItem(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.white24)),
      ),
      child: Text(text, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontSize: 18)),
    );
  }
}