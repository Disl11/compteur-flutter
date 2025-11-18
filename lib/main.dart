import 'package:compteur/compteur.dart';
import 'package:compteur/pageTeams/teamA.dart';
import 'package:compteur/pageTeams/teamB.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/TeamA': (BuildContext context) => TeamA(),
        '/TeamB': (BuildContext context) => TeamB(),
      },

      title: 'Compteur',
      home: Compteur(),
    );
  }
}
