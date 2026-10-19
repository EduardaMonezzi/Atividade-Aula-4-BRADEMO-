import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Exercicio5()));

class Exercicio5 extends StatefulWidget {
  const Exercicio5({super.key});

  @override
  State<Exercicio5> createState() => _Exercicio5State();
}

class _Exercicio5State extends State<Exercicio5> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('BottomAppBar with FAB'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'TAB: 3',
                  style: TextStyle(fontSize: 24, color: Colors.grey),
                ),
                const SizedBox(height: 20),
                const Icon(Icons.square, color: Colors.lightBlue, size: 24),
                const SizedBox(height: 15),
                const Icon(Icons.email, color: Colors.lightBlue, size: 24),
                const SizedBox(height: 15),
                const Icon(Icons.phone, color: Colors.lightBlue, size: 24),
                const SizedBox(height: 80),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: FloatingActionButton(
                backgroundColor: Colors.blue,
                onPressed: () {},
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: SizedBox(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(Icons.menu, 'This', 0),
              _buildNavItem(Icons.layers, 'Is', 1),
              const SizedBox(width: 48),
              _buildNavItem(Icons.grid_view, 'Bottom', 3),
              _buildNavItem(Icons.info, 'Bar', 4, color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index, {Color color = Colors.grey}) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: _selectedIndex == index ? Colors.blue : color),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: _selectedIndex == index ? Colors.blue : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}