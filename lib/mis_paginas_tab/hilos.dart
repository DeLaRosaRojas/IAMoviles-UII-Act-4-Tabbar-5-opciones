import 'package:flutter/material.dart';

class HilosPage extends StatelessWidget {
  const HilosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        'https://raw.githubusercontent.com/DeLaRosaRojas/Imagenes-Parisina_De-La-Rosa-6I/refs/heads/main/ProdHilo.png',
        width: 300, 
      ),
    );
  }
}