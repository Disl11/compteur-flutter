import 'package:compteur/view/compteur.dart';
import 'package:compteur/view/mercato.dart';
import 'package:flutter/material.dart';

class NavigationBottom extends StatefulWidget {
  const NavigationBottom({super.key});

  @override
  State<NavigationBottom> createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> {
  int _selecedIndex = 0;

  void _navigationBottomBar(int index) {
    setState(() {
      _selecedIndex = index;
    });
  }

  final List<Widget> _pages = [Compteur(), Mercato()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selecedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orangeAccent,
        currentIndex: _selecedIndex,
        onTap: _navigationBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Compteur"),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: "Mercato"),
        ],
      ),
    );
  }
}
