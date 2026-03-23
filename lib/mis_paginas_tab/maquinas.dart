import 'package:flutter/material.dart';

class MaquinasPage extends StatelessWidget {
  const MaquinasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        'https://raw.githubusercontent.com/DeLaRosaRojas/Imagenes-Parisina_De-La-Rosa-6I/refs/heads/main/ProdMaq.png',
        width: 300,
      ),
    );
  }
}