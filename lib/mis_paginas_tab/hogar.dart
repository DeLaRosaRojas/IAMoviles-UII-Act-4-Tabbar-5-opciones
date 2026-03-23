import 'package:flutter/material.dart';

class HogarPage extends StatelessWidget {
  const HogarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        'https://raw.githubusercontent.com/DeLaRosaRojas/Imagenes-Parisina_De-La-Rosa-6I/refs/heads/main/Hog1.png',
        width: 300,
      ),
    );
  }
}