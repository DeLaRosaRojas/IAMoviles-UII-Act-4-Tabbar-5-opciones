import 'package:flutter/material.dart';

class TelasPage extends StatelessWidget {
  const TelasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Catálogo de Telas", style: TextStyle(fontSize: 20, color: Colors.black87)),
          const SizedBox(height: 20),
          Image.network(
            'https://raw.githubusercontent.com/DeLaRosaRojas/Imagenes-Parisina_De-La-Rosa-6I/refs/heads/main/ProdTela.png',
            width: 300,
            loadingBuilder: (context, child, progress) => progress == null ? child : const CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}