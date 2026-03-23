import 'package:flutter/material.dart';
import 'package:myapp/mis_paginas_tab/hilos.dart';
import 'package:myapp/mis_paginas_tab/hogar.dart';
import 'package:myapp/mis_paginas_tab/maquinas.dart';
import 'package:myapp/mis_paginas_tab/telas.dart';
import 'package:myapp/mis_paginas_tab/vestir.dart';

void main() => runApp(const ParisinaApp());

class ParisinaApp extends StatelessWidget {
  const ParisinaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parisina - De La Rosa 6I',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5), // Gris muy claro de fondo
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Lista de las páginas importadas
  final List<Widget> _pages = [
    const TelasPage(),
    const HilosPage(),
    const HogarPage(),
    const VestirPage(),
    const MaquinasPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Parisina - De La Rosa 6I',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 131, 5, 5), // AppBar Rojo solicitado
        centerTitle: true,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // Permite más de 3 iconos
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 244, 193, 54), // Color activo
        unselectedItemColor: const Color.fromARGB(190, 0, 0, 0), // Subtono negro/gris
        selectedLabelStyle: const TextStyle(color: Colors.yellow), // Subtono amarillo
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.texture), label: 'Telas'),
          BottomNavigationBarItem(icon: Icon(Icons.architecture), label: 'Hilos'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Hogar'),
          BottomNavigationBarItem(icon: Icon(Icons.checkroom), label: 'Vestir'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Maquinas'),
        ],
      ),
    );
  }
}