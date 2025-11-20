import 'package:flutter/material.dart';

Widget? NavigationBarDubas() {
  return BottomNavigationBar(
    backgroundColor: Colors.orangeAccent,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.group), label: "Mercato"),
    ],
  );
}
