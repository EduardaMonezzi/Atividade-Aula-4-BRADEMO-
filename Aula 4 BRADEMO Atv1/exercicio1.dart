import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Exercicio1()));

class Exercicio1 extends StatelessWidget {
  const Exercicio1({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> locais = [
      {
        'titulo': 'Chennai\nFlower Market',
        'img': 'https://images.unsplash.com/photo-1590766940554-14772b0eb178?w=400&q=80'
      },
      {
        'titulo': 'Tanjore\nBronze Works',
        'img': 'https://images.unsplash.com/photo-1590050752117-238cb0fb12b1?w=400&q=80'
      },
      {
        'titulo': 'Tanjore\nMarket',
        'img': 'https://images.unsplash.com/photo-1583258292688-d0213dc5a3a8?w=400&q=80'
      },
      {
        'titulo': 'Tanjore\nThanjavur Temple',
        'img': 'https://images.unsplash.com/photo-1620766165457-a8025baa82e0?w=400&q=80'
      },
      {
        'titulo': 'Tanjore\nThanjavur Temple',
        'img': 'https://images.unsplash.com/photo-1582555172866-f73bb12a2ab3?w=400&q=80'
      },
      {
        'titulo': 'Pondicherry\nSalt Farm',
        'img': 'https://images.unsplash.com/photo-1621245826422-9a4f76aee717?w=400&q=80'
      },
    ];

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 400,
          child: GridView.builder(
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              childAspectRatio: 1.0,
            ),
            itemCount: locais.length,
            itemBuilder: (context, index) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    locais[index]['img']!,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black54],
                        stops: [0.6, 1.0],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    left: 8,
                    child: Text(
                      locais[index]['titulo']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}