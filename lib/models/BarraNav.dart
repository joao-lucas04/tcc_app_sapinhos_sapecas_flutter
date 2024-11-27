import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromARGB(255, 54,101,42),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Personagens',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Cenários',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.auto_stories),
          label: 'Enredo',
        ),
      ],
      currentIndex: currentIndex, // Índice selecionado
      selectedItemColor: Colors.white, // Cor do item selecionado
      onTap: onTap, // Callback para manipular mudanças de índice
    );
  }
}